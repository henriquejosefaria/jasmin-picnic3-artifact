(* This prelude is added at extraction time. See lang/extraction.v. *)
   [@@@ocaml.warning "-9-20-27-32-33-34-37-39-50-67"] (* End of prelude. *)

open BinNums
open Datatypes
open Eqtype
open Expr
open Operators
open Seq
open Sopn
open Ssrfun
open Type
open Utils0
open Var0
open Word0
open Word_ssrZ
open Wsize

type safety_cond = eassert list

(** val esubtype :
    positive extended_type -> positive extended_type -> bool **)

let esubtype ty1 ty2 =
  match ty1 with
  | ETbool -> (match ty2 with
               | ETbool -> true
               | _ -> false)
  | ETint -> (match ty2 with
              | ETint -> true
              | _ -> false)
  | ETarr (ws, l) ->
    (match ty2 with
     | ETarr (ws', l') ->
       eq_op coq_BinNums_Z__canonical__eqtype_Equality
         (Obj.magic arr_size ws l) (Obj.magic arr_size ws' l')
     | _ -> false)
  | ETword (o, w) ->
    (match o with
     | Some sg ->
       (match ty2 with
        | ETword (o0, w') ->
          (match o0 with
           | Some sg' ->
             (&&)
               (eq_op wsize_signedness__canonical__eqtype_Equality
                 (Obj.magic sg) (Obj.magic sg'))
               (eq_op wsize_wsize__canonical__eqtype_Equality (Obj.magic w)
                 (Obj.magic w'))
           | None -> false)
        | _ -> false)
     | None ->
       (match ty2 with
        | ETword (o0, w') ->
          (match o0 with
           | Some _ -> false
           | None -> cmp_le wsize_cmp w w')
        | _ -> false))

(** val etrue : pexpr **)

let etrue =
  Pbool true

(** val aands : eassert list -> eassert **)

let rec aands = function
| [] -> Pexpr etrue
| e :: es0 -> (match es0 with
               | [] -> e
               | _ :: _ -> Pand (e, (aands es0)))

(** val to_etype : signedness option -> atype -> positive extended_type **)

let to_etype sg = function
| Coq_abool -> tbool
| Coq_aint -> tint
| Coq_aarr (ws, l) -> tarr ws l
| Coq_aword ws -> ETword (sg, ws)

(** val sign_of_var :
    (Var.var -> (signedness * Var.var) option) -> Var.var -> signedness option **)

let sign_of_var m x =
  Ssrfun.Option.map fst (m x)

(** val etype_of_var :
    (Var.var -> (signedness * Var.var) option) -> Var.var -> positive
    extended_type **)

let etype_of_var m x =
  to_etype (sign_of_var m x) (Var.vtype x)

(** val sign_of_gvar :
    (Var.var -> (signedness * Var.var) option) -> gvar -> signedness option **)

let sign_of_gvar m x =
  if is_lvar x then sign_of_var m x.gv.v_var else None

(** val etype_of_gvar :
    (Var.var -> (signedness * Var.var) option) -> gvar -> positive
    extended_type **)

let etype_of_gvar m x =
  to_etype (sign_of_gvar m x) (Var.vtype x.gv.v_var)

(** val sign_of_etype : positive extended_type -> signedness option **)

let sign_of_etype = function
| ETword (o, _) -> o
| _ -> None

(** val etype_of_expr :
    (Var.var -> (signedness * Var.var) option) -> pexpr -> positive
    extended_type **)

let rec etype_of_expr m = function
| Pconst _ -> tint
| Pbool _ -> tbool
| Parr_init (ws, len) -> tarr ws len
| Pvar x -> etype_of_gvar m x
| Pget (_, _, ws, _, _) -> tword ws
| Psub (_, ws, len, _, _) -> tarr ws len
| Pload (_, ws, _) -> tword ws
| Papp1 (o, _) -> snd (etype_of_op1 o)
| Papp2 (o, _, _) -> snd (etype_of_op2 o)
| PappN (o, _) -> to_etype None (snd (type_of_opN o))
| Pif (ty, _, e2, _) -> to_etype (sign_of_etype (etype_of_expr m e2)) ty

(** val sign_of_expr :
    (Var.var -> (signedness * Var.var) option) -> pexpr -> signedness option **)

let sign_of_expr m e =
  sign_of_etype (etype_of_expr m e)

(** val elei : pexpr -> pexpr -> pexpr **)

let elei e1 e2 =
  Papp2 ((Ole Cmp_int), e1, e2)

(** val eeqi : pexpr -> pexpr -> pexpr **)

let eeqi e1 e2 =
  Papp2 ((Oeq Op_int), e1, e2)

(** val eneqi : pexpr -> pexpr -> pexpr **)

let eneqi e1 e2 =
  Papp2 ((Oneq Op_int), e1, e2)

(** val elsli : pexpr -> pexpr -> pexpr **)

let elsli e1 e2 =
  Papp2 ((Olsl Op_int), e1, e2)

(** val ezero : pexpr **)

let ezero =
  Pconst Z0

(** val emin_signed : wsize -> pexpr **)

let emin_signed sz =
  Pconst (wmin_signed sz)

(** val emax_signed : wsize -> pexpr **)

let emax_signed sz =
  Pconst (wmax_signed sz)

(** val emax_unsigned : wsize -> pexpr **)

let emax_unsigned sz =
  Pconst (wmax_unsigned sz)

(** val safety_lbl : string **)

let safety_lbl =
  "safety"

(** val safe_assert :
    'a1 asmOp -> instr_info -> safety_cond -> 'a1 instr list **)

let safe_assert _ ii sc =
  map (fun e -> MkI (ii, (Cassert (safety_lbl, e)))) sc

(** val sc_in_range : pexpr -> pexpr -> pexpr -> pexpr **)

let sc_in_range lo hi e =
  eand (elei lo e) (elei e hi)

(** val sc_uint_range : wsize -> pexpr -> pexpr **)

let sc_uint_range sz e =
  sc_in_range ezero (emax_unsigned sz) e

(** val sc_sint_range : wsize -> pexpr -> pexpr **)

let sc_sint_range sz e =
  sc_in_range (emin_signed sz) (emax_signed sz) e

(** val sc_wi_range : signedness -> wsize -> pexpr -> pexpr **)

let sc_wi_range sg sz e =
  signed (sc_uint_range sz) (sc_sint_range sz) sg e

(** val is_wi1 : sop1 -> (signedness * wiop1) option **)

let is_wi1 = function
| Owi1 (s, op) -> Some (s, op)
| _ -> None

(** val is_wi2 : sop2 -> ((signedness * wsize) * wiop2) option **)

let is_wi2 = function
| Owi2 (s, sw, op) -> Some ((s, sw), op)
| _ -> None

(** val sc_wiop1 :
    (signedness -> wsize -> pexpr -> pexpr) -> signedness -> wiop1 -> pexpr
    -> pexpr list **)

let sc_wiop1 toint sg o e =
  match o with
  | WIwint_of_int sz -> (sc_wi_range sg sz e) :: []
  | WIneg sz ->
    signed ((eeqi (toint sg sz e) ezero) :: [])
      ((eneqi (toint sg sz e) (emin_signed sz)) :: []) sg
  | _ -> []

(** val sc_wi_range_op2 :
    signedness -> wsize -> sop2 -> pexpr -> pexpr -> pexpr **)

let sc_wi_range_op2 sg sz op e1 e2 =
  sc_wi_range sg sz (Papp2 (op, e1, e2))

(** val sc_divmod : signedness -> wsize -> pexpr -> pexpr -> pexpr list **)

let sc_divmod sg sz e1 e2 =
  let sc =
    signed []
      ((enot
         (eand (eeqi e1 (emin_signed sz)) (eeqi e2 (Pconst (Zneg Coq_xH))))) :: [])
      sg
  in
  (eneqi e2 ezero) :: sc

(** val sc_wiop2 :
    signedness -> wsize -> wiop2 -> pexpr -> pexpr -> pexpr list **)

let sc_wiop2 sg sz o e1 e2 =
  match o with
  | WIadd -> (sc_wi_range_op2 sg sz (Oadd Op_int) e1 e2) :: []
  | WImul -> (sc_wi_range_op2 sg sz (Omul Op_int) e1 e2) :: []
  | WIsub -> (sc_wi_range_op2 sg sz (Osub Op_int) e1 e2) :: []
  | WIdiv -> sc_divmod sg sz e1 e2
  | WImod -> sc_divmod sg sz e1 e2
  | WIshl -> (sc_wi_range sg sz (elsli e1 e2)) :: []
  | _ -> []

(** val sc_op1 :
    (signedness -> wsize -> pexpr -> pexpr) -> sop1 -> pexpr -> pexpr list **)

let sc_op1 toint op1 e =
  match is_wi1 op1 with
  | Some p -> let (sg, o) = p in sc_wiop1 toint sg o e
  | None -> []

(** val check_xs :
    bool -> SvExtra.Sv.t -> lval list -> pexpr list list -> bool **)

let rec check_xs okmem w xs scs =
  match xs with
  | [] -> (match scs with
           | [] -> true
           | _ :: _ -> false)
  | x :: xs0 ->
    (match scs with
     | [] -> false
     | sc :: scs0 ->
       (&&) ((||) okmem (negb (has use_mem sc)))
         ((&&) (SvExtra.disjoint (read_es sc) w)
           (check_xs ((&&) okmem (negb (lv_write_mem x))) (vrv_rec w x) xs0
             scs0)))
