require import AllCore List IntDiv BitEncoding StdOrder.
(*---*) import BitEncoding.BS2Int BitChunking.

(* Local libs *)
from Spec require import Types Params AuxiliaryFunctions K.
import K.

import Types.Commitment Types.RoundCommitments Types.AllCommitments.
import Types.RoundSeeds Types.Seed Types.Path.
import Types.Salt.

(* External libs *)
from Jasmin require import JWord.

from CryptoSpecs require import Keccak1600_Spec.

from Extraction require import Commitx4.
from Extraction require import  Array321792 Array311736 Array192 Array101 Array96 Array48
                                Array32 Array24 Array8 Array5 Array2.
from Extraction require import WArray32 WArray24 WArray8 WArray2.

from JazzEC require import Commitx4 Array100.

(****************************************************************************)
(*  Links between PICNIC3's commit_x4 keccak and formosa-keccak extractions *)
(****************************************************************************)


(*from Keccak require import Keccak1600_avx2.

from Keccak require import Keccakf1600_avx2.
*)
(*from Keccak require import Keccakf1600_avx2x4.*)
from Keccak require import Keccak1600_updstate_avx2x4.

(****************************************************************************)
(*  Prove commit_x4 with formosa-keccak procedures is the functional shake  *)
(****************************************************************************)

op round2List (x: int): W8.t list = val x.
op player2List (x: int): W8.t list = val x.

op com (seed: W8.t list) (salt: W8.t list) (round player: int): com_t = 
let r = round2List round in
let p = player2List player in
insubd (SHAKE256 (seed ++ salt ++ r ++ p) 48).

op compose_commitments (l: W8.t list): W8.t list list =
map (fun i => take size_com (drop (i*size_com) l)) (range 0 (rounds * players)).

op commitment (l: W8.t list) (i: int): com_t =
  insubd (take size_com (drop (i*size_com) l)).

op commitments (l: W8.t list): com_t list =
map (fun i => commitment l i) (range 0 4).

op inj_seeds (l: W8.t list): seed_t list =
map (fun i => inj_seed (take size_seed (drop (i*size_seed) l))) (range 0 4).

op inp (s1: W8.t list) (s2: W8.t list) (round player i j: int) =
let s = take size_seed (drop (size_seed * i) s1) in
let r = val round in
let p = val (player+i) in
if j = 0 then [] else
  if j = 1 then s else
    if j = 2 then s ++ s2 else
      if j = 3 then s ++ s2 ++ r else s ++ s2 ++ r ++ p.

op state_spec seeds salt round player (i: int) =
(st4x_pack
  ( addstate (stateabsorb_iblocks (chunk 136
               (inp seeds salt round player 0 i)) st0) 
             (bytes2state (chunkremains 136
               (inp seeds salt round player 0 i))),
    addstate (stateabsorb_iblocks (chunk 136 
               (inp seeds salt round player 1 i)) st0) 
             (bytes2state (chunkremains 136
               (inp seeds salt round player 1 i))),
    addstate (stateabsorb_iblocks (chunk 136 
               (inp seeds salt round player 2 i)) st0) 
             (bytes2state (chunkremains 136
               (inp seeds salt round player 2 i))),
    addstate (stateabsorb_iblocks (chunk 136
               (inp seeds salt round player 3 i)) st0) 
             (bytes2state (chunkremains 136
               (inp seeds salt round player 3 i))))).


lemma seeds_eq (seeds: W8.t Array96.t):
forall x, 
  0 <= x => 
  Array24.init (fun (i : int) => seeds.[x + i]) =
  Array24.of_list witness (take size_seed (drop x (to_list seeds))).  
proof.
 move => x x_bnd.
 rewrite eq_sym  (Array24.ext_eq _ 
                    (Array24.init (fun i => seeds.[x+i]))) 2:/#.
 by move => x0 x0_bnd; rewrite !initiE ..2:/# /= nth_take ..2:/#;
 rewrite nth_drop ..2:/# get_to_list /#.
qed.

lemma remove_init_48: 
forall x l, 
  0<= x <= 48 => 
  take x (to_list (Array192.init ("_.[_]" (Array48.of_list W8.zero (l))))) = 
  take x (to_list (Array48.of_list zero (l))).
proof.
  move => x4 l x4_bnd.
  rewrite (eq_from_nth witness (take x4 (to_list (Array192.init ("_.[_]" (Array48.of_list W8.zero l))))) (take x4 (to_list (Array48.of_list W8.zero l)))).
  + rewrite !size_take ..2:/# !size_to_list /#.
  + rewrite size_take 1:/# size_to_list ifT 1:/# => i0 i0_bnd.
    rewrite !nth_take ..4:/# !get_to_list !initiE /#.
  smt().
qed.

lemma aux:
forall w i,
  W16.to_uint w <= 12 =>
  0 <= i < 4 =>
  bs2int (w2bits w) + i = 
  bs2int (w2bits (w + W16.of_int i)).
proof.
move => w i w_bnd i_bnd.
have aux: w2bits(w + W16.of_int i) = 
          int2bs 16 (W16.to_uint w + i).
have aux: forall x, 
  0 <= to_uint x < 16 => 
  W16.w2bits x = int2bs 16 (W16.to_uint x).
move => x x_bnd.
rewrite (eq_from_nth false (w2bits x) (int2bs 16 (to_uint x))).
+ rewrite size_w2bits size_int2bs /#.
+ rewrite size_w2bits => i0 i0_bnd.
  rewrite /to_uint. 
  have->: 16 = size (w2bits x) by rewrite size_w2bits.
  rewrite bs2intK /#.
  smt().
rewrite !(aux (w + of_int i)).
+ by rewrite W16.to_uintD_small of_uintK; smt(W16.to_uint_cmp).
rewrite W16.to_uintD_small of_uintK; smt(W16.to_uint_cmp).
rewrite aux /to_uint int2bsK 1:/#; smt(W16.to_uint_cmp).
qed.

lemma A101_extraction:
Aavx2x4.A101u64toA25u256 = A101u64toA25u256.
rewrite /A101u64toA25u256 fun_ext => y. 
rewrite (Array25.ext_eq (Array25.init (fun i =>
   Aavx2x4.u256_pack4 y.[i*4] y.[i*4+1] y.[i*4+2] y.[i*4+3]))
          (Array25.init (fun i =>
   u256_pack4 y.[i*4] y.[i*4+1] y.[i*4+2] y.[i*4+3]))).
move => x0 x0_bnd.
rewrite /Aavx2x4.u256_pack4 /u256_pack4 /#. 
smt().
qed.

lemma i_separate:
forall (i: int), 
  0 <= i < 4 = (i = 0 \/ i = 1 \/ i = 2 \/ i = 3) by smt().


lemma commitx4_ll: islossless K.commit_x4.
proof.
proc. sp. wp.
+ call(A48avx2x4.squeeze_updstate_avx2x4_ll); wp.
+ call(Aavx2x4.finish_updstate_avx2x4_ll); wp.
+ call(A2avx2x4.absorb_updstate_avx2x4_ll); wp.
+ call(A2avx2x4.absorb_bcast_updstate_avx2x4_ll); wp.
+ call(A32avx2x4.absorb_bcast_updstate_avx2x4_ll); wp.
+ call(A24avx2x4.absorb_updstate_avx2x4_ll); wp.
+ call(Aavx2x4.init_updstate_avx2x4_ll).
auto => /#.
qed.

lemma sign_commit_x4_ll: islossless K.sign_commit_x4.
proof.
proc. by wp; call(commitx4_ll); auto. qed.

op sub (l: W8.t list) (k len: int) : W8.t list = take len (drop k l).


hoare commit_x4_h _seeds _salt _round _player:
 K.commit_x4
 : 0 <= _round < 419 /\ 0 <= _player <= 12 /\
   to_uint round = _round /\ to_uint player = _player /\
   to_list salt = _salt /\ to_list seeds = _seeds
==> 
 commitments (to_list res) = 
 [com (sub _seeds 0 24) _salt _round _player; 
  com (sub _seeds 24 24) _salt _round (_player+1);
  com (sub _seeds 48 24) _salt _round (_player+2); 
  com (sub _seeds 72 24) _salt _round (_player+3)].
proof.
  proc; wp.
+ call(A48avx2x4.squeeze_updstate_avx2x4_h 
  (st4x_pack 
    (ABSORB1600 (of_int 31) 136
       (inp _seeds _salt _round _player 0 4),
     ABSORB1600 (of_int 31) 136
       (inp _seeds _salt _round _player 1 4),
     ABSORB1600 (of_int 31) 136
       (inp _seeds _salt _round _player 2 4),
     ABSORB1600 (of_int 31) 136
       (inp _seeds _salt _round _player 3 4))
  )
  136 48); wp.
+ call(Aavx2x4.finish_updstate_avx2x4_h 
       (inp _seeds _salt _round _player 0 4)
       (inp _seeds _salt _round _player 1 4)
       (inp _seeds _salt _round _player 2 4)
       (inp _seeds _salt _round _player 3 4)
       31
       136).
+ call(A2avx2x4.absorb_updstate_avx2x4_h
       (inp _seeds _salt _round _player 0 3)
       (inp _seeds _salt _round _player 1 3)
       (inp _seeds _salt _round _player 2 3)
       (inp _seeds _salt _round _player 3 3)
       (Array2.of_list witness (val _player))
       (Array2.of_list witness (val (_player+1)))
       (Array2.of_list witness (val (_player+2)))
       (Array2.of_list witness (val (_player+3)))
       31 136 58 2); wp.
+ call(A2avx2x4.absorb_bcast_updstate_avx2x4_h
       (inp _seeds _salt _round _player 0 2)
       (inp _seeds _salt _round _player 1 2)
       (inp _seeds _salt _round _player 2 2)
       (inp _seeds _salt _round _player 3 2)
       (Array2.of_list witness (val _round))
       31 136 56 2); wp.
+ call(A32avx2x4.absorb_bcast_updstate_avx2x4_h
       (inp _seeds _salt _round _player 0 1)
       (inp _seeds _salt _round _player 1 1)
       (inp _seeds _salt _round _player 2 1)
       (inp _seeds _salt _round _player 3 1)
       (Array32.of_list witness _salt)
       31 136 24 32); wp.
+ call(A24avx2x4.absorb_updstate_avx2x4_h
       [] [] [] []
       (Array24.of_list witness (take size_seed _seeds))
       (Array24.of_list witness (take size_seed (drop size_seed _seeds)))
       (Array24.of_list witness (take size_seed (drop (2*size_seed) _seeds)))
       (Array24.of_list witness (take size_seed (drop (3*size_seed) _seeds)))
       31 136 0 24); wp.
+ call(Aavx2x4.init_updstate_avx2x4_h 136 31).
auto => />. move => &hr /= H0 H1 H2 H3 H4 H5 H6 H7.
do split.
+ rewrite /st4x_match -A101_extraction H7.
  rewrite chunk_nil /stateabsorb_iblocks chunkremains_nil ..2:/#.
  rewrite /bytes2state w64L_from_bytes_nil /addstate /of_list.
  rewrite /st0 /st4x_pack /init_25_256 /u256_pack4 /init_25_64. 
  rewrite /= eq_sym (Array25.ext_eq _ st4x0) 2:/#.
  + move => x0 x0_bnd. rewrite initiE 1:/# /= initiE 1:/#.
    rewrite /st4x0 createiE 1:/# (W256.ext_eq _ W256.zero) 2:/#.
    +  move => x1 x1_bnd; rewrite !initiE 1:/# /= !initiE /#.
+ rewrite -(drop0 (to_list seeds{hr})).
  have->: Array24.init ("_.[_]" seeds{hr}) = 
          Array24.init (fun i => seeds{hr}.[0 + i]).
  + rewrite eq_sym (Array24.ext_eq _ 
                   (Array24.init ("_.[_]" seeds{hr}))) 2:/#.
    + by move => x0 x0_bnd; rewrite !initiE /#.
  by rewrite (seeds_eq _ 0) /#.
+ rewrite seeds_eq /#.
+ rewrite seeds_eq /#.
+ rewrite seeds_eq /#.

move => ???????????H8.
rewrite!to_listK /inp !size_cat H8 /size_seed !drop0 /=.
rewrite !size_take ..4:/# !size_drop ..3:/#.
do split.
+ rewrite !size_to_list /#.
+ rewrite !size_to_list /#.
+ rewrite !size_to_list /#.
+ rewrite !of_listK ..4:size_take 4,6,8:size_drop 2,5,8,11:size_to_list /#.

move =>?????????H9.
rewrite !size_cat !size_take ..4:/# !size_drop ..3:/#.
do split.
+ rewrite !size_to_list /#.
+ rewrite !size_to_list /#.
+ rewrite !size_to_list /#.
+ rewrite H9 /st4x_match /#.
+ rewrite /get8 /set16_direct /=.
+ rewrite (Array2.ext_eq _ 
        (Array2.of_list witness (val (to_uint round{hr})))) 2:/#.
  + move => x0 x0_bnd. rewrite /val !initiE ..3:/# /= ifT 1:/#.
    rewrite (nth_map witness) 1:size_range 1:lez_maxr ..2:/# /=.
    rewrite /(\bits8) eq_sym nth_range 1:/# /=.
    rewrite (W8.ext_eq _ 
             (W8.init (fun j => round{hr}.[x0*8+j]))) 2:/#.
    + move => x1 x1_bnd. rewrite initiE 1:/# bits2wE initiE 1:/#.
      rewrite /= nth_take ..2:/# nth_drop ..2:/# /to_uint.
      have->:16 = size (w2bits round{hr}) by rewrite size_w2bits.
      rewrite bs2intK get_w2bits /#.
   
move => ??????????H10. split.
rewrite !size_to_list size_map size_range !lez_maxr ..4:/#.
rewrite H10 /st4x_match !of_listK 1:size_map 1:size_range 1:lez_maxr ..2:/# /=.
do split.
+ rewrite (Array2.ext_eq _ (Array2.of_list witness (val (to_uint player{hr})))) 2:/#.
  + move => x0 x0_bnd. rewrite /get8 /set16_direct !initiE..3:/#.
    rewrite /= initE ifT 1:/# /= initE ifF 1:/# ifT 1:/#.
    rewrite !initiE ..2:/#/= ifF 1:/# !initiE ..3:/# /=.
    rewrite ifF 1:/# !initiE ..3:/# /= ifT 1:/# /(\bits8) /val.
    rewrite (nth_map witness witness). 
    + rewrite size_range lez_maxr /#. 
    rewrite nth_range 1:/# /=.
    rewrite (W8.ext_eq _ (W8.bits2w (take 8 (drop (8*x0) (int2bs 16 (to_uint player{hr})))))) 2:/#.
    + move => x1 x1_bnd.
      rewrite /bits2w /to_uint !initiE ..2:/# /= nth_take ..2:/#.
      rewrite nth_drop ..2:/#.
      have->:16 = size (w2bits player{hr})by rewrite size_w2bits.
      rewrite bs2intK /w2bits nth_mkseq /#.
+ rewrite (Array2.ext_eq _ (Array2.of_list witness (val (to_uint player{hr} + 1)))) 2:/#.
  + move => x0 x0_bnd. rewrite /get8 /set16_direct!initiE ..2:/#.
    rewrite /= initE ifT 1:/# /= initE ifT 1:/# /= ifF 1:/#.
    rewrite !initiE ..3:/#/= ifF 1:/# !initiE ..3:/# /= ifT 1:/#.
    rewrite /(\bits8) /val (nth_map witness witness). 
    + rewrite size_range lez_maxr /#. 
    rewrite nth_range 1:/# /=.
    rewrite (W8.ext_eq _ (W8.bits2w (take 8 (drop (8*x0) (int2bs 16 (to_uint player{hr} + 1)))))) 2:/#.
    + move => x1 x1_bnd.
      rewrite /bits2w /to_uint !initiE ..2:/# /= nth_take ..2:/#.
      rewrite nth_drop ..2:/# aux ..2:/#.
      have->:16 = size (w2bits (player{hr}+one))
        by rewrite size_w2bits.
      rewrite bs2intK /w2bits nth_mkseq /#.
+ rewrite (Array2.ext_eq _ (Array2.of_list witness (val (to_uint player{hr} + 2)))) 2:/#.
  + move => x0 x0_bnd. rewrite /get8 /set16_direct !initiE..2:/#.
    rewrite /= initE ifT 1:/# /= initE ifT 1:/# /= ifF 1:/#.
    rewrite !initiE ..3:/# /= ifT 1:/# /(\bits8) /val.
    rewrite (nth_map witness witness). 
    + rewrite size_range lez_maxr /#. 
    rewrite nth_range 1:/# /=.
    rewrite (W8.ext_eq _ (W8.bits2w (take 8 (drop (8*x0) (int2bs 16 (to_uint player{hr} + 2)))))) 2:/#.
    + move => x1 x1_bnd.
      rewrite /bits2w /to_uint !initiE ..2:/# /= nth_take ..2:/#.
      rewrite nth_drop ..2:/# aux ..2:/#.
      have->:16 = size (w2bits (player{hr} + of_int 2))
        by rewrite size_w2bits.
      rewrite bs2intK /w2bits nth_mkseq /#.
 + rewrite (Array2.ext_eq _ (Array2.of_list witness (val (to_uint player{hr} + 3)))) 2:/#.
  + move => x0 x0_bnd. rewrite /get8 /set16_direct !initiE..2:/#.
    rewrite /= initE ifT 1:/# /= initE ifT 1:/# /= ifT 1:/#.
    rewrite /(\bits8) /val (nth_map witness witness). 
    + rewrite size_range lez_maxr /#. 
    rewrite nth_range 1:/# /=.
    rewrite (W8.ext_eq _ (W8.bits2w (take 8 (drop (8*x0) (int2bs 16 (to_uint player{hr} + 3)))))) 2:/#.
    + move => x1 x1_bnd.
      rewrite /bits2w /to_uint !initiE ..2:/# /= nth_take ..2:/#.
      rewrite nth_drop ..2:/# aux ..2:/#.
      have->:16 = size (w2bits (player{hr} + of_int 3))
        by rewrite size_w2bits.
      rewrite bs2intK /w2bits nth_mkseq /#.

move =>?????????????H11.
rewrite  ifT 1:size_to_list 1:/# /= !size_map !size_range.
rewrite lez_maxr 1:/# /= !size_iota !lez_maxr ..4:/# /=. 
split.
rewrite A101_extraction H11 /st4x_match !of_listK ..4:size_map ..4:size_range /#.

move =>????r?H12 H13 H14 H15.
pose x0:= (fun i2 => if 0 <= i2 < 48 then r.`2.[i2]
                                     else out{hr}.[i2]).
pose x1:= (fun i2 => if 48 <= i2 < 96 then r.`3.[i2 - 48]
                                  else (Array192.init x0).[i2]).
pose x2:= (fun i1 => if 96 <= i1 < 144 then r.`4.[i1 - 96]
                              else (Array192.init x1).[i1]).
pose x3:= (fun i0 => if 144 <= i0 < 192 then r.`5.[i0 - 144]
                     else (Array192.init x2).[i0]).
pose c0:= com (sub (to_list seeds{hr}) 0 24) (to_list salt{hr}) 
              (to_uint round{hr}) (to_uint player{hr}).
pose c1:= com (sub (to_list seeds{hr}) 24 24) (to_list salt{hr})
              (to_uint round{hr}) (to_uint player{hr} + 1).
pose c2:= com (sub (to_list seeds{hr}) 48 24) (to_list salt{hr})
              (to_uint round{hr}) (to_uint player{hr} + 2).
pose c3:= com (sub (to_list seeds{hr}) 72 24) (to_list salt{hr})
              (to_uint round{hr}) (to_uint player{hr} + 3).
rewrite (eq_from_nth witness _ ([c0; c1; c2; c3])) 3:/#.
+ rewrite size_map size_range /#.  
+ rewrite size_map size_range lez_maxr 1:/# /= => i i_bnd.
  rewrite (nth_map witness) 1:size_range 1:lez_maxr ..2:/# /=.
  move: i_bnd. rewrite i_separate. move=> [i0 | [i1 | [i2|i3]]].
  + rewrite i0 /c0 /com !nth_range 1:/# /commitment /sub !drop0 /=. congr. 
    rewrite (eq_from_nth witness _ 
             (take size_com (to_list (Array192.init 
               (fun i0 => r.`2.[i0]))))). 
    + rewrite !size_take ..2:/# !size_to_list /#.
    + rewrite size_take 1:/# size_to_list ifT 1:/# /size_com /=.
      move => i_0 i0_bnd.
      rewrite !nth_take ..4:/# !get_to_list initiE 1:/# /=.
      rewrite /x3 ifF 1:/# initiE 1:/# /x2 ifF 1:/# initiE 1:/#.
      rewrite /x1 ifF 1:/# /x0 initE ifT 1:/# /= ifT 1:/#.
      rewrite initiE /#.
    rewrite H12 /size_com st4x_get_pack0 /=.
    rewrite remove_init_48 1:/# of_listK /SQUEEZE1600.
    rewrite size_take 1:/# size_squeezeblocks /#.
    rewrite take_take /#.
  + rewrite i1 /c1 /com !nth_range 1:/# /commitment/=. congr.
    rewrite (eq_from_nth witness _ 
             (take size_com (to_list (Array192.init 
               (fun i0 => r.`3.[i0]))))). 
    + rewrite !size_take..2:/# !size_drop 1:/# !size_to_list /#.
    + rewrite size_take 1:/# size_drop 1:/# size_to_list.
      rewrite ifT 1:/# /size_com /=. move => i_0 i0_bnd.
      rewrite !nth_take ..4:/# !nth_drop ..2:/# !get_to_list.
      rewrite initiE 1:/# /= /x3 ifF 1:/# initiE 1:/# /x2.
      rewrite ifF 1:/# initiE 1:/# /x1 ifT 1:/# initE ifT /#.
    rewrite H13 /size_com st4x_get_pack1 /=.
    rewrite remove_init_48 1:/# of_listK /SQUEEZE1600.
    rewrite size_take 1:/# size_squeezeblocks /#.
    rewrite take_take /#.
  + rewrite i2 /c2 /com !nth_range 1:/# /commitment/=. congr.
    rewrite (eq_from_nth witness _ 
             (take size_com (to_list (Array192.init 
               (fun i0 => r.`4.[i0]))))). 
    + rewrite !size_take..2:/# !size_drop 1:/# !size_to_list /#.
    + rewrite size_take 1:/# size_drop 1:/# size_to_list.
      rewrite ifT 1:/# /size_com /=. move => i_0 i0_bnd.
      rewrite !nth_take ..4:/# !nth_drop ..2:/# !get_to_list.
      rewrite initiE 1:/# /= /x3 ifF 1:/# initiE 1:/# /x2.
      rewrite ifT 1:/# initiE /#.
    rewrite H14 /size_com st4x_get_pack2 /=.
    rewrite remove_init_48 1:/# of_listK /SQUEEZE1600.
    rewrite size_take 1:/# size_squeezeblocks /#.
    rewrite take_take /#.
  + rewrite i3 /c3 /com !nth_range 1:/# /commitment/=. congr.
    rewrite (eq_from_nth witness _ 
             (take size_com (to_list (Array192.init 
               (fun i0 => r.`5.[i0]))))). 
    + rewrite !size_take..2:/# !size_drop 1:/# !size_to_list /#.
    + rewrite size_take 1:/# size_drop 1:/# size_to_list.
      rewrite ifF 1:/# /size_com /=. move => i_0 i0_bnd.
      rewrite !nth_take ..4:/# !nth_drop ..2:/# !get_to_list.
      rewrite initiE 1:/# /= /x3 ifT 1:/# initiE /#.
    rewrite H15 /size_com st4x_get_pack3 /=.
    rewrite remove_init_48 1:/# of_listK /SQUEEZE1600.
    rewrite size_take 1:/# size_squeezeblocks /#.
    rewrite take_take /#.
qed.


op compose_by_rounds (l: W8.t list list): W8.t list list list =
map (fun i => take players (drop (i*players) l)) (range 0 rounds).

op build_commitments (r: W8.t Array321792.t): AllCommitments.sT =
inj_commitments (compose_by_rounds (compose_commitments (to_list r))).


lemma i_separate2:
forall i, 
 0 <= i < 96 = (0 <= i < 24 \/ 24 <= i < 48 \/
          48 <= i < 72 \/ 72 <= i < 96).
proof. by smt(). qed.

op getx4_nodes (rs : rseed list) (round player: int) =
[tree (nth witness rs round) (insubd (int2bs 4 player));
 tree (nth witness rs round) (insubd (int2bs 4 (player+1)));
 tree (nth witness rs round) (insubd (int2bs 4 (player+2)));
 tree (nth witness rs round) (insubd (int2bs 4 (player+3)))].

op getx4_lists (rs : rseed list) (round player: int) =
flatten (map (fun x => val x) (getx4_nodes rs round player)).


lemma mullL: forall (x y z: int), z * (x + y) = z * x + z * y by smt().
lemma mullR: forall (x y z: int), (x + y) * z = x * z + y * z by smt().

op get_coms (l: W8.t Array321792.t) (_round _player: int) : W8.t list =
let offset = (_round * players + _player) * size_com in take (size_com * 4) (drop
offset (to_list l)).

op seed2List (s: seed_t): W8.t list = val s.

op readSeed (rs : rseed list) (round player: int) : W8.t list =
seed2List (tree (nth witness rs round) (insubd (int2bs 4 player))).

lemma get_seeds_size _seeds round player:
forall k, 0 <= k <= 72 => size (sub (getx4_lists _seeds round player) k 24) = 24.
proof.
move => k k_bnd.
rewrite /sub size_take 1:/# /getx4_lists /getx4_nodes.
rewrite size_drop 1:/# size_flatten /= !valP /size_seed.
have->: [24; 24; 24; 24] = nseq 4 24.
+ rewrite -(cat_nseq 1 3)..2:/# -(cat_nseq 1 2)..2:/# -(cat_nseq 1 1)..2:/# !nseq1 /#.
rewrite StdBigop.Bigint.sumz_nseq 1:/# lez_maxr /#.
qed.

hoare sign_commit_x4_h _seeds _salt _round _player (_comms: W8.t Array321792.t):
 K.sign_commit_x4
 : 0 <= _round < 419 /\ 0 <= _player <= 12 /\
   round = _round /\ player = _player /\
   to_list salt = _salt /\ commitments = _comms /\
   getx4_nodes _seeds _round _player =
   [readTree seeds _round _player;
    readTree seeds _round (_player+1);
    readTree seeds _round (_player+2);
    readTree seeds _round (_player+3)]
==>
 let chunk = flatten (map com2List
  [com (readSeed _seeds _round _player) _salt _round _player;
   com (readSeed _seeds _round (_player+1)) _salt _round (_player+1);
   com (readSeed _seeds _round (_player+2)) _salt _round (_player+2);
   com (readSeed _seeds _round (_player+3)) _salt _round (_player+3)]) in
 let offset = (_round * players + _player) * size_com in
 res = Array321792.fill (fun i => nth witness chunk (i - offset)) offset (size_com * 4) _comms.
proof.
proc. 
wp. call(commit_x4_h (getx4_lists _seeds _round _player) _salt _round _player). 
auto => />.
move => &hr H0 H1 H2 H3 H4 H5 H6 H7.
rewrite to_uint_truncateu16 {1}pmod_small 1:of_uintK 1:/# /=. split.
+ rewrite !of_uintK !pmod_small ..2:/# /=.
  pose l1:= (fun (i : int) => seeds{hr}.[_player * 24 + 360 + _round * 744 + i]).
  rewrite (eq_from_nth witness _ (getx4_lists _seeds _round _player)) 3:/#.
  + rewrite size_to_list size_flatten /getx4_nodes /= !valP.
    by rewrite /size_seed /sumz.
  rewrite size_to_list => i i_bnd.
  rewrite get_to_list initiE 1:// /l1 /getx4_lists /getx4_nodes H4 H5 H6 H7 /= /readTree /list2seed !Seed.insubdK ?size_sub //.
  rewrite (nth_flatten witness 24) /= ?size_sub /size_seed //.
  have Hd := divz_eq i 24.
  have Hr : 0 <= i %% 24 < 24 by rewrite modz_ge0 // ltz_pmod.
  move: Hd Hr; move: (i %/ 24) (i %% 24) => q rr Hd Hr.
  have Hq : q = 0 \/ q = 1 \/ q = 2 \/ q = 3 by smt().
  case: Hq => [Hq|[Hq|[Hq|Hq]]]; rewrite Hq /= nth_sub 1:/# /seed_pos /size_tree /seeds_tree_size /size_seed /=.
  + by congr; rewrite Hd Hq; ring.
  + by congr; rewrite Hd Hq; ring.
  + by congr; rewrite Hd Hq; ring.
  by congr; rewrite Hd Hq; ring.
move => _ _ _ r H9.
have HK : forall (l : W8.t list), size l = 192 => flatten (map com2List (Top.commitments l)) = l.
+ move => l Hl; rewrite /commitments /commitment /range -iotaredE /= /com2List /size_com /=.
  rewrite !Commitment.insubdK ?size_take ?size_drop ?Hl // flatten_cons flatten_cons flatten_cons flatten_seq1 drop0.
  by rewrite (take_oversize 48 (drop 144 l)) 1:size_drop 1:// 1:/# (_: 144 = 48 + 96) 1:// -drop_drop // cat_take_drop (_: 96 = 48 + 48) 1:// -drop_drop // cat_take_drop cat_take_drop.
have HS : forall k, 0 <= k < 4 => sub (getx4_lists _seeds _round _player) (24 * k) 24 = readSeed _seeds _round (_player + k).
+ move => k Hk; have Hk4 : k = 0 \/ k = 1 \/ k = 2 \/ k = 3 by smt().
  rewrite /sub /getx4_lists /getx4_nodes /readSeed /seed2List /=.
  rewrite !flatten_cons flatten_nil cats0.
  case: Hk4 => [->|[->|[->|->]]] /=.
  + by rewrite drop0 take_cat Seed.valP /size_seed /= take0 cats0.
  + by rewrite drop_cat Seed.valP /size_seed /= drop0 take_cat Seed.valP /size_seed /= take0 cats0.
  + by rewrite drop_cat Seed.valP /size_seed /= drop_cat Seed.valP /size_seed /= drop0 take_cat Seed.valP /size_seed /= take0 cats0.
  by rewrite drop_cat Seed.valP /size_seed /= drop_cat Seed.valP /size_seed /= drop_cat Seed.valP /size_seed /= drop0 take_oversize // Seed.valP.
move: (HS 0 _) (HS 1 _) (HS 2 _) (HS 3 _) => //= S0 S1 S2 S3.
have Hc : flatten (map com2List (Top.commitments (to_list r))) = to_list r by apply HK; rewrite size_to_list.
rewrite H9 S0 S1 S2 S3 /= in Hc.
rewrite Hc /players /size_com /= (_: (_round * 16 + _player) * 48 = _round * 16 * 48 + _player * 48) 1:/#.
by apply Array321792.tP => i Hi; rewrite initiE // filliE //=.
qed.

phoare sign_commitx4_ph _seeds _salt _round _player (_comms: W8.t Array321792.t):
 [K.sign_commit_x4
 : 0 <= _round < 419 /\ 0 <= _player <= 12 /\
   round = _round /\ player = _player /\
   to_list salt = _salt /\ commitments = _comms /\
   getx4_nodes _seeds _round _player =
   [readTree seeds _round _player;
    readTree seeds _round (_player+1);
    readTree seeds _round (_player+2);
    readTree seeds _round (_player+3)]
==>
 let chunk = flatten (map com2List
  [com (readSeed _seeds _round _player) _salt _round _player;
   com (readSeed _seeds _round (_player+1)) _salt _round (_player+1);
   com (readSeed _seeds _round (_player+2)) _salt _round (_player+2);
   com (readSeed _seeds _round (_player+3)) _salt _round (_player+3)]) in
 let offset = (_round * players + _player) * size_com in
 res = Array321792.fill (fun i => nth witness chunk (i - offset)) offset (size_com * 4) _comms
 ]= 1%r.
proof.
by conseq sign_commit_x4_ll (sign_commit_x4_h _seeds _salt _round _player _comms).
qed.
