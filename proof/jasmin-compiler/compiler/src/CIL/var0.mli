(* This prelude is added at extraction time. See lang/extraction.v. *)
   [@@@ocaml.warning "-9-20-27-32-33-34-37-39-50-67"] (* End of prelude. *)

open Datatypes
open MSetDecide
open MSetEqProperties
open Prelude
open PrimInt63
open Eqtype
open Gen_map
open Seq
open Ssrbool
open Ssrfun
open Type
open Wsize
open Xseq

type __ = Obj.t

module FunName :
 Tagged.TaggedCore

module TFunName :
 sig
  type t = FunName.t

  val tag : t -> Uint63.t

  val t_eqb : t -> t -> bool

  val t_eq_axiom : t eq_axiom

  val coq_HB_unnamed_factory_1 : t Coq_hasDecEq.axioms_

  val coq_Tagged_t__canonical__eqtype_Equality : Equality.coq_type

  val t_eqType : Equality.coq_type

  val cmp : t -> t -> comparison

  module CmpT :
   sig
    val t : Equality.coq_type

    val cmp : Equality.sort -> Equality.sort -> comparison
   end

  module Mt :
   MAP

  module St :
   sig
    module Ordered :
     sig
      type t = Equality.sort

      val compare : t -> t -> comparison

      val eq_dec : t -> t -> bool
     end

    module Raw :
     sig
      type elt = Equality.sort

      type tree =
      | Leaf
      | Node of Int.Z_as_Int.t * tree * Equality.sort * tree

      val empty : tree

      val is_empty : tree -> bool

      val mem : Equality.sort -> tree -> bool

      val min_elt : tree -> elt option

      val max_elt : tree -> elt option

      val choose : tree -> elt option

      val fold : (elt -> 'a1 -> 'a1) -> tree -> 'a1 -> 'a1

      val elements_aux : Equality.sort list -> tree -> Equality.sort list

      val elements : tree -> Equality.sort list

      val rev_elements_aux : Equality.sort list -> tree -> Equality.sort list

      val rev_elements : tree -> Equality.sort list

      val cardinal : tree -> nat

      val maxdepth : tree -> nat

      val mindepth : tree -> nat

      val for_all : (elt -> bool) -> tree -> bool

      val exists_ : (elt -> bool) -> tree -> bool

      type enumeration =
      | End
      | More of elt * tree * enumeration

      val cons : tree -> enumeration -> enumeration

      val compare_more :
        Equality.sort -> (enumeration -> comparison) -> enumeration ->
        comparison

      val compare_cont :
        tree -> (enumeration -> comparison) -> enumeration -> comparison

      val compare_end : enumeration -> comparison

      val compare : tree -> tree -> comparison

      val equal : tree -> tree -> bool

      val subsetl : (tree -> bool) -> Equality.sort -> tree -> bool

      val subsetr : (tree -> bool) -> Equality.sort -> tree -> bool

      val subset : tree -> tree -> bool

      type t = tree

      val height : t -> Int.Z_as_Int.t

      val singleton : Equality.sort -> tree

      val create : t -> Equality.sort -> t -> tree

      val assert_false : t -> Equality.sort -> t -> tree

      val bal : t -> Equality.sort -> t -> tree

      val add : Equality.sort -> tree -> tree

      val join : tree -> elt -> t -> t

      val remove_min : tree -> elt -> t -> t * elt

      val merge : tree -> tree -> tree

      val remove : Equality.sort -> tree -> tree

      val concat : tree -> tree -> tree

      type triple = { t_left : t; t_in : bool; t_right : t }

      val t_left : triple -> t

      val t_in : triple -> bool

      val t_right : triple -> t

      val split : Equality.sort -> tree -> triple

      val inter : tree -> tree -> tree

      val diff : tree -> tree -> tree

      val union : tree -> tree -> tree

      val filter : (elt -> bool) -> tree -> tree

      val partition : (elt -> bool) -> t -> t * t

      val ltb_tree : Equality.sort -> tree -> bool

      val gtb_tree : Equality.sort -> tree -> bool

      val isok : tree -> bool

      module MX :
       sig
        module OrderTac :
         sig
          module OTF :
           sig
            type t = Equality.sort

            val compare : Equality.sort -> Equality.sort -> comparison

            val eq_dec : Equality.sort -> Equality.sort -> bool
           end

          module TO :
           sig
            type t = Equality.sort

            val compare : Equality.sort -> Equality.sort -> comparison

            val eq_dec : Equality.sort -> Equality.sort -> bool
           end
         end

        val eq_dec : Equality.sort -> Equality.sort -> bool

        val lt_dec : Equality.sort -> Equality.sort -> bool

        val eqb : Equality.sort -> Equality.sort -> bool
       end

      module L :
       sig
        module MO :
         sig
          module OrderTac :
           sig
            module OTF :
             sig
              type t = Equality.sort

              val compare : Equality.sort -> Equality.sort -> comparison

              val eq_dec : Equality.sort -> Equality.sort -> bool
             end

            module TO :
             sig
              type t = Equality.sort

              val compare : Equality.sort -> Equality.sort -> comparison

              val eq_dec : Equality.sort -> Equality.sort -> bool
             end
           end

          val eq_dec : Equality.sort -> Equality.sort -> bool

          val lt_dec : Equality.sort -> Equality.sort -> bool

          val eqb : Equality.sort -> Equality.sort -> bool
         end
       end

      val flatten_e : enumeration -> elt list
     end

    module E :
     sig
      type t = Equality.sort

      val compare : Equality.sort -> Equality.sort -> comparison

      val eq_dec : Equality.sort -> Equality.sort -> bool
     end

    type elt = Equality.sort

    type t_ = Raw.t
      (* singleton inductive, whose constructor was Mkt *)

    val this : t_ -> Raw.t

    type t = t_

    val mem : elt -> t -> bool

    val add : elt -> t -> t

    val remove : elt -> t -> t

    val singleton : elt -> t

    val union : t -> t -> t

    val inter : t -> t -> t

    val diff : t -> t -> t

    val equal : t -> t -> bool

    val subset : t -> t -> bool

    val empty : t

    val is_empty : t -> bool

    val elements : t -> elt list

    val choose : t -> elt option

    val fold : (elt -> 'a1 -> 'a1) -> t -> 'a1 -> 'a1

    val cardinal : t -> nat

    val filter : (elt -> bool) -> t -> t

    val for_all : (elt -> bool) -> t -> bool

    val exists_ : (elt -> bool) -> t -> bool

    val partition : (elt -> bool) -> t -> t * t

    val eq_dec : t -> t -> bool

    val compare : t -> t -> comparison

    val min_elt : t -> elt option

    val max_elt : t -> elt option
   end

  module StP :
   sig
    module MP :
     sig
      module Dec :
       sig
        module F :
         sig
          val eqb : Equality.sort -> Equality.sort -> bool
         end

        module MSetLogicalFacts :
         sig
         end

        module MSetDecideAuxiliary :
         sig
         end

        module MSetDecideTestCases :
         sig
         end
       end

      module FM :
       sig
        val eqb : Equality.sort -> Equality.sort -> bool
       end

      val coq_In_dec : St.elt -> St.t -> bool

      val of_list : St.elt list -> St.t

      val to_list : St.t -> St.elt list

      val fold_rec :
        (St.elt -> 'a1 -> 'a1) -> 'a1 -> St.t -> (St.t -> __ -> 'a2) ->
        (St.elt -> 'a1 -> St.t -> St.t -> __ -> __ -> __ -> 'a2 -> 'a2) -> 'a2

      val fold_rec_bis :
        (St.elt -> 'a1 -> 'a1) -> 'a1 -> St.t -> (St.t -> St.t -> 'a1 -> __
        -> 'a2 -> 'a2) -> 'a2 -> (St.elt -> 'a1 -> St.t -> __ -> __ -> 'a2 ->
        'a2) -> 'a2

      val fold_rec_nodep :
        (St.elt -> 'a1 -> 'a1) -> 'a1 -> St.t -> 'a2 -> (St.elt -> 'a1 -> __
        -> 'a2 -> 'a2) -> 'a2

      val fold_rec_weak :
        (St.elt -> 'a1 -> 'a1) -> 'a1 -> (St.t -> St.t -> 'a1 -> __ -> 'a2 ->
        'a2) -> 'a2 -> (St.elt -> 'a1 -> St.t -> __ -> 'a2 -> 'a2) -> St.t ->
        'a2

      val fold_rel :
        (St.elt -> 'a1 -> 'a1) -> (St.elt -> 'a2 -> 'a2) -> 'a1 -> 'a2 ->
        St.t -> 'a3 -> (St.elt -> 'a1 -> 'a2 -> __ -> 'a3 -> 'a3) -> 'a3

      val set_induction :
        (St.t -> __ -> 'a1) -> (St.t -> St.t -> 'a1 -> St.elt -> __ -> __ ->
        'a1) -> St.t -> 'a1

      val set_induction_bis :
        (St.t -> St.t -> __ -> 'a1 -> 'a1) -> 'a1 -> (St.elt -> St.t -> __ ->
        'a1 -> 'a1) -> St.t -> 'a1

      val cardinal_inv_2 : St.t -> nat -> St.elt

      val cardinal_inv_2b : St.t -> St.elt
     end

    val choose_mem_3 : St.t -> St.elt

    val set_rec :
      (St.t -> St.t -> __ -> 'a1 -> 'a1) -> (St.t -> St.elt -> __ -> 'a1 ->
      'a1) -> 'a1 -> St.t -> 'a1

    val for_all_mem_4 : (St.elt -> bool) -> St.t -> St.elt

    val exists_mem_4 : (St.elt -> bool) -> St.t -> St.elt

    val sum : (St.elt -> nat) -> St.t -> nat
   end

  module StD :
   sig
    module F :
     sig
      val eqb : Equality.sort -> Equality.sort -> bool
     end

    module MSetLogicalFacts :
     sig
     end

    module MSetDecideAuxiliary :
     sig
     end

    module MSetDecideTestCases :
     sig
     end
   end
 end

val funname_eqType : Equality.coq_type

module Mf :
 sig
  module K :
   sig
    val t : Equality.coq_type

    val cmp : Equality.sort -> Equality.sort -> comparison
   end

  type 'x t = 'x TFunName.Mt.t

  val empty : 'a1 t

  val is_empty : 'a1 t -> bool

  val get : 'a1 t -> Equality.sort -> 'a1 option

  val set : 'a1 t -> Equality.sort -> 'a1 -> 'a1 t

  val remove : 'a1 t -> Equality.sort -> 'a1 t

  val map : ('a1 -> 'a2) -> 'a1 t -> 'a2 t

  val mapi : (Equality.sort -> 'a1 -> 'a2) -> 'a1 t -> 'a2 t

  val map2 :
    (Equality.sort -> 'a1 option -> 'a2 option -> 'a3 option) -> 'a1 t -> 'a2
    t -> 'a3 t

  val filter_map : (Equality.sort -> 'a1 -> 'a2 option) -> 'a1 t -> 'a2 t

  val incl_def :
    (Equality.sort -> 'a1 -> bool) -> (Equality.sort -> 'a1 -> 'a2 -> bool)
    -> 'a1 t -> 'a2 t -> bool

  val incl : (Equality.sort -> 'a1 -> 'a2 -> bool) -> 'a1 t -> 'a2 t -> bool

  val all : (Equality.sort -> 'a1 -> bool) -> 'a1 t -> bool

  val has : (Equality.sort -> 'a1 -> bool) -> 'a1 t -> bool

  val elements : 'a1 t -> (Equality.sort * 'a1) list

  val fold : (Equality.sort -> 'a1 -> 'a2 -> 'a2) -> 'a1 t -> 'a2 -> 'a2

  val in_codom : Equality.coq_type -> Equality.sort -> Equality.sort t -> bool

  val is_emptyP : 'a1 t -> reflect

  val elementsP :
    Equality.coq_type -> (Equality.sort * Equality.sort) -> Equality.sort t
    -> reflect
 end

module Sf :
 sig
  module Ordered :
   sig
    type t = Equality.sort

    val compare : t -> t -> comparison

    val eq_dec : t -> t -> bool
   end

  module Raw :
   sig
    type elt = Equality.sort

    type tree = TFunName.St.Raw.tree =
    | Leaf
    | Node of Int.Z_as_Int.t * tree * Equality.sort * tree

    val empty : tree

    val is_empty : tree -> bool

    val mem : Equality.sort -> tree -> bool

    val min_elt : tree -> elt option

    val max_elt : tree -> elt option

    val choose : tree -> elt option

    val fold : (elt -> 'a1 -> 'a1) -> tree -> 'a1 -> 'a1

    val elements_aux : Equality.sort list -> tree -> Equality.sort list

    val elements : tree -> Equality.sort list

    val rev_elements_aux : Equality.sort list -> tree -> Equality.sort list

    val rev_elements : tree -> Equality.sort list

    val cardinal : tree -> nat

    val maxdepth : tree -> nat

    val mindepth : tree -> nat

    val for_all : (elt -> bool) -> tree -> bool

    val exists_ : (elt -> bool) -> tree -> bool

    type enumeration = TFunName.St.Raw.enumeration =
    | End
    | More of elt * tree * enumeration

    val cons : tree -> enumeration -> enumeration

    val compare_more :
      Equality.sort -> (enumeration -> comparison) -> enumeration ->
      comparison

    val compare_cont :
      tree -> (enumeration -> comparison) -> enumeration -> comparison

    val compare_end : enumeration -> comparison

    val compare : tree -> tree -> comparison

    val equal : tree -> tree -> bool

    val subsetl : (tree -> bool) -> Equality.sort -> tree -> bool

    val subsetr : (tree -> bool) -> Equality.sort -> tree -> bool

    val subset : tree -> tree -> bool

    type t = tree

    val height : t -> Int.Z_as_Int.t

    val singleton : Equality.sort -> tree

    val create : t -> Equality.sort -> t -> tree

    val assert_false : t -> Equality.sort -> t -> tree

    val bal : t -> Equality.sort -> t -> tree

    val add : Equality.sort -> tree -> tree

    val join : tree -> elt -> t -> t

    val remove_min : tree -> elt -> t -> t * elt

    val merge : tree -> tree -> tree

    val remove : Equality.sort -> tree -> tree

    val concat : tree -> tree -> tree

    type triple = TFunName.St.Raw.triple = { t_left : t; t_in : bool;
                                             t_right : t }

    val t_left : triple -> t

    val t_in : triple -> bool

    val t_right : triple -> t

    val split : Equality.sort -> tree -> triple

    val inter : tree -> tree -> tree

    val diff : tree -> tree -> tree

    val union : tree -> tree -> tree

    val filter : (elt -> bool) -> tree -> tree

    val partition : (elt -> bool) -> t -> t * t

    val ltb_tree : Equality.sort -> tree -> bool

    val gtb_tree : Equality.sort -> tree -> bool

    val isok : tree -> bool

    module MX :
     sig
      module OrderTac :
       sig
        module OTF :
         sig
          type t = Equality.sort

          val compare : Equality.sort -> Equality.sort -> comparison

          val eq_dec : Equality.sort -> Equality.sort -> bool
         end

        module TO :
         sig
          type t = Equality.sort

          val compare : Equality.sort -> Equality.sort -> comparison

          val eq_dec : Equality.sort -> Equality.sort -> bool
         end
       end

      val eq_dec : Equality.sort -> Equality.sort -> bool

      val lt_dec : Equality.sort -> Equality.sort -> bool

      val eqb : Equality.sort -> Equality.sort -> bool
     end

    module L :
     sig
      module MO :
       sig
        module OrderTac :
         sig
          module OTF :
           sig
            type t = Equality.sort

            val compare : Equality.sort -> Equality.sort -> comparison

            val eq_dec : Equality.sort -> Equality.sort -> bool
           end

          module TO :
           sig
            type t = Equality.sort

            val compare : Equality.sort -> Equality.sort -> comparison

            val eq_dec : Equality.sort -> Equality.sort -> bool
           end
         end

        val eq_dec : Equality.sort -> Equality.sort -> bool

        val lt_dec : Equality.sort -> Equality.sort -> bool

        val eqb : Equality.sort -> Equality.sort -> bool
       end
     end

    val flatten_e : enumeration -> elt list
   end

  module E :
   sig
    type t = Equality.sort

    val compare : Equality.sort -> Equality.sort -> comparison

    val eq_dec : Equality.sort -> Equality.sort -> bool
   end

  type elt = Equality.sort

  type t_ = Raw.t
    (* singleton inductive, whose constructor was Mkt *)

  val this : t_ -> Raw.t

  type t = t_

  val mem : elt -> t -> bool

  val add : elt -> t -> t

  val remove : elt -> t -> t

  val singleton : elt -> t

  val union : t -> t -> t

  val inter : t -> t -> t

  val diff : t -> t -> t

  val equal : t -> t -> bool

  val subset : t -> t -> bool

  val empty : t

  val is_empty : t -> bool

  val elements : t -> elt list

  val choose : t -> elt option

  val fold : (elt -> 'a1 -> 'a1) -> t -> 'a1 -> 'a1

  val cardinal : t -> nat

  val filter : (elt -> bool) -> t -> t

  val for_all : (elt -> bool) -> t -> bool

  val exists_ : (elt -> bool) -> t -> bool

  val partition : (elt -> bool) -> t -> t * t

  val eq_dec : t -> t -> bool

  val compare : t -> t -> comparison

  val min_elt : t -> elt option

  val max_elt : t -> elt option
 end

type funname = CoreIdent.funname

val get_fundef : (funname * 'a1) list -> funname -> 'a1 option

module MvMake :
 functor (I:Ident.IDENT) ->
 sig
  type var = { vtype : atype; vname : I.ident }

  val vtype : var -> atype

  val vname : var -> I.ident

  val var_beq : var -> var -> bool

  val var_eqP : var eq_axiom

  val coq_HB_unnamed_factory_1 : var Coq_hasDecEq.axioms_

  val coq_MvMake_var__canonical__eqtype_Equality : Equality.coq_type

  val var_cmp : var -> var -> comparison
 end

module Var :
 sig
  type var = { vtype : atype; vname : Ident.Ident.ident }

  val vtype : var -> atype

  val vname : var -> Ident.Ident.ident

  val var_beq : var -> var -> bool

  val var_eqP : var eq_axiom

  val coq_HB_unnamed_factory_1 : var Coq_hasDecEq.axioms_

  val coq_MvMake_var__canonical__eqtype_Equality : Equality.coq_type

  val var_cmp : var -> var -> comparison
 end

val is_glob_var : Var.var -> bool

val is_inline_var : Var.var -> bool

val is_var_in_memory : Var.var -> bool

val is_ptr : Var.var -> bool

val is_reg_ptr : Var.var -> bool

val is_regx : Var.var -> bool

val is_reg_array : Var.var -> bool

module CmpVar :
 sig
  val t : Equality.coq_type

  val cmp : Equality.sort -> Equality.sort -> comparison
 end

module SExtra :
 functor (T:CmpType) ->
 sig
  module Sv :
   sig
    module Ordered :
     sig
      type t = Equality.sort

      val compare : t -> t -> comparison

      val eq_dec : t -> t -> bool
     end

    module Raw :
     sig
      type elt = Equality.sort

      type tree =
      | Leaf
      | Node of Int.Z_as_Int.t * tree * Equality.sort * tree

      val empty : tree

      val is_empty : tree -> bool

      val mem : Equality.sort -> tree -> bool

      val min_elt : tree -> elt option

      val max_elt : tree -> elt option

      val choose : tree -> elt option

      val fold : (elt -> 'a1 -> 'a1) -> tree -> 'a1 -> 'a1

      val elements_aux : Equality.sort list -> tree -> Equality.sort list

      val elements : tree -> Equality.sort list

      val rev_elements_aux : Equality.sort list -> tree -> Equality.sort list

      val rev_elements : tree -> Equality.sort list

      val cardinal : tree -> nat

      val maxdepth : tree -> nat

      val mindepth : tree -> nat

      val for_all : (elt -> bool) -> tree -> bool

      val exists_ : (elt -> bool) -> tree -> bool

      type enumeration =
      | End
      | More of elt * tree * enumeration

      val cons : tree -> enumeration -> enumeration

      val compare_more :
        Equality.sort -> (enumeration -> comparison) -> enumeration ->
        comparison

      val compare_cont :
        tree -> (enumeration -> comparison) -> enumeration -> comparison

      val compare_end : enumeration -> comparison

      val compare : tree -> tree -> comparison

      val equal : tree -> tree -> bool

      val subsetl : (tree -> bool) -> Equality.sort -> tree -> bool

      val subsetr : (tree -> bool) -> Equality.sort -> tree -> bool

      val subset : tree -> tree -> bool

      type t = tree

      val height : t -> Int.Z_as_Int.t

      val singleton : Equality.sort -> tree

      val create : t -> Equality.sort -> t -> tree

      val assert_false : t -> Equality.sort -> t -> tree

      val bal : t -> Equality.sort -> t -> tree

      val add : Equality.sort -> tree -> tree

      val join : tree -> elt -> t -> t

      val remove_min : tree -> elt -> t -> t * elt

      val merge : tree -> tree -> tree

      val remove : Equality.sort -> tree -> tree

      val concat : tree -> tree -> tree

      type triple = { t_left : t; t_in : bool; t_right : t }

      val t_left : triple -> t

      val t_in : triple -> bool

      val t_right : triple -> t

      val split : Equality.sort -> tree -> triple

      val inter : tree -> tree -> tree

      val diff : tree -> tree -> tree

      val union : tree -> tree -> tree

      val filter : (elt -> bool) -> tree -> tree

      val partition : (elt -> bool) -> t -> t * t

      val ltb_tree : Equality.sort -> tree -> bool

      val gtb_tree : Equality.sort -> tree -> bool

      val isok : tree -> bool

      module MX :
       sig
        module OrderTac :
         sig
          module OTF :
           sig
            type t = Equality.sort

            val compare : Equality.sort -> Equality.sort -> comparison

            val eq_dec : Equality.sort -> Equality.sort -> bool
           end

          module TO :
           sig
            type t = Equality.sort

            val compare : Equality.sort -> Equality.sort -> comparison

            val eq_dec : Equality.sort -> Equality.sort -> bool
           end
         end

        val eq_dec : Equality.sort -> Equality.sort -> bool

        val lt_dec : Equality.sort -> Equality.sort -> bool

        val eqb : Equality.sort -> Equality.sort -> bool
       end

      module L :
       sig
        module MO :
         sig
          module OrderTac :
           sig
            module OTF :
             sig
              type t = Equality.sort

              val compare : Equality.sort -> Equality.sort -> comparison

              val eq_dec : Equality.sort -> Equality.sort -> bool
             end

            module TO :
             sig
              type t = Equality.sort

              val compare : Equality.sort -> Equality.sort -> comparison

              val eq_dec : Equality.sort -> Equality.sort -> bool
             end
           end

          val eq_dec : Equality.sort -> Equality.sort -> bool

          val lt_dec : Equality.sort -> Equality.sort -> bool

          val eqb : Equality.sort -> Equality.sort -> bool
         end
       end

      val flatten_e : enumeration -> elt list
     end

    module E :
     sig
      type t = Equality.sort

      val compare : Equality.sort -> Equality.sort -> comparison

      val eq_dec : Equality.sort -> Equality.sort -> bool
     end

    type elt = Equality.sort

    type t_ = Raw.t
      (* singleton inductive, whose constructor was Mkt *)

    val this : t_ -> Raw.t

    type t = t_

    val mem : elt -> t -> bool

    val add : elt -> t -> t

    val remove : elt -> t -> t

    val singleton : elt -> t

    val union : t -> t -> t

    val inter : t -> t -> t

    val diff : t -> t -> t

    val equal : t -> t -> bool

    val subset : t -> t -> bool

    val empty : t

    val is_empty : t -> bool

    val elements : t -> elt list

    val choose : t -> elt option

    val fold : (elt -> 'a1 -> 'a1) -> t -> 'a1 -> 'a1

    val cardinal : t -> nat

    val filter : (elt -> bool) -> t -> t

    val for_all : (elt -> bool) -> t -> bool

    val exists_ : (elt -> bool) -> t -> bool

    val partition : (elt -> bool) -> t -> t * t

    val eq_dec : t -> t -> bool

    val compare : t -> t -> comparison

    val min_elt : t -> elt option

    val max_elt : t -> elt option
   end

  module SvP :
   sig
    module MP :
     sig
      module Dec :
       sig
        module F :
         sig
          val eqb : Equality.sort -> Equality.sort -> bool
         end

        module MSetLogicalFacts :
         sig
         end

        module MSetDecideAuxiliary :
         sig
         end

        module MSetDecideTestCases :
         sig
         end
       end

      module FM :
       sig
        val eqb : Equality.sort -> Equality.sort -> bool
       end

      val coq_In_dec : Sv.elt -> Sv.t -> bool

      val of_list : Sv.elt list -> Sv.t

      val to_list : Sv.t -> Sv.elt list

      val fold_rec :
        (Sv.elt -> 'a1 -> 'a1) -> 'a1 -> Sv.t -> (Sv.t -> __ -> 'a2) ->
        (Sv.elt -> 'a1 -> Sv.t -> Sv.t -> __ -> __ -> __ -> 'a2 -> 'a2) -> 'a2

      val fold_rec_bis :
        (Sv.elt -> 'a1 -> 'a1) -> 'a1 -> Sv.t -> (Sv.t -> Sv.t -> 'a1 -> __
        -> 'a2 -> 'a2) -> 'a2 -> (Sv.elt -> 'a1 -> Sv.t -> __ -> __ -> 'a2 ->
        'a2) -> 'a2

      val fold_rec_nodep :
        (Sv.elt -> 'a1 -> 'a1) -> 'a1 -> Sv.t -> 'a2 -> (Sv.elt -> 'a1 -> __
        -> 'a2 -> 'a2) -> 'a2

      val fold_rec_weak :
        (Sv.elt -> 'a1 -> 'a1) -> 'a1 -> (Sv.t -> Sv.t -> 'a1 -> __ -> 'a2 ->
        'a2) -> 'a2 -> (Sv.elt -> 'a1 -> Sv.t -> __ -> 'a2 -> 'a2) -> Sv.t ->
        'a2

      val fold_rel :
        (Sv.elt -> 'a1 -> 'a1) -> (Sv.elt -> 'a2 -> 'a2) -> 'a1 -> 'a2 ->
        Sv.t -> 'a3 -> (Sv.elt -> 'a1 -> 'a2 -> __ -> 'a3 -> 'a3) -> 'a3

      val set_induction :
        (Sv.t -> __ -> 'a1) -> (Sv.t -> Sv.t -> 'a1 -> Sv.elt -> __ -> __ ->
        'a1) -> Sv.t -> 'a1

      val set_induction_bis :
        (Sv.t -> Sv.t -> __ -> 'a1 -> 'a1) -> 'a1 -> (Sv.elt -> Sv.t -> __ ->
        'a1 -> 'a1) -> Sv.t -> 'a1

      val cardinal_inv_2 : Sv.t -> nat -> Sv.elt

      val cardinal_inv_2b : Sv.t -> Sv.elt
     end

    val choose_mem_3 : Sv.t -> Sv.elt

    val set_rec :
      (Sv.t -> Sv.t -> __ -> 'a1 -> 'a1) -> (Sv.t -> Sv.elt -> __ -> 'a1 ->
      'a1) -> 'a1 -> Sv.t -> 'a1

    val for_all_mem_4 : (Sv.elt -> bool) -> Sv.t -> Sv.elt

    val exists_mem_4 : (Sv.elt -> bool) -> Sv.t -> Sv.elt

    val sum : (Sv.elt -> nat) -> Sv.t -> nat
   end

  module SvD :
   sig
    module F :
     sig
      val eqb : Equality.sort -> Equality.sort -> bool
     end

    module MSetLogicalFacts :
     sig
     end

    module MSetDecideAuxiliary :
     sig
     end

    module MSetDecideTestCases :
     sig
     end
   end

  val coq_Sv_memP : Sv.elt -> Sv.t -> reflect

  val coq_Sv_elemsP : Sv.elt -> Sv.t -> reflect

  val disjoint : Sv.t -> Sv.t -> bool

  val disjointP : Sv.t -> Sv.t -> reflect

  val sv_of_option : Sv.elt option -> Sv.t

  val sv_of_list : ('a1 -> Sv.elt) -> 'a1 list -> Sv.t

  val sv_of_listP : ('a1 -> Sv.elt) -> Sv.elt -> 'a1 list -> reflect
 end

module SvExtra :
 sig
  module Sv :
   sig
    module Ordered :
     sig
      type t = Equality.sort

      val compare : t -> t -> comparison

      val eq_dec : t -> t -> bool
     end

    module Raw :
     sig
      type elt = Equality.sort

      type tree =
      | Leaf
      | Node of Int.Z_as_Int.t * tree * Equality.sort * tree

      val empty : tree

      val is_empty : tree -> bool

      val mem : Equality.sort -> tree -> bool

      val min_elt : tree -> elt option

      val max_elt : tree -> elt option

      val choose : tree -> elt option

      val fold : (elt -> 'a1 -> 'a1) -> tree -> 'a1 -> 'a1

      val elements_aux : Equality.sort list -> tree -> Equality.sort list

      val elements : tree -> Equality.sort list

      val rev_elements_aux : Equality.sort list -> tree -> Equality.sort list

      val rev_elements : tree -> Equality.sort list

      val cardinal : tree -> nat

      val maxdepth : tree -> nat

      val mindepth : tree -> nat

      val for_all : (elt -> bool) -> tree -> bool

      val exists_ : (elt -> bool) -> tree -> bool

      type enumeration =
      | End
      | More of elt * tree * enumeration

      val cons : tree -> enumeration -> enumeration

      val compare_more :
        Equality.sort -> (enumeration -> comparison) -> enumeration ->
        comparison

      val compare_cont :
        tree -> (enumeration -> comparison) -> enumeration -> comparison

      val compare_end : enumeration -> comparison

      val compare : tree -> tree -> comparison

      val equal : tree -> tree -> bool

      val subsetl : (tree -> bool) -> Equality.sort -> tree -> bool

      val subsetr : (tree -> bool) -> Equality.sort -> tree -> bool

      val subset : tree -> tree -> bool

      type t = tree

      val height : t -> Int.Z_as_Int.t

      val singleton : Equality.sort -> tree

      val create : t -> Equality.sort -> t -> tree

      val assert_false : t -> Equality.sort -> t -> tree

      val bal : t -> Equality.sort -> t -> tree

      val add : Equality.sort -> tree -> tree

      val join : tree -> elt -> t -> t

      val remove_min : tree -> elt -> t -> t * elt

      val merge : tree -> tree -> tree

      val remove : Equality.sort -> tree -> tree

      val concat : tree -> tree -> tree

      type triple = { t_left : t; t_in : bool; t_right : t }

      val t_left : triple -> t

      val t_in : triple -> bool

      val t_right : triple -> t

      val split : Equality.sort -> tree -> triple

      val inter : tree -> tree -> tree

      val diff : tree -> tree -> tree

      val union : tree -> tree -> tree

      val filter : (elt -> bool) -> tree -> tree

      val partition : (elt -> bool) -> t -> t * t

      val ltb_tree : Equality.sort -> tree -> bool

      val gtb_tree : Equality.sort -> tree -> bool

      val isok : tree -> bool

      module MX :
       sig
        module OrderTac :
         sig
          module OTF :
           sig
            type t = Equality.sort

            val compare : Equality.sort -> Equality.sort -> comparison

            val eq_dec : Equality.sort -> Equality.sort -> bool
           end

          module TO :
           sig
            type t = Equality.sort

            val compare : Equality.sort -> Equality.sort -> comparison

            val eq_dec : Equality.sort -> Equality.sort -> bool
           end
         end

        val eq_dec : Equality.sort -> Equality.sort -> bool

        val lt_dec : Equality.sort -> Equality.sort -> bool

        val eqb : Equality.sort -> Equality.sort -> bool
       end

      module L :
       sig
        module MO :
         sig
          module OrderTac :
           sig
            module OTF :
             sig
              type t = Equality.sort

              val compare : Equality.sort -> Equality.sort -> comparison

              val eq_dec : Equality.sort -> Equality.sort -> bool
             end

            module TO :
             sig
              type t = Equality.sort

              val compare : Equality.sort -> Equality.sort -> comparison

              val eq_dec : Equality.sort -> Equality.sort -> bool
             end
           end

          val eq_dec : Equality.sort -> Equality.sort -> bool

          val lt_dec : Equality.sort -> Equality.sort -> bool

          val eqb : Equality.sort -> Equality.sort -> bool
         end
       end

      val flatten_e : enumeration -> elt list
     end

    module E :
     sig
      type t = Equality.sort

      val compare : Equality.sort -> Equality.sort -> comparison

      val eq_dec : Equality.sort -> Equality.sort -> bool
     end

    type elt = Equality.sort

    type t_ = Raw.t
      (* singleton inductive, whose constructor was Mkt *)

    val this : t_ -> Raw.t

    type t = t_

    val mem : elt -> t -> bool

    val add : elt -> t -> t

    val remove : elt -> t -> t

    val singleton : elt -> t

    val union : t -> t -> t

    val inter : t -> t -> t

    val diff : t -> t -> t

    val equal : t -> t -> bool

    val subset : t -> t -> bool

    val empty : t

    val is_empty : t -> bool

    val elements : t -> elt list

    val choose : t -> elt option

    val fold : (elt -> 'a1 -> 'a1) -> t -> 'a1 -> 'a1

    val cardinal : t -> nat

    val filter : (elt -> bool) -> t -> t

    val for_all : (elt -> bool) -> t -> bool

    val exists_ : (elt -> bool) -> t -> bool

    val partition : (elt -> bool) -> t -> t * t

    val eq_dec : t -> t -> bool

    val compare : t -> t -> comparison

    val min_elt : t -> elt option

    val max_elt : t -> elt option
   end

  module SvP :
   sig
    module MP :
     sig
      module Dec :
       sig
        module F :
         sig
          val eqb : Equality.sort -> Equality.sort -> bool
         end

        module MSetLogicalFacts :
         sig
         end

        module MSetDecideAuxiliary :
         sig
         end

        module MSetDecideTestCases :
         sig
         end
       end

      module FM :
       sig
        val eqb : Equality.sort -> Equality.sort -> bool
       end

      val coq_In_dec : Sv.elt -> Sv.t -> bool

      val of_list : Sv.elt list -> Sv.t

      val to_list : Sv.t -> Sv.elt list

      val fold_rec :
        (Sv.elt -> 'a1 -> 'a1) -> 'a1 -> Sv.t -> (Sv.t -> __ -> 'a2) ->
        (Sv.elt -> 'a1 -> Sv.t -> Sv.t -> __ -> __ -> __ -> 'a2 -> 'a2) -> 'a2

      val fold_rec_bis :
        (Sv.elt -> 'a1 -> 'a1) -> 'a1 -> Sv.t -> (Sv.t -> Sv.t -> 'a1 -> __
        -> 'a2 -> 'a2) -> 'a2 -> (Sv.elt -> 'a1 -> Sv.t -> __ -> __ -> 'a2 ->
        'a2) -> 'a2

      val fold_rec_nodep :
        (Sv.elt -> 'a1 -> 'a1) -> 'a1 -> Sv.t -> 'a2 -> (Sv.elt -> 'a1 -> __
        -> 'a2 -> 'a2) -> 'a2

      val fold_rec_weak :
        (Sv.elt -> 'a1 -> 'a1) -> 'a1 -> (Sv.t -> Sv.t -> 'a1 -> __ -> 'a2 ->
        'a2) -> 'a2 -> (Sv.elt -> 'a1 -> Sv.t -> __ -> 'a2 -> 'a2) -> Sv.t ->
        'a2

      val fold_rel :
        (Sv.elt -> 'a1 -> 'a1) -> (Sv.elt -> 'a2 -> 'a2) -> 'a1 -> 'a2 ->
        Sv.t -> 'a3 -> (Sv.elt -> 'a1 -> 'a2 -> __ -> 'a3 -> 'a3) -> 'a3

      val set_induction :
        (Sv.t -> __ -> 'a1) -> (Sv.t -> Sv.t -> 'a1 -> Sv.elt -> __ -> __ ->
        'a1) -> Sv.t -> 'a1

      val set_induction_bis :
        (Sv.t -> Sv.t -> __ -> 'a1 -> 'a1) -> 'a1 -> (Sv.elt -> Sv.t -> __ ->
        'a1 -> 'a1) -> Sv.t -> 'a1

      val cardinal_inv_2 : Sv.t -> nat -> Sv.elt

      val cardinal_inv_2b : Sv.t -> Sv.elt
     end

    val choose_mem_3 : Sv.t -> Sv.elt

    val set_rec :
      (Sv.t -> Sv.t -> __ -> 'a1 -> 'a1) -> (Sv.t -> Sv.elt -> __ -> 'a1 ->
      'a1) -> 'a1 -> Sv.t -> 'a1

    val for_all_mem_4 : (Sv.elt -> bool) -> Sv.t -> Sv.elt

    val exists_mem_4 : (Sv.elt -> bool) -> Sv.t -> Sv.elt

    val sum : (Sv.elt -> nat) -> Sv.t -> nat
   end

  module SvD :
   sig
    module F :
     sig
      val eqb : Equality.sort -> Equality.sort -> bool
     end

    module MSetLogicalFacts :
     sig
     end

    module MSetDecideAuxiliary :
     sig
     end

    module MSetDecideTestCases :
     sig
     end
   end

  val coq_Sv_memP : Sv.elt -> Sv.t -> reflect

  val coq_Sv_elemsP : Sv.elt -> Sv.t -> reflect

  val disjoint : Sv.t -> Sv.t -> bool

  val disjointP : Sv.t -> Sv.t -> reflect

  val sv_of_option : Sv.elt option -> Sv.t

  val sv_of_list : ('a1 -> Sv.elt) -> 'a1 list -> Sv.t

  val sv_of_listP : ('a1 -> Sv.elt) -> Sv.elt -> 'a1 list -> reflect
 end

module Mvar :
 sig
  module K :
   sig
    val t : Equality.coq_type

    val cmp : Equality.sort -> Equality.sort -> comparison
   end

  module Ordered :
   sig
    type t = Equality.sort

    val compare :
      Equality.sort -> Equality.sort -> Equality.sort OrderedType.coq_Compare

    val eq_dec : Equality.sort -> Equality.sort -> bool
   end

  module Map :
   sig
    module E :
     sig
      type t = Equality.sort

      val compare :
        Equality.sort -> Equality.sort -> Equality.sort
        OrderedType.coq_Compare

      val eq_dec : Equality.sort -> Equality.sort -> bool
     end

    module Raw :
     sig
      type key = Equality.sort

      type 'elt tree =
      | Leaf
      | Node of 'elt tree * key * 'elt * 'elt tree * Int.Z_as_Int.t

      val tree_rect :
        'a2 -> ('a1 tree -> 'a2 -> key -> 'a1 -> 'a1 tree -> 'a2 ->
        Int.Z_as_Int.t -> 'a2) -> 'a1 tree -> 'a2

      val tree_rec :
        'a2 -> ('a1 tree -> 'a2 -> key -> 'a1 -> 'a1 tree -> 'a2 ->
        Int.Z_as_Int.t -> 'a2) -> 'a1 tree -> 'a2

      val height : 'a1 tree -> Int.Z_as_Int.t

      val cardinal : 'a1 tree -> nat

      val empty : 'a1 tree

      val is_empty : 'a1 tree -> bool

      val mem : Equality.sort -> 'a1 tree -> bool

      val find : Equality.sort -> 'a1 tree -> 'a1 option

      val create : 'a1 tree -> key -> 'a1 -> 'a1 tree -> 'a1 tree

      val assert_false : 'a1 tree -> key -> 'a1 -> 'a1 tree -> 'a1 tree

      val bal : 'a1 tree -> key -> 'a1 -> 'a1 tree -> 'a1 tree

      val add : key -> 'a1 -> 'a1 tree -> 'a1 tree

      val remove_min :
        'a1 tree -> key -> 'a1 -> 'a1 tree -> 'a1 tree * (key * 'a1)

      val merge : 'a1 tree -> 'a1 tree -> 'a1 tree

      val remove : Equality.sort -> 'a1 tree -> 'a1 tree

      val join : 'a1 tree -> key -> 'a1 -> 'a1 tree -> 'a1 tree

      type 'elt triple = { t_left : 'elt tree; t_opt : 'elt option;
                           t_right : 'elt tree }

      val t_left : 'a1 triple -> 'a1 tree

      val t_opt : 'a1 triple -> 'a1 option

      val t_right : 'a1 triple -> 'a1 tree

      val split : Equality.sort -> 'a1 tree -> 'a1 triple

      val concat : 'a1 tree -> 'a1 tree -> 'a1 tree

      val elements_aux : (key * 'a1) list -> 'a1 tree -> (key * 'a1) list

      val elements : 'a1 tree -> (key * 'a1) list

      val fold : (key -> 'a1 -> 'a2 -> 'a2) -> 'a1 tree -> 'a2 -> 'a2

      type 'elt enumeration =
      | End
      | More of key * 'elt * 'elt tree * 'elt enumeration

      val enumeration_rect :
        'a2 -> (key -> 'a1 -> 'a1 tree -> 'a1 enumeration -> 'a2 -> 'a2) ->
        'a1 enumeration -> 'a2

      val enumeration_rec :
        'a2 -> (key -> 'a1 -> 'a1 tree -> 'a1 enumeration -> 'a2 -> 'a2) ->
        'a1 enumeration -> 'a2

      val cons : 'a1 tree -> 'a1 enumeration -> 'a1 enumeration

      val equal_more :
        ('a1 -> 'a1 -> bool) -> Equality.sort -> 'a1 -> ('a1 enumeration ->
        bool) -> 'a1 enumeration -> bool

      val equal_cont :
        ('a1 -> 'a1 -> bool) -> 'a1 tree -> ('a1 enumeration -> bool) -> 'a1
        enumeration -> bool

      val equal_end : 'a1 enumeration -> bool

      val equal : ('a1 -> 'a1 -> bool) -> 'a1 tree -> 'a1 tree -> bool

      val map : ('a1 -> 'a2) -> 'a1 tree -> 'a2 tree

      val mapi : (key -> 'a1 -> 'a2) -> 'a1 tree -> 'a2 tree

      val map_option : (key -> 'a1 -> 'a2 option) -> 'a1 tree -> 'a2 tree

      val map2_opt :
        (key -> 'a1 -> 'a2 option -> 'a3 option) -> ('a1 tree -> 'a3 tree) ->
        ('a2 tree -> 'a3 tree) -> 'a1 tree -> 'a2 tree -> 'a3 tree

      val map2 :
        ('a1 option -> 'a2 option -> 'a3 option) -> 'a1 tree -> 'a2 tree ->
        'a3 tree

      module Proofs :
       sig
        module MX :
         sig
          module TO :
           sig
            type t = Equality.sort
           end

          module IsTO :
           sig
           end

          module OrderTac :
           sig
           end

          val eq_dec : Equality.sort -> Equality.sort -> bool

          val lt_dec : Equality.sort -> Equality.sort -> bool

          val eqb : Equality.sort -> Equality.sort -> bool
         end

        module PX :
         sig
          module MO :
           sig
            module TO :
             sig
              type t = Equality.sort
             end

            module IsTO :
             sig
             end

            module OrderTac :
             sig
             end

            val eq_dec : Equality.sort -> Equality.sort -> bool

            val lt_dec : Equality.sort -> Equality.sort -> bool

            val eqb : Equality.sort -> Equality.sort -> bool
           end
         end

        module L :
         sig
          module MX :
           sig
            module TO :
             sig
              type t = Equality.sort
             end

            module IsTO :
             sig
             end

            module OrderTac :
             sig
             end

            val eq_dec : Equality.sort -> Equality.sort -> bool

            val lt_dec : Equality.sort -> Equality.sort -> bool

            val eqb : Equality.sort -> Equality.sort -> bool
           end

          module PX :
           sig
            module MO :
             sig
              module TO :
               sig
                type t = Equality.sort
               end

              module IsTO :
               sig
               end

              module OrderTac :
               sig
               end

              val eq_dec : Equality.sort -> Equality.sort -> bool

              val lt_dec : Equality.sort -> Equality.sort -> bool

              val eqb : Equality.sort -> Equality.sort -> bool
             end
           end

          type key = Equality.sort

          type 'elt t = (Equality.sort * 'elt) list

          val empty : 'a1 t

          val is_empty : 'a1 t -> bool

          val mem : key -> 'a1 t -> bool

          val find : key -> 'a1 t -> 'a1 option

          val add : key -> 'a1 -> 'a1 t -> 'a1 t

          val remove : key -> 'a1 t -> 'a1 t

          val elements : 'a1 t -> 'a1 t

          val fold : (key -> 'a1 -> 'a2 -> 'a2) -> 'a1 t -> 'a2 -> 'a2

          val equal : ('a1 -> 'a1 -> bool) -> 'a1 t -> 'a1 t -> bool

          val map : ('a1 -> 'a2) -> 'a1 t -> 'a2 t

          val mapi : (key -> 'a1 -> 'a2) -> 'a1 t -> 'a2 t

          val option_cons :
            key -> 'a1 option -> (key * 'a1) list -> (key * 'a1) list

          val map2_l :
            ('a1 option -> 'a2 option -> 'a3 option) -> 'a1 t -> 'a3 t

          val map2_r :
            ('a1 option -> 'a2 option -> 'a3 option) -> 'a2 t -> 'a3 t

          val map2 :
            ('a1 option -> 'a2 option -> 'a3 option) -> 'a1 t -> 'a2 t -> 'a3
            t

          val combine : 'a1 t -> 'a2 t -> ('a1 option * 'a2 option) t

          val fold_right_pair :
            ('a1 -> 'a2 -> 'a3 -> 'a3) -> ('a1 * 'a2) list -> 'a3 -> 'a3

          val map2_alt :
            ('a1 option -> 'a2 option -> 'a3 option) -> 'a1 t -> 'a2 t ->
            (key * 'a3) list

          val at_least_one :
            'a1 option -> 'a2 option -> ('a1 option * 'a2 option) option

          val at_least_one_then_f :
            ('a1 option -> 'a2 option -> 'a3 option) -> 'a1 option -> 'a2
            option -> 'a3 option
         end

        val fold' : (key -> 'a1 -> 'a2 -> 'a2) -> 'a1 tree -> 'a2 -> 'a2

        val flatten_e : 'a1 enumeration -> (key * 'a1) list
       end
     end

    type 'elt bst =
      'elt Raw.tree
      (* singleton inductive, whose constructor was Bst *)

    val this : 'a1 bst -> 'a1 Raw.tree

    type 'elt t = 'elt bst

    type key = Equality.sort

    val empty : 'a1 t

    val is_empty : 'a1 t -> bool

    val add : key -> 'a1 -> 'a1 t -> 'a1 t

    val remove : key -> 'a1 t -> 'a1 t

    val mem : key -> 'a1 t -> bool

    val find : key -> 'a1 t -> 'a1 option

    val map : ('a1 -> 'a2) -> 'a1 t -> 'a2 t

    val mapi : (key -> 'a1 -> 'a2) -> 'a1 t -> 'a2 t

    val map2 :
      ('a1 option -> 'a2 option -> 'a3 option) -> 'a1 t -> 'a2 t -> 'a3 t

    val elements : 'a1 t -> (key * 'a1) list

    val cardinal : 'a1 t -> nat

    val fold : (key -> 'a1 -> 'a2 -> 'a2) -> 'a1 t -> 'a2 -> 'a2

    val equal : ('a1 -> 'a1 -> bool) -> 'a1 t -> 'a1 t -> bool
   end

  module Facts :
   sig
    val eqb : Equality.sort -> Equality.sort -> bool

    val coq_In_dec : 'a1 Map.t -> Map.key -> bool
   end

  type 't t = 't Map.t

  val empty : 'a1 t

  val is_empty : 'a1 t -> bool

  val get : 'a1 t -> Equality.sort -> 'a1 option

  val set : 'a1 t -> Equality.sort -> 'a1 -> 'a1 Map.t

  val remove : 'a1 t -> Equality.sort -> 'a1 Map.t

  val map : ('a1 -> 'a2) -> 'a1 Map.t -> 'a2 Map.t

  val mapi : (Map.key -> 'a1 -> 'a2) -> 'a1 Map.t -> 'a2 Map.t

  val raw_map2 :
    (Equality.sort -> 'a1 option -> 'a2 option -> 'a3 option) -> 'a1
    Map.Raw.tree -> 'a2 Map.Raw.tree -> 'a3 Map.Raw.tree

  val elements : 'a1 Map.t -> (Map.key * 'a1) list

  val fold : (Map.key -> 'a1 -> 'a2 -> 'a2) -> 'a1 Map.t -> 'a2 -> 'a2

  val all_t : (Equality.sort -> 'a1 -> bool) -> 'a1 Map.Raw.tree -> bool

  val has_t : (Equality.sort -> 'a1 -> bool) -> 'a1 Map.Raw.tree -> bool

  val incl_t :
    (Equality.sort -> 'a1 -> bool) -> (Equality.sort -> 'a1 -> 'a2 -> bool)
    -> 'a1 Map.Raw.tree -> 'a2 Map.Raw.tree -> bool

  val all : (Equality.sort -> 'a1 -> bool) -> 'a1 t -> bool

  val has : (Equality.sort -> 'a1 -> bool) -> 'a1 t -> bool

  val incl_def :
    (Equality.sort -> 'a1 -> bool) -> (Equality.sort -> 'a1 -> 'a2 -> bool)
    -> 'a1 Map.bst -> 'a2 Map.bst -> bool

  val incl :
    (Equality.sort -> 'a1 -> 'a2 -> bool) -> 'a1 Map.bst -> 'a2 Map.bst ->
    bool

  val in_codom : Equality.coq_type -> Equality.sort -> Equality.sort t -> bool

  val map2 :
    (Equality.sort -> 'a1 option -> 'a2 option -> 'a3 option) -> 'a1 t -> 'a2
    t -> 'a3 t

  val filter_map : (Equality.sort -> 'a1 -> 'a2 option) -> 'a1 t -> 'a2 t

  val is_emptyP : 'a1 t -> reflect

  val elementsP :
    Equality.coq_type -> (Equality.sort * Equality.sort) -> Equality.sort t
    -> reflect
 end
