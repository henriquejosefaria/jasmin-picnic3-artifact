(* This prelude is added at extraction time. See lang/extraction.v. *)
   [@@@ocaml.warning "-9-20-27-32-33-34-37-39-50-67"] (* End of prelude. *)

open Flag_combination
open Sopn
open Syscall
open Wsize

type 'syscall_state coq_EstateParams = { _pd : coq_PointerData;
                                         _msf_size : coq_MSFsize }

val _pd : 'a1 coq_EstateParams -> coq_PointerData

val _msf_size : 'a1 coq_EstateParams -> coq_MSFsize

type coq_SemPexprParams =
  coq_FlagCombinationParams
  (* singleton inductive, whose constructor was mk_spp *)

val _fcp : coq_SemPexprParams -> coq_FlagCombinationParams

type ('asm_op, 'syscall_state) coq_SemInstrParams = { _asmop : 'asm_op asmOp;
                                                      _sc_sem : 'syscall_state
                                                                syscall_sem }

val _asmop : ('a1, 'a2) coq_SemInstrParams -> 'a1 asmOp

val _sc_sem : ('a1, 'a2) coq_SemInstrParams -> 'a2 syscall_sem

type coq_WithAssert =
  bool
  (* singleton inductive, whose constructor was Build_WithAssert *)

val assert_allowed : coq_WithAssert -> bool

val noassert : coq_WithAssert

val withassert : coq_WithAssert
