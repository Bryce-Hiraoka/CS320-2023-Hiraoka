(* ****** ****** *)
use "./../../mysmlib/mysmlib-cls.sml";
(* ****** ****** *)
(*
HX-2023-03-01: midterm1-01: 10 points
*)
(* ****** ****** *)
(*
Given a list xs, list_pairing(xs) returns
a list of pairs and an option; the 1st pair
consists of the first and last elements in xs,
and the 2nd pair consists of the second and the
second last elements in xs, and so on and so forth;
and the option is NONE if |xs| is even, and it is
SOME(xm) if |xs| is odd and xm is the middle element
in xs.
//
For instance, we have:
//
list_pairing([]) = ([], NONE)
list_pairing([1]) = ([], SOME(1))
list_pairing([1,2]) = ([(1,2)], NONE)
list_pairing([1,2,3]) = ([(1,3)], SOME(2))
list_pairing([1,2,3,4]) = ([(1,4),(2,3)], NONE)
//
*)
(* ****** ****** *)
(*
fun
list_pairing
(xs: 'a list): ('a * 'a) list * 'a option = ...
*)
(* ****** ****** *)

fun list_pairing(xs: 'a list): ('a * 'a) list * 'a option =
let
    val list = []
    val reverse = list_reverse(xs)
    val ind = 0
    fun list_size(xs: a' list, size: int): int = 
        case xs of:
            nil => size
            | x :: xs => list_size(xs, size + 1)
    val half = list_size(xs, 0) / 2
    val hold = 0

    fun helper(xs: 'a list, index: int) 'a:
        case xs of:
        nil => 
        | x :: xs => if index = 0 then x else helper(xs, index - 1)
in
        if (list_size(xs, 0) mod 2 = 0) then 
            case xs of:
            nil => list
            | x :: xs => list @ (x, helper(reverse, ind)) 
                          ind = ind + 1
        else 
            case xs of:
            nil => list @ SOME(hold)
            | x :: xs =>if (if ind = half) then
                            hold = x
                            ind + 1
                        else 
                            list @ (x, helper(reverse, ind)) 
                            ind = ind + 1
end

(* end of [CS320-2023-Spring-midterm1-list_pairing.sml] *)
