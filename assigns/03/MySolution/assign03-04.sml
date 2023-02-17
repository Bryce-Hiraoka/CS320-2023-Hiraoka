(* ****** ****** *)
(*
use "./../assign03.sml";
use "./../assign03-lib.sml";
*)
(* ****** ****** *)

(*
HX-2023-02-10: 20 points
Given a list of integers xs,
please implement a function that find
the longest ascending subsequences of [xs].
If there are more than one such sequences,
the left most one should be returned.

fun list_longest_ascend(xs: int list): int list
*)

fun list_longest_ascend(xs: int list): int list =
let
    fun size(xs: int list): int =
    let
        fun size_help(xs: int list, i: int): int =
            case xs of 
            [] => i
            | x::xs => size_help(xs, i + 1)
    in
        size_help(xs, 0)
    end

    fun head_size(xs: int list, ys: int list): int list =
        if size(xs) >= size(ys) then xs
        else ys


    fun helper(xs: int list): int list =
    case xs of
    [] => []
    | [x] => [x]
    | x::y::xs => if x <= y then head_size([x] @ helper(y::xs), helper(x::xs))
                  else helper(x::xs)

in
case xs of
[] => []
| x::ys => 
if size(helper(xs)) >= size(list_longest_ascend(ys)) then helper(xs) else list_longest_ascend(ys)

end


(* ****** ****** *)

(* end of [CS320-2023-Spring-assign03-04.sml] *)
