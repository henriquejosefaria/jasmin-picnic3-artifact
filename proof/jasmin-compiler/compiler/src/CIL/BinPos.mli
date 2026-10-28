(* This prelude is added at extraction time. See lang/extraction.v. *)
   [@@@ocaml.warning "-9-20-27-32-33-34-37-39-50-67"] (* End of prelude. *)

open BinNums
open Datatypes
open Nat0

module Pos :
 sig
  val succ : positive -> positive

  val add : positive -> positive -> positive

  val add_carry : positive -> positive -> positive

  val pred_double : positive -> positive

  val pred_N : positive -> coq_N

  val compare_cont : comparison -> positive -> positive -> comparison

  val compare : positive -> positive -> comparison

  val leb : positive -> positive -> bool

  val coq_Nsucc_double : coq_N -> coq_N

  val coq_Ndouble : coq_N -> coq_N

  val iter_op : ('a1 -> 'a1 -> 'a1) -> positive -> 'a1 -> 'a1

  val to_nat : positive -> nat

  val of_succ_nat : nat -> positive

  val size : positive -> positive

  val ltb : positive -> positive -> bool

  val testbit : positive -> coq_N -> bool

  val eq_dec : positive -> positive -> bool
 end
