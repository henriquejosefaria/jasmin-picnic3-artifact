require import AllCore List BitEncoding.
(*---*) import BitEncoding.BS2Int.

(* Local libs *)
require import Params Types.

import Types.Commitment Types.RoundCommitments Types.AllCommitments.
import Types.RoundSeeds Types.Seed Types.Path.
import Types.Salt.

(* External libs *)
from Jasmin require import JWord.
from Extraction require import Array311736.

(* Getting SHAKE256 functional spec *)
from Keccak require import Keccak1600_avx2.

(********************************************)
(*           Retrieving functions           *)
(********************************************)

(* Retrieve a round's commitments *)
op fetch_roundCommitments (l: allComs_t) (round: int): rComs_t =
nth witness (val l) round.

(* Retrieve a player's commitment *)
op fetch_commitment (l: allComs_t) (round player: int): com_t =
nth witness (val (fetch_roundCommitments l round)) player.

(* Retrieve a tree's node *)
op tree (rootSeed: rseed) (p: path) : seed_t =
foldl (fun rs i => Seed.insubd (SHAKE256 (Seed.val rs ++ [W8.of_int (b2i i)]) size_seed)) rootSeed (val p).

op seed_pos (round player: int) : int =
round * size_tree * size_seed + 
(2^(seeds_tree_size-1)-1 + player) * size_seed.

op list2seed (l: W8.t list): seed_t = insubd l.

op readTree (a: W8.t Array311736.t) (r: int) (p: int) : seed_t =
list2seed (sub a (seed_pos r p) size_seed).

(********************************************)
(*            Setting  functions            *)
(********************************************)

op set_player_com (l: rComs_t) (c: com_t) (player: int) : rComs_t =
insubd (take player (val l) ++ c :: drop (player+1) (val l)).

op set_com (l: allComs_t) (c: com_t) (round player: int): allComs_t = 
insubd (take round (val l) ++ 
      (set_player_com (nth witness (val l) round) c player) :: drop (round+1) (val l)).


(**********************************************)
(* Converting functions: SubType => W8.t list *)
(**********************************************)


op com2List (c: com_t): W8.t list = val c.

op rComs2List (c: rComs_t): W8.t list list = 
  map (fun x => com2List (nth witness (val c) x)) (range 0 players).

op allComs2List (c: allComs_t): W8.t list list list =
  map (fun x => rComs2List(nth witness (val c) x)) (range 0 rounds).

op salt2List (s: salt_t): W8.t list = val s.

op val (x: int): W8.t list =
map (fun x0 => bits2w (take 8 (drop (8 * x0) (int2bs 16 x)))) (range 0 2).


(**********************************************)
(* Converting functions: W8.t list => SubType *)
(**********************************************)
(*
(* Converting W8.t list into a player's Commitment *)
op commitment (l: W8.t list): com_t = insubd l.
*)
(* Converting W8.t list list into a round's Commitments *)
op inj_roundCommitments (l: W8.t list list): rComs_t = 
insubd (map (fun x => insubd (nth witness l x)) (range 0 players)).

(* Converting W8.t list list list into the allCommitments structure *)
op inj_commitments (l: W8.t list list list): allComs_t =
insubd (map (fun x => inj_roundCommitments (nth witness l x)) (range 0 rounds)).

(* Converting W8.t list into a player's Seed *)
op inj_seed (l: W8.t list): seed_t = insubd l.

(* Injecting the salt into the Salt structure *)
op inj_salt (s: W8.t list): salt_t = insubd s.

(* Convert round/player encoded as U16 into int *)
op insub (l: W8.t list): int = 
  (bs2int (w2bits (nth witness l 0) ++ w2bits (nth witness l 1))).

(**********************************************)
(*         Usefull Auxiliary Lemmas           *)
(**********************************************)

lemma size_val (x: int):
size (val x) = 2.
proof. by rewrite /val size_map 1:size_range /#. qed.

lemma salt2ListK:
forall x, size x = size_salt => salt2List (inj_salt x) = x.
proof. 
by move => x x_size; rewrite /salt2List /inj_salt insubdK /#.
qed.

lemma seed2ListK:
forall x, size x = size_seed => val (Seed.insubd x) = x.
proof.
by move => x x_size; rewrite insubdK /#.
qed.


