(* ****** ****** *)
use
"./../../../../mysmlib/mysmlib-cls.sml";
(* ****** ****** *)

(*
//
HX-2023-03-31: 20 points
Please implement the following function
that enumerates all the pairs (i, j) of natural
numbers satisfying $i <= j$; a pair (i1, j1) must
be enumerated ahead of another pair (i2, j2) if the
following condition holds:
  i1*i1*i1 + j1*j1*j1 < i2*i2*i2 + j2*j2*j2
//
val
theNatPairs_cubesum: (int * int) stream = fn () =>
//
*)

(* ****** ****** *)

fun cube(cube: int): int =
  cube*cube*cube

fun create(n: int, m: int): (int*int) stream =
  fn () => strcon_cons((n,m), create(n, m+1))

fun checker(check1: (int*int), check2: (int*int)): bool =
  if ((cube(#1(check1)) + cube(#2(check1))) <= (cube(#1(check2)) + cube(#2(check2)))) then
    true
  else
    false

fun helper(xs: (int*int) stream, i: int): (int*int) stream = fn() =>
  case xs() of
    strcon_nil => strcon_nil
    |
    strcon_cons(x, xs) => strcon_cons(x, stream_merge2(create(i,i), helper(xs, i+1), fn(x1,y) => checker(x1,y)))

val theNatPairs_cubesum: (int * int) stream = 
  helper(create(0,0), 1)

(* end of [CS320-2023-Spring-assign07-02.sml] *)
