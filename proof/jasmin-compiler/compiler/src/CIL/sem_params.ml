(* This prelude is added at extraction time. See lang/extraction.v. *)
   [@@@ocaml.warning "-9-20-27-32-33-34-37-39-50-67"] (* End of prelude. *)

open Flag_combination
open Sopn
open Syscall
open Wsize

type 'syscall_state coq_EstateParams = { _pd : coq_PointerData;
                                         _msf_size : coq_MSFsize }

(** val _pd : 'a1 coq_EstateParams -> coq_PointerData **)

let _pd estateParams =
  estateParams._pd

(** val _msf_size : 'a1 coq_EstateParams -> coq_MSFsize **)

let _msf_size estateParams =
  estateParams._msf_size

type coq_SemPexprParams =
  coq_FlagCombinationParams
  (* singleton inductive, whose constructor was mk_spp *)

(** val _fcp : coq_SemPexprParams -> coq_FlagCombinationParams **)

let _fcp semPexprParams =
  semPexprParams

type ('asm_op, 'syscall_state) coq_SemInstrParams = { _asmop : 'asm_op asmOp;
                                                      _sc_sem : 'syscall_state
                                                                syscall_sem }

(** val _asmop : ('a1, 'a2) coq_SemInstrParams -> 'a1 asmOp **)

let _asmop semInstrParams =
  semInstrParams._asmop

(** val _sc_sem : ('a1, 'a2) coq_SemInstrParams -> 'a2 syscall_sem **)

let _sc_sem semInstrParams =
  semInstrParams._sc_sem

type coq_WithAssert =
  bool
  (* singleton inductive, whose constructor was Build_WithAssert *)

(** val assert_allowed : coq_WithAssert -> bool **)

let assert_allowed withAssert =
  withAssert

(** val noassert : coq_WithAssert **)

let noassert =
  false

(** val withassert : coq_WithAssert **)

let withassert =
  true
