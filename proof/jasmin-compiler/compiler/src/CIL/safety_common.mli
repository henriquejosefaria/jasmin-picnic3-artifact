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

val esubtype : positive extended_type -> positive extended_type -> bool

val etrue : pexpr

val aands : eassert list -> eassert

val to_etype : signedness option -> atype -> positive extended_type

val sign_of_var :
  (Var.var -> (signedness * Var.var) option) -> Var.var -> signedness option

val etype_of_var :
  (Var.var -> (signedness * Var.var) option) -> Var.var -> positive
  extended_type

val sign_of_gvar :
  (Var.var -> (signedness * Var.var) option) -> gvar -> signedness option

val etype_of_gvar :
  (Var.var -> (signedness * Var.var) option) -> gvar -> positive extended_type

val sign_of_etype : positive extended_type -> signedness option

val etype_of_expr :
  (Var.var -> (signedness * Var.var) option) -> pexpr -> positive
  extended_type

val sign_of_expr :
  (Var.var -> (signedness * Var.var) option) -> pexpr -> signedness option

val elei : pexpr -> pexpr -> pexpr

val eeqi : pexpr -> pexpr -> pexpr

val eneqi : pexpr -> pexpr -> pexpr

val elsli : pexpr -> pexpr -> pexpr

val ezero : pexpr

val emin_signed : wsize -> pexpr

val emax_signed : wsize -> pexpr

val emax_unsigned : wsize -> pexpr

val safety_lbl : string

val safe_assert : 'a1 asmOp -> instr_info -> safety_cond -> 'a1 instr list

val sc_in_range : pexpr -> pexpr -> pexpr -> pexpr

val sc_uint_range : wsize -> pexpr -> pexpr

val sc_sint_range : wsize -> pexpr -> pexpr

val sc_wi_range : signedness -> wsize -> pexpr -> pexpr

val is_wi1 : sop1 -> (signedness * wiop1) option

val is_wi2 : sop2 -> ((signedness * wsize) * wiop2) option

val sc_wiop1 :
  (signedness -> wsize -> pexpr -> pexpr) -> signedness -> wiop1 -> pexpr ->
  pexpr list

val sc_wi_range_op2 : signedness -> wsize -> sop2 -> pexpr -> pexpr -> pexpr

val sc_divmod : signedness -> wsize -> pexpr -> pexpr -> pexpr list

val sc_wiop2 : signedness -> wsize -> wiop2 -> pexpr -> pexpr -> pexpr list

val sc_op1 :
  (signedness -> wsize -> pexpr -> pexpr) -> sop1 -> pexpr -> pexpr list

val check_xs : bool -> SvExtra.Sv.t -> lval list -> pexpr list list -> bool
