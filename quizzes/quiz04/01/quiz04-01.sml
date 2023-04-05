(* ****** ****** *)
use "./../../../mysmlib/mysmlib-cls.sml";
(* ****** ****** *)

fun alphabeta_cycle_list(): char stream =
let
    val theAlphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    fun helper(i) = 
      if i > 25 then helper(0) 
      else strcon_cons(String.sub(theAlphabet, i), fn () => cycle (i + 1))
  in
    helper(0)
  end

(* ****** ****** *)

(* end of [CS320-2023-Spring-quizzes-quiz04-01.sml] *)