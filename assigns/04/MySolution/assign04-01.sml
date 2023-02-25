(* ****** ****** *)
use
"./../../../mysmlib/mysmlib-cls.sml";
(* ****** ****** *)

(*
HX-2023-02-16: 10 points
Please give a NON-RECURSIVE implementation
of isPrime that is based on combinators in
the mysmlib-library for this class.
*)

(* ****** ****** *)

(*
fun
isPrime(n0: int): bool =
let
fun
loop(i0: int): bool =
if
(i0 * i0 > n0)
then true else
(if n0 mod i0 = 0 then false else loop(i0+1))
in
  if n0 >= 2 then loop(2) else false
end
*)

(* ****** ****** *)

fun isPrime(num: int): bool = 
let
  exception NotPrime
  val x = ref num
  val checkPrime = fn() =>
    if (!x < 2 orelse !x = num orelse num mod !x>0)
    then x := !x - 2
    else
      raise NotPrime
in
  let
    val check = SOME(int0_foreach(num, checkPrime)) handle NotPrime => NONE
  in
    if (num < 2) then false
    else if (check = NONE) then false
    else true
  end
end


(* end of [CS320-2023-Spring-assign04-01.sml] *)
