require import AllCore Int List.

require Subtype.

(* Local libs *)
require import Params.

(* Extra libs *)
from Jasmin require import JWord.

(* Definnig The array of all commitments for all rounds and players *)
clone import Subtype as Commitment with
  type T <- W8.t list,
  op P <- fun wl => size wl = size_com.
type com_t = Commitment.sT.


clone import Subtype as RoundCommitments with
  type T <- com_t list,
  op P <- fun wl => size wl = players.
type rComs_t =  RoundCommitments.sT.


clone import Subtype as AllCommitments with
  type T <- rComs_t list,
  op P <- fun wl => size wl = rounds.
type allComs_t = AllCommitments.sT.

(* Defining the trees containing all seeds for all players in all rounds *)
clone import Subtype as Seed with
  type T <- W8.t list,
  op P <- fun wl => size wl = size_seed.
type seed_t = Seed.sT.

(* A round's root seed *)
type rseed = seed_t.

op size_tree: int = (2^seeds_tree_size - 1).

(* A list with all the rounds' root seeds *)
clone import Subtype as RoundSeeds with
  type T <- seed_t list,
  op P <- fun wl => size wl = rounds.

type roundSeeds_t = RoundSeeds.sT.

(* A path to a node's position in a tree *) 
clone import Subtype as Path with
  type T <- bool list,
  op P <- fun wl => 0 <= size wl <= 4.
type path = Path.sT.


(* Defining Salt *)
clone import Subtype as Salt with
  type T <- W8.t list,
  op P <- fun wl => size wl = size_salt.
type salt_t = Salt.sT.
