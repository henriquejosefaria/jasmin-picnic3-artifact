require import AllCore List IntDiv BitEncoding StdOrder.

(* Local Libs *)
require import K.

(* External libs *)
from Jasmin require import JWord.

from CryptoSpecs require import Keccak1600_Spec.

from Extraction require import Commitx4.
from Extraction require import 
 Array321792 Array311736 Array192 Array101 Array96 Array48 Array32 Array24 Array8 Array5 Array2.
from Extraction require import WArray8.

from Keccak require import Keccak1600_updstate_avx2x4.


(****************************************************************************)

equiv commitx4_eq: 
  M.sign_commit_x4 ~ K.sign_commit_x4: ={arg} ==> ={res}.
proof. by proc; sim. qed.
