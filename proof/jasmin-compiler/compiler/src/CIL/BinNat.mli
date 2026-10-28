(* This prelude is added at extraction time. See lang/extraction.v. *)
   [@@@ocaml.warning "-9-20-27-32-33-34-37-39-50-67"] (* End of prelude. *)

open BinNums
open BinPos

module N :
 sig
  val testbit : coq_N -> coq_N -> bool
 end
