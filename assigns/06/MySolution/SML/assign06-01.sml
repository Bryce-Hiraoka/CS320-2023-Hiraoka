(* ****** ****** *)
use
"./../../../../mysmlib/mysmlib-cls.sml";
(* ****** ****** *)

(*
HX-2023-03-24: 10 points
The following is a well-known series:
ln 2 = 1 - 1/2 + 1/3 - 1/4 + ...
Please implement a stream consisting of all the partial
sums of this series.
The 1st item in the stream equals 1
The 2nd item in the stream equals 1 - 1/2
The 3rd item in the stream equals 1 - 1/2 + 1/3
The 4th item in the stream equals 1 - 1/2 + 1/3 - 1/4
And so on, and so forth
//
*)

(* ****** ****** *)

(*
val the_ln2_stream: real stream = fn() => ...
*)

(* ****** ****** *)

val the_ln2_stream: real stream = fn() =>
    let
      fun helper(n, acc, sign)() =
        let
          val nxt = acc + (sign / n)
          val nxt_sign = if sign < 0.0 then 1.0 else ~1.0
        in
          strcon_cons(nxt, (helper(n + 1.0, nxt, nxt_sign)))
        end
    in
      helper(1.0, 0.0, 1.0)()
    end

(* end of [CS320-2023-Spring-assign06-01.sml] *)