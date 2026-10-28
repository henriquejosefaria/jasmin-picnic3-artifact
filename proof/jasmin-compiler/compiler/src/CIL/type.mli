(* This prelude is added at extraction time. See lang/extraction.v. *)
   [@@@ocaml.warning "-9-20-27-32-33-34-37-39-50-67"] (* End of prelude. *)

open BinInt
open BinNums
open BinPos
open Datatypes
open Eqb_core_defs
open Eqtype
open Std
open Utils0
open Word_ssrZ
open Wsize

type __ = Obj.t

type ltype =
| Coq_lbool
| Coq_lword of wsize

val ltype_tag : ltype -> positive

type box_ltype_lbool =
| Box_ltype_lbool

type ltype_fields_t = __

val ltype_fields : ltype -> ltype_fields_t

val ltype_eqb_fields :
  (ltype -> ltype -> bool) -> positive -> ltype_fields_t -> ltype_fields_t ->
  bool

val ltype_eqb : ltype -> ltype -> bool

val ltype_eqb_OK : ltype -> ltype -> reflect

type atype =
| Coq_abool
| Coq_aint
| Coq_aarr of wsize * positive
| Coq_aword of wsize

val atype_tag : atype -> positive

type box_atype_abool =
| Box_atype_abool

type box_atype_aarr = { coq_Box_atype_aarr_0 : wsize;
                        coq_Box_atype_aarr_1 : positive }

type atype_fields_t = __

val atype_fields : atype -> atype_fields_t

val atype_eqb_fields :
  (atype -> atype -> bool) -> positive -> atype_fields_t -> atype_fields_t ->
  bool

val atype_eqb : atype -> atype -> bool

val atype_eqb_OK : atype -> atype -> reflect

type ctype =
| Coq_cbool
| Coq_cint
| Coq_carr of positive
| Coq_cword of wsize

val ctype_tag : ctype -> positive

type box_ctype_cbool =
| Box_ctype_cbool

type ctype_fields_t = __

val ctype_fields : ctype -> ctype_fields_t

val ctype_eqb_fields :
  (ctype -> ctype -> bool) -> positive -> ctype_fields_t -> ctype_fields_t ->
  bool

val ctype_eqb : ctype -> ctype -> bool

val ctype_eqb_OK : ctype -> ctype -> reflect

val atype_of_ltype : ltype -> atype

val ltype_of_atype : atype -> ltype option

val coq_HB_unnamed_factory_1 : ltype Coq_hasDecEq.axioms_

val type_ltype__canonical__eqtype_Equality : Equality.coq_type

val coq_HB_unnamed_factory_3 : atype Coq_hasDecEq.axioms_

val type_atype__canonical__eqtype_Equality : Equality.coq_type

val coq_HB_unnamed_factory_5 : ctype Coq_hasDecEq.axioms_

val type_ctype__canonical__eqtype_Equality : Equality.coq_type

val atype_cmp : atype -> atype -> comparison

module OtherDefs :
 sig
  val is_aarr : atype -> bool

  val is_word_type : atype -> wsize option

  val is_cword : ctype -> bool
 end

val arr_size : wsize -> positive -> coq_Z

val eval_atype : atype -> ctype

val eval_ltype : ltype -> ctype

val convertible : atype -> atype -> bool

val subatype : atype -> atype -> bool

val subctype : ctype -> ctype -> bool

type 'len extended_type =
| ETbool
| ETint
| ETarr of wsize * 'len
| ETword of signedness option * wsize

val extended_type_tag : 'a1 extended_type -> positive

type 'a box_extended_type_ETbool =
| Box_extended_type_ETbool

type 'a box_extended_type_ETarr = { coq_Box_extended_type_ETarr_0 : wsize;
                                    coq_Box_extended_type_ETarr_1 : 'a }

type 'a box_extended_type_ETword = { coq_Box_extended_type_ETword_0 : 
                                     signedness option;
                                     coq_Box_extended_type_ETword_1 : 
                                     wsize }

type 'p extended_type_fields_t = __

val extended_type_fields : 'a1 extended_type -> 'a1 extended_type_fields_t

val extended_type_eqb_fields :
  ('a1 -> 'a1 -> bool) -> ('a1 extended_type -> 'a1 extended_type -> bool) ->
  positive -> 'a1 extended_type_fields_t -> 'a1 extended_type_fields_t -> bool

val extended_type_eqb :
  ('a1 -> 'a1 -> bool) -> 'a1 extended_type -> 'a1 extended_type -> bool

val extended_type_eqb_OK :
  ('a1 -> 'a1 -> bool) -> ('a1 -> 'a1 -> reflect) -> 'a1 extended_type -> 'a1
  extended_type -> reflect

val tbool : 'a1 extended_type

val tint : 'a1 extended_type

val tarr : wsize -> 'a1 -> 'a1 extended_type

val tword : wsize -> 'a1 extended_type

val twint : signedness -> wsize -> 'a1 extended_type

val tuint : wsize -> 'a1 extended_type

val to_atype : positive extended_type -> atype

val coq_HB_unnamed_factory_7 :
  Equality.coq_type -> Equality.sort extended_type Coq_hasDecEq.axioms_

val type_extended_type__canonical__eqtype_Equality :
  Equality.coq_type -> Equality.coq_type
