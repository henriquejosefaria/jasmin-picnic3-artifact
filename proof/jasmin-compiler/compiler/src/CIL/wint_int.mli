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

module E :
 sig
  val pass : string

  val ierror_s : string -> pp_error_loc

  val ierror : pp_error -> pp_error_loc

  val ierror_e : pexpr -> pp_error_loc

  val pp_user_error : pp_error -> pp_error_loc

  val error_e : string -> pexpr -> pp_error_loc

  val ierror_lv : lval -> pp_error_loc
 end

val sc_op1 : sop1 -> pexpr -> pexpr list

val sc_op2 : sop2 -> pexpr -> pexpr -> pexpr list

val wi2i_op2 : sop2 -> sop2

val wi2i_op1_e : sop1 -> pexpr -> pexpr

val wi2i_op2_e : sop2 -> pexpr -> pexpr -> pexpr

val wi2i_var :
  (Var.var -> (signedness * Var.var) option) -> Var.var -> Var.var

val in_FV_var : SvExtra.Sv.t -> Var.var -> bool

val wi2i_vari :
  (Var.var -> (signedness * Var.var) option) -> SvExtra.Sv.t -> var_i ->
  (pp_error_loc, var_i) result

val wint_contract_condition :
  (Var.var -> (signedness * Var.var) option) -> SvExtra.Sv.t -> var_i ->
  (pp_error_loc, (string * eassert) list) result

val wi2i_gvar :
  (Var.var -> (signedness * Var.var) option) -> SvExtra.Sv.t -> gvar ->
  (pp_error_loc, gvar) result

val wi2i_type : signedness option -> atype -> atype

type safety_cond = pexpr list

val wi2i_es :
  (pexpr -> (safety_cond * pexpr) cexec) -> pexpr list ->
  (safety_cond * pexpr list) cexec

val wi2i_e :
  (Var.var -> (signedness * Var.var) option) -> SvExtra.Sv.t -> pexpr ->
  (safety_cond * pexpr) cexec

val wi2i_lvar :
  (Var.var -> (signedness * Var.var) option) -> SvExtra.Sv.t -> positive
  extended_type -> var_i -> var_i cexec

val wi2i_lv :
  (Var.var -> (signedness * Var.var) option) -> SvExtra.Sv.t -> positive
  extended_type -> lval -> (safety_cond * lval) cexec

val wi2i_lvs :
  (Var.var -> (signedness * Var.var) option) -> SvExtra.Sv.t -> string ->
  bool -> positive extended_type list -> lval list -> (pp_error_loc, pexpr
  list * lval list) result

val wi2i_eassert :
  coq_PointerData -> (Var.var -> (signedness * Var.var) option) ->
  SvExtra.Sv.t -> eassert -> (safety_cond * eassert) cexec

val wi2i_a_and :
  coq_PointerData -> (Var.var -> (signedness * Var.var) option) ->
  SvExtra.Sv.t -> assertion -> (pp_error_loc, assertion_label * eassert)
  result

val get_sig :
  (funname -> (positive extended_type list * positive extended_type list)
  option) -> funname -> (pp_error_loc, positive extended_type list * positive
  extended_type list) result

val wi2i_c :
  'a1 asmOp -> ('a1 instr -> 'a1 instr list cexec) -> 'a1 instr list ->
  (pp_error_loc, 'a1 instr list) result

type is_Polymorphic_op =
| IsSpill of spill_op * atype list
| IsSwap of atype
| IsDeclassify of atype
| IsOther

val is_polymorphic_op : 'a1 asmOp -> 'a1 sopn -> is_Polymorphic_op

val wi2i_ir :
  'a1 asmOp -> coq_PointerData -> coq_MSFsize -> (Var.var ->
  (signedness * Var.var) option) -> SvExtra.Sv.t -> (funname -> (positive
  extended_type list * positive extended_type list) option) -> 'a1 instr_r ->
  (safety_cond * 'a1 instr_r) cexec

val wi2i_i :
  'a1 asmOp -> coq_PointerData -> coq_MSFsize -> (Var.var ->
  (signedness * Var.var) option) -> SvExtra.Sv.t -> (funname -> (positive
  extended_type list * positive extended_type list) option) -> 'a1 instr ->
  'a1 instr list cexec

val wi2i_ci :
  coq_PointerData -> (Var.var -> (signedness * Var.var) option) ->
  SvExtra.Sv.t -> fun_contract -> (positive extended_type list * positive
  extended_type list) -> (pp_error_loc, fun_contract) result

val wi2i_fun :
  'a1 asmOp -> coq_PointerData -> coq_MSFsize -> (Var.var ->
  (signedness * Var.var) option) -> SvExtra.Sv.t -> (funname -> (positive
  extended_type list * positive extended_type list) option) -> funname -> 'a1
  fundef -> ('a1, extra_fun_t) _fundef cexec

val build_sig :
  'a1 asmOp -> (Var.var -> (signedness * Var.var) option) -> (funname * 'a1
  fundef) -> funname * (positive extended_type list * positive extended_type
  list)

val build_info :
  (Var.var -> (signedness * Var.var) option) -> SvExtra.Sv.t ->
  (pp_error_loc, Equality.sort -> (signedness * Var.var) option) result

val wi2i_prog :
  'a1 asmOp -> coq_PointerData -> coq_MSFsize -> ('a1 _uprog ->
  SvExtra.Sv.t * (Var.var -> (signedness * Var.var) option)) -> 'a1 _uprog ->
  'a1 _uprog cexec
