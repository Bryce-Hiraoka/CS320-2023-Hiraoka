(* ****** ****** *)
use
"./../../../../mysmlib/mysmlib-cls.sml";
(* ****** ****** *)

(*
HX-2023-04-07: 20 points
Given a list xs, stream_permute_list(xs) returns
a stream of ALL the permutations of xs.
For instance, if xs = [1,2,3], then the returned
stream should enumerate the following 6 lists:
[1,2,3], [1,3,2], [2,1,3], [2,3,1], [3,1,2] and [3,2,1]
//
fun
stream_permute_list(xs: 'a list): 'a list stream = ...
//
*)

(* ****** ****** *)

fun stream_permute_list(xs: 'a list): 'a list stream =
 let
    fun perm(x, []) = [[x]]
      |perm(x, (y :: y1)) = (x :: y :: y1) :: list_map((perm(x,y1)), (fn y1 => y::y1))

    fun helper([]) = list_streamize [[]]
      |helper((x :: xs)) = 
        stream_concat(stream_make_map(helper(xs), (fn x1 => list_streamize(perm(x,x1))))) 
  in
    helper(xs)
  end

(* end of [CS320-2023-Spring-assign08-01.sml] *)
