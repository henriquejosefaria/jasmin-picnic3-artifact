require import AllCore List IntDiv BitEncoding StdOrder.

(* External libs *)
from Jasmin require import JWord.

from CryptoSpecs require import Keccak1600_Spec.

from Extraction require import Commitx4.
from Extraction require import 
 Array321792 Array311736 Array192 Array101 Array96 Array48 Array32 Array24 Array8 Array5 Array2.
from Extraction require import WArray8.

from Keccak require import Keccak1600_updstate_avx2x4.

(****************************************************************************)

clone Keccak1600_updstate_avx2x4 as Aavx2x4. (* init *)
 
(****************************************************************************)
from JazzEC require import Array24 WArray24.  (* Seed *)

clone Keccak1600_updstate_avx2x4.KeccakUpdstateAvx2x4 
 as A24avx2x4
 with op _ASIZE <- 24,
      theory A <- Array24,
      theory WA <- WArray24
      proof _ASIZE_ge0 by done.

(****************************************************************************)
from JazzEC require import Array32 WArray32.  (* Salt *)

clone Keccak1600_updstate_avx2x4.KeccakUpdstateAvx2x4
 as A32avx2x4
 with op _ASIZE <- 32,
      theory A <- Array32,
      theory WA <- WArray32
      proof _ASIZE_ge0 by done.

(****************************************************************************)
from JazzEC require import Array2 WArray2.  (* Round & Player *)

clone Keccak1600_updstate_avx2x4.KeccakUpdstateAvx2x4
 as A2avx2x4
 with op _ASIZE <- 2,
      theory A <- Array2,
      theory WA <- WArray2
      proof _ASIZE_ge0 by done.

(****************************************************************************)
from JazzEC require import Array48 WArray48.  (* Commit *)

clone Keccak1600_updstate_avx2x4.KeccakUpdstateAvx2x4
 as A48avx2x4
 with op _ASIZE <- 48,
      theory A <- Array48,
      theory WA <- WArray48
      proof _ASIZE_ge0 by done.


module K = {

  proc commit_x4(out : W8.t Array192.t, seeds : W8.t Array96.t, salt : W8.t Array32.t, round : W16.t, player : W16.t) :
    W8.t Array192.t = {
    var y : W8.t;
    var s_st : W64.t Array101.t;
    var st : W64.t Array101.t;
    var buf0 : W8.t Array24.t;
    var buf1 : W8.t Array24.t;
    var buf2 : W8.t Array24.t;
    var buf3 : W8.t Array24.t;
    var t16 : W16.t;
    var t16b_s : W8.t Array2.t;
    var t16b : W8.t Array2.t;
    var t16x4 : W8.t Array8.t;
    var t16x40 : W8.t Array2.t;
    var t16x41 : W8.t Array2.t;
    var t16x42 : W8.t Array2.t;
    var t16x43 : W8.t Array2.t;
    var out0 : W8.t Array48.t;
    var out1 : W8.t Array48.t;
    var out2 : W8.t Array48.t;
    var out3 : W8.t Array48.t;
    var x : int;
    var len : int;
    var _0 : W64.t Array101.t;
    
    _0 <- witness<:W64.t Array101.t>;
    buf0 <- witness<:W8.t Array24.t>;
    buf1 <- witness<:W8.t Array24.t>;
    buf2 <- witness<:W8.t Array24.t>;
    buf3 <- witness<:W8.t Array24.t>;
    out0 <- witness<:W8.t Array48.t>;
    out1 <- witness<:W8.t Array48.t>;
    out2 <- witness<:W8.t Array48.t>;
    out3 <- witness<:W8.t Array48.t>;
    s_st <- witness<:W64.t Array101.t>;
    st <- witness<:W64.t Array101.t>;
    t16b <- witness<:W8.t Array2.t>;
    t16b_s <- witness<:W8.t Array2.t>;
    t16x4 <- witness<:W8.t Array8.t>;
    t16x40 <- witness<:W8.t Array2.t>;
    t16x41 <- witness<:W8.t Array2.t>;
    t16x42 <- witness<:W8.t Array2.t>;
    t16x43 <- witness<:W8.t Array2.t>;
    x <- 136 `|>>` 3;
    y <- W8.of_int 31;
    st <- s_st;
    st <@ Keccak1600_Jazz.M._init_updstate_avx2x4(st, x, y);
    len <- 24;
    buf0 <- Array24.init (fun (i : int) => seeds.[0 + i]);
    buf1 <- Array24.init (fun (i : int) => seeds.[24 + i]);
    buf2 <- Array24.init (fun (i : int) => seeds.[2 * 24 + i]);
    buf3 <- Array24.init (fun (i : int) => seeds.[3 * 24 + i]);
    st <@ A24avx2x4.MM._absorb_updstate_avx2x4(st, buf0, buf1, buf2, buf3, len);
    len <- 32;
    st <@ A32avx2x4.MM._absorb_bcast_updstate_avx2x4(st, salt, len);
    len <- 2;
    t16 <- round;
    t16b_s <- 
      Array2.init (get8 (set16 (WArray2.init8 (fun (i : int) => t16b_s.[i])) 0 t16));
    t16b <- t16b_s;
    st <@ A2avx2x4.MM._absorb_bcast_updstate_avx2x4(st, t16b, len);
    t16x4 <-
      Array8.init
        (WArray8.get8
           (WArray8.set16
              (WArray8.init8 (fun (i : int) => t16x4.[i])) 0 player));
    player <- player + one;
    t16x4 <-
      Array8.init
        (WArray8.get8
           (WArray8.set16
              (WArray8.init8 (fun (i : int) => t16x4.[i])) 1 player));
    player <- player + one;
    t16x4 <-
      Array8.init
        (WArray8.get8
           (WArray8.set16
              (WArray8.init8 (fun (i : int) => t16x4.[i])) 2 player));
    player <- player + one;
    t16x4 <-
      Array8.init
        (WArray8.get8
           (WArray8.set16
              (WArray8.init8 (fun (i : int) => t16x4.[i])) 3 player));
    len <- 2;
    t16x40 <- Array2.init (fun (i : int) => t16x4.[0 + i]);
    t16x41 <- Array2.init (fun (i : int) => t16x4.[2 + i]);
    t16x42 <- Array2.init (fun (i : int) => t16x4.[4 + i]);
    t16x43 <- Array2.init (fun (i : int) => t16x4.[6 + i]);
    st <@
      A2avx2x4.MM._absorb_updstate_avx2x4(st, t16x40, t16x41, t16x42, t16x43, len);
    st <@ Keccak1600_Jazz.M._finish_updstate_avx2x4(st);
    len <- 48;
    out0 <- Array48.init (fun (i : int) => out.[0 + i]);
    out1 <- Array48.init (fun (i : int) => out.[48 + i]);
    out2 <- Array48.init (fun (i : int) => out.[2 * 48 + i]);
    out3 <- Array48.init (fun (i : int) => out.[3 * 48 + i]);
    (_0, out0, out1, out2, out3) <@
      A48avx2x4.MM._squeeze_updstate_avx2x4(st, out0, out1, out2, out3, len);
    out <-
      Array192.init
        (fun (i : int) => if 0 <= i < 0 + 48 then out0.[i - 0] else out.[i]);
    out <-
      Array192.init
        (fun (i : int) =>
           if 48 <= i < 48 + 48 then out1.[i - 48] else out.[i]);
    out <-
      Array192.init
        (fun (i : int) =>
           if 2 * 48 <= i < 2 * 48 + 48 then out2.[i - 2 * 48] else out.[i]);
    out <-
      Array192.init
        (fun (i : int) =>
           if 3 * 48 <= i < 3 * 48 + 48 then out3.[i - 3 * 48] else out.[i]);
    
    return out;
  }

  proc sign_commit_x4 (commitments:W8.t Array321792.t,
                       seeds:W8.t Array311736.t, salt:W8.t Array32.t,
                       round:int, player:int) : W8.t Array321792.t = {
    var c:W8.t Array32.t;
    var b:W8.t Array96.t;
    var a:W8.t Array192.t;
    var r:W64.t;
    var round16:W16.t;
    var player16:W16.t;
    var round_idx:int;
    var base:int;
    var offset:int;
    a <- witness;
    b <- witness;
    c <- witness;
    c <- salt;
    round_idx <- round;
    base <- player;
    base <- (base * 24);
    base <- (base + ((31 - 16) * 24));
    offset <- round;
    offset <- (offset * (31 * 24));
    base <- (base + offset);
    b <- (Array96.init (fun i => seeds.[(base + i)]));
    round_idx <- (round_idx * 16);
    round_idx <- (round_idx * 48);
    offset <- player;
    offset <- (offset * 48);
    round_idx <- (round_idx + offset);
    a <- (Array192.init (fun i => commitments.[(round_idx + i)]));
    r <- (W64.of_int round);
    round16 <- (truncateu16 r);
    player16 <- (W16.of_int player);
    a <@ commit_x4 (a, b, c, round16, player16);
    commitments <-
    (Array321792.init
    (fun i => (if (round_idx <= i < (round_idx + 192)) then a.[(i -
                                                               round_idx)] else 
              commitments.[i]))
    );
    return commitments;
  }

}.
