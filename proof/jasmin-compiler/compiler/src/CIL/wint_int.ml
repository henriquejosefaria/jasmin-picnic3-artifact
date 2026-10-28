(* This prelude is added at extraction time. See lang/extraction.v. *)
   [@@@ocaml.warning "-9-20-27-32-33-34-37-39-50-67"] (* End of prelude. *)

open BinNums
open Datatypes
open Compiler_util
open Eqtype
open Expr
open Operators
open Pseudo_operator
open Safety_common
open Seq
open Sopn
open Ssrnat
open Syscall
open Type
open Utils0
open Var0
open Word0
open Wsize

module E =
 struct
  (** val pass : string **)

  let pass =
    "wint_to_int"

  (** val ierror_s : string -> pp_error_loc **)

  let ierror_s =
    pp_internal_error_s pass

  (** val ierror : pp_error -> pp_error_loc **)

  let ierror =
    pp_internal_error pass

  (** val ierror_e : pexpr -> pp_error_loc **)

  let ierror_e e =
    ierror
      (pp_nobox ((PPEstring "ill typed expression ") :: ((PPEexpr e) :: [])))

  (** val pp_user_error : pp_error -> pp_error_loc **)

  let pp_user_error pp =
    { pel_msg = pp; pel_fn = None; pel_fi = None; pel_ii = None; pel_vi =
      None; pel_pass = (Some pass); pel_internal = false }

  (** val error_e : string -> pexpr -> pp_error_loc **)

  let error_e msg e =
    pp_user_error (pp_nobox ((PPEstring msg) :: ((PPEexpr e) :: [])))

  (** val ierror_lv : lval -> pp_error_loc **)

  let ierror_lv lv =
    ierror
      (pp_nobox ((PPEstring "ill typed left value ") :: ((PPElval lv) :: [])))
 end

(** val sc_op1 : sop1 -> pexpr -> pexpr list **)

let sc_op1 =
  sc_op1 (fun _ _ e -> e)

(** val sc_op2 : sop2 -> pexpr -> pexpr -> pexpr list **)

let sc_op2 o e1 e2 =
  match is_wi2 o with
  | Some p -> let (p0, o0) = p in let (sg, sz) = p0 in sc_wiop2 sg sz o0 e1 e2
  | None -> []

(** val wi2i_op2 : sop2 -> sop2 **)

let wi2i_op2 o =
  match is_wi2 o with
  | Some p ->
    let (p0, op) = p in
    let (s, _) = p0 in
    (match op with
     | WIadd -> Oadd Op_int
     | WImul -> Omul Op_int
     | WIsub -> Osub Op_int
     | WIdiv -> Odiv (s, Op_int)
     | WImod -> Omod (s, Op_int)
     | WIshl -> Olsl Op_int
     | WIshr -> Oasr Op_int
     | WIeq -> Oeq Op_int
     | WIneq -> Oneq Op_int
     | WIlt -> Olt Cmp_int
     | WIle -> Ole Cmp_int
     | WIgt -> Ogt Cmp_int
     | WIge -> Oge Cmp_int)
  | None -> o

(** val wi2i_op1_e : sop1 -> pexpr -> pexpr **)

let wi2i_op1_e o e =
  match is_wi1 o with
  | Some p ->
    let (s, o0) = p in
    (match o0 with
     | WIword_of_wint ws -> Papp1 ((Owi1 (s, (WIwint_of_int ws))), e)
     | WIwint_of_word ws -> Papp1 ((Oint_of_word (s, ws)), e)
     | WIwint_ext (szo, szi) ->
       if cmp_le wsize_cmp szi szo
       then e
       else Papp1 ((Oint_of_word (s, szo)), (Papp1
              ((signed (Ozeroext (szo, szi)) (Osignext (szo, szi)) s), (Papp1
              ((Oword_of_int szi), e)))))
     | WIneg _ -> Papp1 ((Oneg Op_int), e)
     | _ -> e)
  | None -> Papp1 (o, e)

(** val wi2i_op2_e : sop2 -> pexpr -> pexpr -> pexpr **)

let wi2i_op2_e o e1 e2 =
  let o0 = wi2i_op2 o in Papp2 (o0, e1, e2)

(** val wi2i_var :
    (Var.var -> (signedness * Var.var) option) -> Var.var -> Var.var **)

let wi2i_var m x =
  match m x with
  | Some p -> let (_, xi) = p in xi
  | None -> x

(** val in_FV_var : SvExtra.Sv.t -> Var.var -> bool **)

let in_FV_var fV x =
  SvExtra.Sv.mem (Obj.magic x) fV

(** val wi2i_vari :
    (Var.var -> (signedness * Var.var) option) -> SvExtra.Sv.t -> var_i ->
    (pp_error_loc, var_i) result **)

let wi2i_vari m fV x =
  if in_FV_var fV x.v_var
  then Ok { v_var = (wi2i_var m x.v_var); v_info = x.v_info }
  else let s = E.ierror_e (coq_Plvar x) in Error s

(** val wint_contract_condition :
    (Var.var -> (signedness * Var.var) option) -> SvExtra.Sv.t -> var_i ->
    (pp_error_loc, (string * eassert) list) result **)

let wint_contract_condition m fV x =
  match wi2i_vari m fV x with
  | Ok x0 ->
    (match m x.v_var with
     | Some p ->
       let (s, _) = p in
       (match Var.vtype x.v_var with
        | Coq_aword sz ->
          Ok ((safety_lbl, (Pexpr (sc_wi_range s sz (coq_Plvar x0)))) :: [])
        | _ -> Ok [])
     | None -> Ok [])
  | Error s -> Error s

(** val wi2i_gvar :
    (Var.var -> (signedness * Var.var) option) -> SvExtra.Sv.t -> gvar ->
    (pp_error_loc, gvar) result **)

let wi2i_gvar m fV x =
  if is_lvar x
  then (match wi2i_vari m fV x.gv with
        | Ok x0 -> Ok (mk_lvar x0)
        | Error s -> Error s)
  else Ok x

(** val wi2i_type : signedness option -> atype -> atype **)

let wi2i_type sg ty =
  if eq_op
       (coq_Datatypes_option__canonical__eqtype_Equality
         wsize_signedness__canonical__eqtype_Equality)
       (Obj.magic sg) (Obj.magic None)
  then ty
  else Coq_aint

type safety_cond = pexpr list

(** val wi2i_es :
    (pexpr -> (safety_cond * pexpr) cexec) -> pexpr list ->
    (safety_cond * pexpr list) cexec **)

let wi2i_es wi2i_e0 es =
  match mapM wi2i_e0 es with
  | Ok x -> Ok ((flatten (unzip1 x)), (unzip2 x))
  | Error s -> Error s

(** val wi2i_e :
    (Var.var -> (signedness * Var.var) option) -> SvExtra.Sv.t -> pexpr ->
    (safety_cond * pexpr) cexec **)

let rec wi2i_e m fV e0 = match e0 with
| Pvar x ->
  (match wi2i_gvar m fV x with
   | Ok x0 -> Ok ([], (Pvar x0))
   | Error s -> Error s)
| Pget (al, aa, ws, x, e) ->
  if eq_op
       (coq_Datatypes_option__canonical__eqtype_Equality
         wsize_signedness__canonical__eqtype_Equality)
       (Obj.magic sign_of_expr m e) (Obj.magic None)
  then (match wi2i_gvar m fV x with
        | Ok x0 ->
          (match wi2i_e m fV e with
           | Ok x1 -> Ok ((fst x1), (Pget (al, aa, ws, x0, (snd x1))))
           | Error s -> Error s)
        | Error s -> Error s)
  else let s = E.ierror_e e0 in Error s
| Psub (al, ws, len, x, e) ->
  if eq_op
       (coq_Datatypes_option__canonical__eqtype_Equality
         wsize_signedness__canonical__eqtype_Equality)
       (Obj.magic sign_of_expr m e) (Obj.magic None)
  then (match wi2i_gvar m fV x with
        | Ok x0 ->
          (match wi2i_e m fV e with
           | Ok x1 -> Ok ((fst x1), (Psub (al, ws, len, x0, (snd x1))))
           | Error s -> Error s)
        | Error s -> Error s)
  else let s = E.ierror_e e0 in Error s
| Pload (al, ws, e) ->
  if eq_op
       (coq_Datatypes_option__canonical__eqtype_Equality
         wsize_signedness__canonical__eqtype_Equality)
       (Obj.magic sign_of_expr m e) (Obj.magic None)
  then (match wi2i_e m fV e with
        | Ok x -> Ok ((fst x), (Pload (al, ws, (snd x))))
        | Error s -> Error s)
  else let s = E.ierror_e e0 in Error s
| Papp1 (o, e) ->
  if esubtype (fst (etype_of_op1 o)) (etype_of_expr m e)
  then (match wi2i_e m fV e with
        | Ok x ->
          let sc = sc_op1 o (snd x) in
          Ok ((cat (fst x) sc), (wi2i_op1_e o (snd x)))
        | Error s -> Error s)
  else let s = E.ierror_e e0 in Error s
| Papp2 (o, e1, e2) ->
  let ty = etype_of_op2 o in
  if (&&) (esubtype (fst (fst ty)) (etype_of_expr m e1))
       (esubtype (snd (fst ty)) (etype_of_expr m e2))
  then (match wi2i_e m fV e1 with
        | Ok x ->
          (match wi2i_e m fV e2 with
           | Ok x0 ->
             let sc = sc_op2 o (snd x) (snd x0) in
             Ok ((cat (fst x) (cat (fst x0) sc)),
             (wi2i_op2_e o (snd x) (snd x0)))
           | Error s -> Error s)
        | Error s -> Error s)
  else let s = E.ierror_e e0 in Error s
| PappN (o, es) ->
  if all (fun e ->
       eq_op
         (coq_Datatypes_option__canonical__eqtype_Equality
           wsize_signedness__canonical__eqtype_Equality)
         (Obj.magic sign_of_expr m e) (Obj.magic None))
       es
  then (match wi2i_es (wi2i_e m fV) es with
        | Ok x -> Ok ((fst x), (PappN (o, (snd x))))
        | Error s -> Error s)
  else let s = E.ierror_e e0 in Error s
| Pif (ty, e1, e2, e3) ->
  let ety = etype_of_expr m e0 in
  if (&&) (esubtype ety (etype_of_expr m e2))
       (esubtype ety (etype_of_expr m e3))
  then let ty0 = wi2i_type (sign_of_expr m e2) ty in
       (match wi2i_e m fV e1 with
        | Ok x ->
          (match wi2i_e m fV e2 with
           | Ok x0 ->
             (match wi2i_e m fV e3 with
              | Ok x1 ->
                Ok ((cat (fst x) (cat (fst x0) (fst x1))), (Pif (ty0,
                  (snd x), (snd x0), (snd x1))))
              | Error s -> Error s)
           | Error s -> Error s)
        | Error s -> Error s)
  else let s = E.ierror_e e0 in Error s
| _ -> Ok ([], e0)

(** val wi2i_lvar :
    (Var.var -> (signedness * Var.var) option) -> SvExtra.Sv.t -> positive
    extended_type -> var_i -> var_i cexec **)

let wi2i_lvar m fV ety x =
  if esubtype (etype_of_var m x.v_var) ety
  then wi2i_vari m fV x
  else let s = E.ierror_lv (Lvar x) in Error s

(** val wi2i_lv :
    (Var.var -> (signedness * Var.var) option) -> SvExtra.Sv.t -> positive
    extended_type -> lval -> (safety_cond * lval) cexec **)

let wi2i_lv m fV ety lv =
  let s = sign_of_etype ety in
  (match lv with
   | Lnone (vi, ty) ->
     if esubtype (to_etype (sign_of_etype ety) ty) ety
     then Ok ([], (Lnone (vi, (wi2i_type s ty))))
     else let s0 = E.ierror_lv lv in Error s0
   | Lvar x ->
     (match wi2i_lvar m fV ety x with
      | Ok x0 -> Ok ([], (Lvar x0))
      | Error s0 -> Error s0)
   | Lmem (al, ws, vi, e) ->
     if (&&)
          (eq_op
            (coq_Datatypes_option__canonical__eqtype_Equality
              wsize_signedness__canonical__eqtype_Equality)
            (Obj.magic sign_of_expr m e) (Obj.magic None))
          (eq_op
            (coq_Datatypes_option__canonical__eqtype_Equality
              wsize_signedness__canonical__eqtype_Equality)
            (Obj.magic s) (Obj.magic None))
     then (match wi2i_e m fV e with
           | Ok x -> Ok ((fst x), (Lmem (al, ws, vi, (snd x))))
           | Error s0 -> Error s0)
     else let s0 = E.ierror_lv lv in Error s0
   | Laset (al, aa, ws, x, e) ->
     if (&&) (in_FV_var fV x.v_var)
          ((&&)
            (eq_op
              (coq_Datatypes_option__canonical__eqtype_Equality
                wsize_signedness__canonical__eqtype_Equality)
              (Obj.magic sign_of_expr m e) (Obj.magic None))
            (eq_op
              (coq_Datatypes_option__canonical__eqtype_Equality
                wsize_signedness__canonical__eqtype_Equality)
              (Obj.magic s) (Obj.magic None)))
     then (match wi2i_e m fV e with
           | Ok x0 -> Ok ((fst x0), (Laset (al, aa, ws, x, (snd x0))))
           | Error s0 -> Error s0)
     else let s0 = E.ierror_lv lv in Error s0
   | Lasub (aa, ws, len, x, e) ->
     if (&&) (in_FV_var fV x.v_var)
          ((&&)
            (eq_op
              (coq_Datatypes_option__canonical__eqtype_Equality
                wsize_signedness__canonical__eqtype_Equality)
              (Obj.magic sign_of_expr m e) (Obj.magic None))
            (eq_op
              (coq_Datatypes_option__canonical__eqtype_Equality
                wsize_signedness__canonical__eqtype_Equality)
              (Obj.magic s) (Obj.magic None)))
     then (match wi2i_e m fV e with
           | Ok x0 -> Ok ((fst x0), (Lasub (aa, ws, len, x, (snd x0))))
           | Error s0 -> Error s0)
     else let s0 = E.ierror_lv lv in Error s0)

(** val wi2i_lvs :
    (Var.var -> (signedness * Var.var) option) -> SvExtra.Sv.t -> string ->
    bool -> positive extended_type list -> lval list -> (pp_error_loc, pexpr
    list * lval list) result **)

let wi2i_lvs m fV msg okmem xtys xs =
  let err = E.ierror_s msg in
  (match mapM2 err (wi2i_lv m fV) xtys xs with
   | Ok x ->
     let scs = unzip1 x in
     let xs0 = unzip2 x in
     if check_xs okmem SvExtra.Sv.empty xs0 scs
     then Ok ((flatten scs), xs0)
     else Error err
   | Error s -> Error s)

(** val wi2i_eassert :
    coq_PointerData -> (Var.var -> (signedness * Var.var) option) ->
    SvExtra.Sv.t -> eassert -> (safety_cond * eassert) cexec **)

let rec wi2i_eassert pd m fV = function
| Pexpr e0 ->
  (match wi2i_e m fV e0 with
   | Ok x -> Ok ((fst x), (Pexpr (snd x)))
   | Error s -> Error s)
| PappN_safety (o, es) ->
  if all (fun e0 ->
       eq_op
         (coq_Datatypes_option__canonical__eqtype_Equality
           wsize_signedness__canonical__eqtype_Equality)
         (Obj.magic sign_of_expr m e0) (Obj.magic None))
       es
  then (match wi2i_es (wi2i_e m fV) es with
        | Ok x -> Ok ((fst x), (PappN_safety (o, (snd x))))
        | Error s -> Error s)
  else let s = E.ierror_s "ill typed appN_assert" in Error s
| Pis_var_init x ->
  (match wi2i_vari m fV x with
   | Ok x0 -> Ok ([], (Pis_var_init x0))
   | Error s -> Error s)
| Pis_mem_init (e1, e2) ->
  if (&&)
       (eq_op
         (type_extended_type__canonical__eqtype_Equality
           coq_BinNums_positive__canonical__eqtype_Equality)
         (Obj.magic etype_of_expr m e1) (Obj.magic (ETword (None, pd))))
       (eq_op
         (type_extended_type__canonical__eqtype_Equality
           coq_BinNums_positive__canonical__eqtype_Equality)
         (Obj.magic etype_of_expr m e2) (Obj.magic ETint))
  then (match wi2i_e m fV e1 with
        | Ok x ->
          (match wi2i_e m fV e2 with
           | Ok x0 ->
             Ok ((cat (fst x) (fst x0)), (Pis_mem_init ((snd x), (snd x0))))
           | Error s -> Error s)
        | Error s -> Error s)
  else let s = E.ierror_s "ill typed is_mem_init" in Error s
| Pand (e1, e2) ->
  (match wi2i_eassert pd m fV e1 with
   | Ok x ->
     (match wi2i_eassert pd m fV e2 with
      | Ok x0 -> Ok ((cat (fst x) (fst x0)), (Pand ((snd x), (snd x0))))
      | Error s -> Error s)
   | Error s -> Error s)

(** val wi2i_a_and :
    coq_PointerData -> (Var.var -> (signedness * Var.var) option) ->
    SvExtra.Sv.t -> assertion -> (pp_error_loc, assertion_label * eassert)
    result **)

let wi2i_a_and pd m fV a =
  match wi2i_eassert pd m fV (snd a) with
  | Ok x ->
    Ok ((fst a), (aands (rcons (map (fun x0 -> Pexpr x0) (fst x)) (snd x))))
  | Error s -> Error s

(** val get_sig :
    (funname -> (positive extended_type list * positive extended_type list)
    option) -> funname -> (pp_error_loc, positive extended_type
    list * positive extended_type list) result **)

let get_sig sigs f =
  match sigs f with
  | Some sig0 -> Ok sig0
  | None -> Error (E.ierror_s "unknown function")

(** val wi2i_c :
    'a1 asmOp -> ('a1 instr -> 'a1 instr list cexec) -> 'a1 instr list ->
    (pp_error_loc, 'a1 instr list) result **)

let wi2i_c _ wi2i c =
  match mapM wi2i c with
  | Ok x -> Ok (flatten x)
  | Error s -> Error s

type is_Polymorphic_op =
| IsSpill of spill_op * atype list
| IsSwap of atype
| IsDeclassify of atype
| IsOther

(** val is_polymorphic_op : 'a1 asmOp -> 'a1 sopn -> is_Polymorphic_op **)

let is_polymorphic_op _ = function
| Opseudo_op p ->
  (match p with
   | Ospill (k, tys) -> IsSpill (k, tys)
   | Odeclassify ty -> IsDeclassify ty
   | Oswap ty -> IsSwap ty
   | _ -> IsOther)
| _ -> IsOther

(** val wi2i_ir :
    'a1 asmOp -> coq_PointerData -> coq_MSFsize -> (Var.var ->
    (signedness * Var.var) option) -> SvExtra.Sv.t -> (funname -> (positive
    extended_type list * positive extended_type list) option) -> 'a1 instr_r
    -> (safety_cond * 'a1 instr_r) cexec **)

let wi2i_ir asmop pd msfsz m fV sigs =
  let rec wi2i_ir0 = function
  | Cassgn (x, tag, ty, e) ->
    let ety = etype_of_expr m e in
    let sg = sign_of_etype ety in
    let tyr = to_etype sg ty in
    if esubtype tyr ety
    then (match wi2i_lv m fV tyr x with
          | Ok x0 ->
            (match wi2i_e m fV e with
             | Ok x1 ->
               let ty0 = wi2i_type sg ty in
               Ok ((cat (fst x1) (fst x0)), (Cassgn ((snd x0), tag, ty0,
               (snd x1))))
             | Error s -> Error s)
          | Error s -> Error s)
    else let s = E.ierror_s "invalid type in assignment" in Error s
  | Copn (xs, t0, o, es) ->
    (match wi2i_es (wi2i_e m fV) es with
     | Ok x ->
       (match match is_polymorphic_op asmop o with
              | IsSpill (k, tys) ->
                let etys = map (etype_of_expr m) es in
                let tys' =
                  map2 (fun ety ty -> to_etype (sign_of_etype ety) ty) etys
                    tys
                in
                if eq_op coq_Datatypes_nat__canonical__eqtype_Equality
                     (Obj.magic size tys) (Obj.magic size es)
                then if all2 esubtype tys' etys
                     then let tys0 =
                            map2 (fun ty e ->
                              wi2i_type (sign_of_expr m e) ty) tys es
                          in
                          Ok ([], (Opseudo_op (Ospill (k, tys0))))
                     else let s = E.ierror_s "ill typed spill (arguments)" in
                          Error s
                else let s = E.ierror_s "ill typed spill" in Error s
              | IsSwap ty ->
                let e1 = nth etrue es O in
                let sg = sign_of_expr m e1 in
                let etys = map (etype_of_expr m) es in
                let ety = to_etype sg ty in
                let tys' = ety :: (ety :: []) in
                if all2 esubtype tys' etys
                then let ty0 = wi2i_type sg ty in
                     Ok (tys', (Opseudo_op (Oswap ty0)))
                else let s = E.ierror_s "ill typed swap (arguments)" in
                     Error s
              | IsDeclassify ty ->
                let e1 = nth etrue es O in
                let sg = sign_of_expr m e1 in
                let etys = map (etype_of_expr m) es in
                let ety = to_etype sg ty in
                let tys' = ety :: [] in
                if all2 esubtype tys' etys
                then let ty0 = wi2i_type sg ty in
                     Ok ([], (Opseudo_op (Odeclassify ty0)))
                else let s = E.ierror_s "ill typed declassify (arguments)" in
                     Error s
              | IsOther ->
                if all (fun e ->
                     eq_op
                       (coq_Datatypes_option__canonical__eqtype_Equality
                         wsize_signedness__canonical__eqtype_Equality)
                       (Obj.magic sign_of_expr m e) (Obj.magic None))
                     es
                then let xtys =
                       map (to_etype None) (sopn_tout pd msfsz asmop o)
                     in
                     Ok (xtys, o)
                else let s = E.ierror_s "invalid expr in Copn" in Error s with
        | Ok x0 ->
          (match wi2i_lvs m fV "invalid dest in Copn" true (fst x0) xs with
           | Ok x1 ->
             Ok ((cat (fst x) (fst x1)), (Copn ((snd x1), t0, (snd x0),
               (snd x))))
           | Error s -> Error s)
        | Error s -> Error s)
     | Error s -> Error s)
  | Csyscall (xs, o, es) ->
    if all (fun e ->
         eq_op
           (coq_Datatypes_option__canonical__eqtype_Equality
             wsize_signedness__canonical__eqtype_Equality)
           (Obj.magic sign_of_expr m e) (Obj.magic None))
         es
    then (match wi2i_es (wi2i_e m fV) es with
          | Ok x ->
            let xtys = map (to_etype None) (syscall_sig_u o).scs_tout in
            (match wi2i_lvs m fV "invalid dest in Csyscall" true xtys xs with
             | Ok x0 ->
               Ok ((cat (fst x) (fst x0)), (Csyscall ((snd x0), o, (snd x))))
             | Error s -> Error s)
          | Error s -> Error s)
    else let s = E.ierror_s "invalid args in Csyscall" in Error s
  | Cassert a ->
    (match wi2i_a_and pd m fV a with
     | Ok x -> Ok ([], (Cassert x))
     | Error s -> Error s)
  | Cif (b, c1, c2) ->
    (match wi2i_e m fV b with
     | Ok x ->
       (match wi2i_c asmop wi2i_i0 c1 with
        | Ok x0 ->
          (match wi2i_c asmop wi2i_i0 c2 with
           | Ok x1 -> Ok ((fst x), (Cif ((snd x), x0, x1)))
           | Error s -> Error s)
        | Error s -> Error s)
     | Error s -> Error s)
  | Cfor (x, r, c) ->
    let (p, e2) = r in
    let (dir, e1) = p in
    if (&&) (in_FV_var fV x.v_var)
         ((&&)
           (eq_op type_atype__canonical__eqtype_Equality
             (Obj.magic Var.vtype x.v_var) (Obj.magic Coq_aint))
           ((&&)
             (eq_op
               (type_extended_type__canonical__eqtype_Equality
                 coq_BinNums_positive__canonical__eqtype_Equality)
               (Obj.magic etype_of_expr m e1) (Obj.magic ETint))
             (eq_op
               (type_extended_type__canonical__eqtype_Equality
                 coq_BinNums_positive__canonical__eqtype_Equality)
               (Obj.magic etype_of_expr m e2) (Obj.magic ETint))))
    then (match wi2i_e m fV e1 with
          | Ok x0 ->
            (match wi2i_e m fV e2 with
             | Ok x1 ->
               (match wi2i_c asmop wi2i_i0 c with
                | Ok x2 ->
                  Ok ((cat (fst x0) (fst x1)), (Cfor (x, ((dir, (snd x0)),
                    (snd x1)), x2)))
                | Error s -> Error s)
             | Error s -> Error s)
          | Error s -> Error s)
    else let s = E.ierror_s "invalid loop counter" in Error s
  | Cwhile (a, c, e, ii', c') ->
    (match wi2i_e m fV e with
     | Ok x ->
       (match wi2i_c asmop wi2i_i0 c with
        | Ok x0 ->
          (match wi2i_c asmop wi2i_i0 c' with
           | Ok x1 ->
             Ok ([], (Cwhile (a,
               (cat x0
                 (safe_assert asmop ii' (map (fun x2 -> Pexpr x2) (fst x)))),
               (snd x), ii', x1)))
           | Error s -> Error s)
        | Error s -> Error s)
     | Error s -> Error s)
  | Ccall (xs, f, es) ->
    (match get_sig sigs f with
     | Ok x ->
       if all2 (fun ety e -> esubtype ety (etype_of_expr m e)) (fst x) es
       then (match wi2i_es (wi2i_e m fV) es with
             | Ok x0 ->
               (match wi2i_lvs m fV "invalid dest in Ccall" false (snd x) xs with
                | Ok x1 ->
                  Ok ((cat (fst x0) (fst x1)), (Ccall ((snd x1), f,
                    (snd x0))))
                | Error s -> Error s)
             | Error s -> Error s)
       else let s = E.ierror_s "invalid args in Ccall" in Error s
     | Error s -> Error s)
  and wi2i_i0 = function
  | MkI (ii, ir) ->
    (match add_iinfo ii (wi2i_ir0 ir) with
     | Ok x ->
       Ok
         (rcons (safe_assert asmop ii (map (fun x0 -> Pexpr x0) (fst x)))
           (MkI (ii, (snd x))))
     | Error s -> Error s)
  in wi2i_ir0

(** val wi2i_i :
    'a1 asmOp -> coq_PointerData -> coq_MSFsize -> (Var.var ->
    (signedness * Var.var) option) -> SvExtra.Sv.t -> (funname -> (positive
    extended_type list * positive extended_type list) option) -> 'a1 instr ->
    'a1 instr list cexec **)

let wi2i_i asmop pd msfsz m fV sigs =
  let rec wi2i_ir0 = function
  | Cassgn (x, tag, ty, e) ->
    let ety = etype_of_expr m e in
    let sg = sign_of_etype ety in
    let tyr = to_etype sg ty in
    if esubtype tyr ety
    then (match wi2i_lv m fV tyr x with
          | Ok x0 ->
            (match wi2i_e m fV e with
             | Ok x1 ->
               let ty0 = wi2i_type sg ty in
               Ok ((cat (fst x1) (fst x0)), (Cassgn ((snd x0), tag, ty0,
               (snd x1))))
             | Error s -> Error s)
          | Error s -> Error s)
    else let s = E.ierror_s "invalid type in assignment" in Error s
  | Copn (xs, t0, o, es) ->
    (match wi2i_es (wi2i_e m fV) es with
     | Ok x ->
       (match match is_polymorphic_op asmop o with
              | IsSpill (k, tys) ->
                let etys = map (etype_of_expr m) es in
                let tys' =
                  map2 (fun ety ty -> to_etype (sign_of_etype ety) ty) etys
                    tys
                in
                if eq_op coq_Datatypes_nat__canonical__eqtype_Equality
                     (Obj.magic size tys) (Obj.magic size es)
                then if all2 esubtype tys' etys
                     then let tys0 =
                            map2 (fun ty e ->
                              wi2i_type (sign_of_expr m e) ty) tys es
                          in
                          Ok ([], (Opseudo_op (Ospill (k, tys0))))
                     else let s = E.ierror_s "ill typed spill (arguments)" in
                          Error s
                else let s = E.ierror_s "ill typed spill" in Error s
              | IsSwap ty ->
                let e1 = nth etrue es O in
                let sg = sign_of_expr m e1 in
                let etys = map (etype_of_expr m) es in
                let ety = to_etype sg ty in
                let tys' = ety :: (ety :: []) in
                if all2 esubtype tys' etys
                then let ty0 = wi2i_type sg ty in
                     Ok (tys', (Opseudo_op (Oswap ty0)))
                else let s = E.ierror_s "ill typed swap (arguments)" in
                     Error s
              | IsDeclassify ty ->
                let e1 = nth etrue es O in
                let sg = sign_of_expr m e1 in
                let etys = map (etype_of_expr m) es in
                let ety = to_etype sg ty in
                let tys' = ety :: [] in
                if all2 esubtype tys' etys
                then let ty0 = wi2i_type sg ty in
                     Ok ([], (Opseudo_op (Odeclassify ty0)))
                else let s = E.ierror_s "ill typed declassify (arguments)" in
                     Error s
              | IsOther ->
                if all (fun e ->
                     eq_op
                       (coq_Datatypes_option__canonical__eqtype_Equality
                         wsize_signedness__canonical__eqtype_Equality)
                       (Obj.magic sign_of_expr m e) (Obj.magic None))
                     es
                then let xtys =
                       map (to_etype None) (sopn_tout pd msfsz asmop o)
                     in
                     Ok (xtys, o)
                else let s = E.ierror_s "invalid expr in Copn" in Error s with
        | Ok x0 ->
          (match wi2i_lvs m fV "invalid dest in Copn" true (fst x0) xs with
           | Ok x1 ->
             Ok ((cat (fst x) (fst x1)), (Copn ((snd x1), t0, (snd x0),
               (snd x))))
           | Error s -> Error s)
        | Error s -> Error s)
     | Error s -> Error s)
  | Csyscall (xs, o, es) ->
    if all (fun e ->
         eq_op
           (coq_Datatypes_option__canonical__eqtype_Equality
             wsize_signedness__canonical__eqtype_Equality)
           (Obj.magic sign_of_expr m e) (Obj.magic None))
         es
    then (match wi2i_es (wi2i_e m fV) es with
          | Ok x ->
            let xtys = map (to_etype None) (syscall_sig_u o).scs_tout in
            (match wi2i_lvs m fV "invalid dest in Csyscall" true xtys xs with
             | Ok x0 ->
               Ok ((cat (fst x) (fst x0)), (Csyscall ((snd x0), o, (snd x))))
             | Error s -> Error s)
          | Error s -> Error s)
    else let s = E.ierror_s "invalid args in Csyscall" in Error s
  | Cassert a ->
    (match wi2i_a_and pd m fV a with
     | Ok x -> Ok ([], (Cassert x))
     | Error s -> Error s)
  | Cif (b, c1, c2) ->
    (match wi2i_e m fV b with
     | Ok x ->
       (match wi2i_c asmop wi2i_i0 c1 with
        | Ok x0 ->
          (match wi2i_c asmop wi2i_i0 c2 with
           | Ok x1 -> Ok ((fst x), (Cif ((snd x), x0, x1)))
           | Error s -> Error s)
        | Error s -> Error s)
     | Error s -> Error s)
  | Cfor (x, r, c) ->
    let (p, e2) = r in
    let (dir, e1) = p in
    if (&&) (in_FV_var fV x.v_var)
         ((&&)
           (eq_op type_atype__canonical__eqtype_Equality
             (Obj.magic Var.vtype x.v_var) (Obj.magic Coq_aint))
           ((&&)
             (eq_op
               (type_extended_type__canonical__eqtype_Equality
                 coq_BinNums_positive__canonical__eqtype_Equality)
               (Obj.magic etype_of_expr m e1) (Obj.magic ETint))
             (eq_op
               (type_extended_type__canonical__eqtype_Equality
                 coq_BinNums_positive__canonical__eqtype_Equality)
               (Obj.magic etype_of_expr m e2) (Obj.magic ETint))))
    then (match wi2i_e m fV e1 with
          | Ok x0 ->
            (match wi2i_e m fV e2 with
             | Ok x1 ->
               (match wi2i_c asmop wi2i_i0 c with
                | Ok x2 ->
                  Ok ((cat (fst x0) (fst x1)), (Cfor (x, ((dir, (snd x0)),
                    (snd x1)), x2)))
                | Error s -> Error s)
             | Error s -> Error s)
          | Error s -> Error s)
    else let s = E.ierror_s "invalid loop counter" in Error s
  | Cwhile (a, c, e, ii', c') ->
    (match wi2i_e m fV e with
     | Ok x ->
       (match wi2i_c asmop wi2i_i0 c with
        | Ok x0 ->
          (match wi2i_c asmop wi2i_i0 c' with
           | Ok x1 ->
             Ok ([], (Cwhile (a,
               (cat x0
                 (safe_assert asmop ii' (map (fun x2 -> Pexpr x2) (fst x)))),
               (snd x), ii', x1)))
           | Error s -> Error s)
        | Error s -> Error s)
     | Error s -> Error s)
  | Ccall (xs, f, es) ->
    (match get_sig sigs f with
     | Ok x ->
       if all2 (fun ety e -> esubtype ety (etype_of_expr m e)) (fst x) es
       then (match wi2i_es (wi2i_e m fV) es with
             | Ok x0 ->
               (match wi2i_lvs m fV "invalid dest in Ccall" false (snd x) xs with
                | Ok x1 ->
                  Ok ((cat (fst x0) (fst x1)), (Ccall ((snd x1), f,
                    (snd x0))))
                | Error s -> Error s)
             | Error s -> Error s)
       else let s = E.ierror_s "invalid args in Ccall" in Error s
     | Error s -> Error s)
  and wi2i_i0 = function
  | MkI (ii, ir) ->
    (match add_iinfo ii (wi2i_ir0 ir) with
     | Ok x ->
       Ok
         (rcons (safe_assert asmop ii (map (fun x0 -> Pexpr x0) (fst x)))
           (MkI (ii, (snd x))))
     | Error s -> Error s)
  in wi2i_i0

(** val wi2i_ci :
    coq_PointerData -> (Var.var -> (signedness * Var.var) option) ->
    SvExtra.Sv.t -> fun_contract -> (positive extended_type list * positive
    extended_type list) -> (pp_error_loc, fun_contract) result **)

let wi2i_ci pd m fV ci sig0 =
  match mapM (wi2i_a_and pd m fV) ci.f_pre with
  | Ok x ->
    (match mapM (wint_contract_condition m fV) ci.f_iparams with
     | Ok x0 ->
       let ci_pre = cat x (flatten x0) in
       (match mapM (wi2i_a_and pd m fV) ci.f_post with
        | Ok x1 ->
          (match mapM (wint_contract_condition m fV) ci.f_ires with
           | Ok x2 ->
             let ci_post = cat x1 (flatten x2) in
             (match mapM2 (E.ierror_s "bad params in fun") (wi2i_lvar m fV)
                      (fst sig0) ci.f_iparams with
              | Ok x3 ->
                (match mapM2 (E.ierror_s "bad return in fun")
                         (wi2i_lvar m fV) (snd sig0) ci.f_ires with
                 | Ok x4 ->
                   Ok { f_iparams = x3; f_ires = x4; f_pre = ci_pre; f_post =
                     ci_post }
                 | Error s -> Error s)
              | Error s -> Error s)
           | Error s -> Error s)
        | Error s -> Error s)
     | Error s -> Error s)
  | Error s -> Error s

(** val wi2i_fun :
    'a1 asmOp -> coq_PointerData -> coq_MSFsize -> (Var.var ->
    (signedness * Var.var) option) -> SvExtra.Sv.t -> (funname -> (positive
    extended_type list * positive extended_type list) option) -> funname ->
    'a1 fundef -> ('a1, extra_fun_t) _fundef cexec **)

let wi2i_fun asmop pd msfsz m fV sigs fn f =
  add_funname fn
    (match get_sig sigs fn with
     | Ok x ->
       let { f_info = ii; f_contract = ci; f_tyin = si; f_params = p;
         f_body = c; f_tyout = so; f_res = r; f_extra = ev } = f
       in
       (match ci with
        | Some ci0 ->
          (match wi2i_ci pd m fV ci0 x with
           | Ok x0 ->
             let x1 = Some x0 in
             if (&&)
                  (eq_op coq_Datatypes_nat__canonical__eqtype_Equality
                    (Obj.magic size p) (Obj.magic size si))
                  (eq_op coq_Datatypes_nat__canonical__eqtype_Equality
                    (Obj.magic size r) (Obj.magic size so))
             then (match mapM2 (E.ierror_s "bad params in fun")
                           (wi2i_lvar m fV) (fst x) p with
                   | Ok x2 ->
                     (match wi2i_c asmop (wi2i_i asmop pd msfsz m fV sigs) c with
                      | Ok x3 ->
                        (match mapM2 (E.ierror_s "bad return in fun")
                                 (fun ety x4 ->
                                 if esubtype ety (etype_of_var m x4.v_var)
                                 then wi2i_vari m fV x4
                                 else let s = E.ierror_lv (Lvar x4) in Error s)
                                 (snd x) r with
                         | Ok x4 ->
                           let mk =
                             map (fun ety ->
                               wi2i_type (sign_of_etype ety) (to_atype ety))
                           in
                           let tin = mk (fst x) in
                           let tout = mk (snd x) in
                           Ok { f_info = ii; f_contract = x1; f_tyin = tin;
                           f_params = x2; f_body = x3; f_tyout = tout;
                           f_res = x4; f_extra = ev }
                         | Error s -> Error s)
                      | Error s -> Error s)
                   | Error s -> Error s)
             else let s = E.ierror_s "bad signature in fun" in Error s
           | Error s -> Error s)
        | None ->
          let x0 = None in
          if (&&)
               (eq_op coq_Datatypes_nat__canonical__eqtype_Equality
                 (Obj.magic size p) (Obj.magic size si))
               (eq_op coq_Datatypes_nat__canonical__eqtype_Equality
                 (Obj.magic size r) (Obj.magic size so))
          then (match mapM2 (E.ierror_s "bad params in fun") (wi2i_lvar m fV)
                        (fst x) p with
                | Ok x1 ->
                  (match wi2i_c asmop (wi2i_i asmop pd msfsz m fV sigs) c with
                   | Ok x2 ->
                     (match mapM2 (E.ierror_s "bad return in fun")
                              (fun ety x3 ->
                              if esubtype ety (etype_of_var m x3.v_var)
                              then wi2i_vari m fV x3
                              else let s = E.ierror_lv (Lvar x3) in Error s)
                              (snd x) r with
                      | Ok x3 ->
                        let mk =
                          map (fun ety ->
                            wi2i_type (sign_of_etype ety) (to_atype ety))
                        in
                        let tin = mk (fst x) in
                        let tout = mk (snd x) in
                        Ok { f_info = ii; f_contract = x0; f_tyin = tin;
                        f_params = x1; f_body = x2; f_tyout = tout; f_res =
                        x3; f_extra = ev }
                      | Error s -> Error s)
                   | Error s -> Error s)
                | Error s -> Error s)
          else let s = E.ierror_s "bad signature in fun" in Error s)
     | Error s -> Error s)

(** val build_sig :
    'a1 asmOp -> (Var.var -> (signedness * Var.var) option) -> (funname * 'a1
    fundef) -> funname * (positive extended_type list * positive
    extended_type list) **)

let build_sig _ m fd =
  let { f_info = _; f_contract = _; f_tyin = si; f_params = p; f_body = _;
    f_tyout = so; f_res = r; f_extra = _ } = snd fd
  in
  let mk = map2 (fun x ty -> to_etype (sign_of_var m x.v_var) ty) in
  ((fst fd), ((mk p si), (mk r so)))

(** val build_info :
    (Var.var -> (signedness * Var.var) option) -> SvExtra.Sv.t ->
    (pp_error_loc, Equality.sort -> (signedness * Var.var) option) result **)

let build_info info fv =
  match foldM (fun x fvm ->
          match Obj.magic info x with
          | Some p ->
            let (s, xi) = p in
            (match OtherDefs.is_word_type (Var.vtype (Obj.magic x)) with
             | Some _ ->
               if (&&) (convertible (Var.vtype (Obj.magic xi)) Coq_aint)
                    (negb (SvExtra.Sv.mem xi (fst fvm)))
               then Ok ((SvExtra.Sv.add xi (fst fvm)),
                      (Mvar.set (snd fvm) x (s, xi)))
               else let s0 = E.ierror_s "invalid info" in Error s0
             | None -> let s0 = E.ierror_s "invalid info" in Error s0)
          | None -> Ok fvm) (fv, Mvar.empty) (SvExtra.Sv.elements fv) with
  | Ok x -> Ok (Mvar.get (snd (Obj.magic x)))
  | Error s -> Error s

(** val wi2i_prog :
    'a1 asmOp -> coq_PointerData -> coq_MSFsize -> ('a1 _uprog ->
    SvExtra.Sv.t * (Var.var -> (signedness * Var.var) option)) -> 'a1 _uprog
    -> 'a1 _uprog cexec **)

let wi2i_prog asmop pd msfsz get_info p =
  let (fV, info) = get_info p in
  (match build_info info fV with
   | Ok x ->
     if SvExtra.Sv.subset (vars_p asmop progUnit (Obj.magic p).p_funcs) fV
     then let sigs = map (Obj.magic build_sig asmop info) p.p_funcs in
          (match map_cfprog_name_gen (fun x0 -> x0.f_info)
                   (Obj.magic wi2i_fun asmop pd msfsz x fV (get_fundef sigs))
                   p.p_funcs with
           | Ok x0 ->
             Ok { p_funcs = x0; p_globs = p.p_globs; p_extra = p.p_extra }
           | Error s -> Error s)
     else let s = E.ierror_s "vars_p is not included in FV" in Error s
   | Error s -> Error s)
