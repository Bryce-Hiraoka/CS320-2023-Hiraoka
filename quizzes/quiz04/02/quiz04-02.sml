(* ****** ****** *)
use "./../../../mysmlib/mysmlib-cls.sml";
(* ****** ****** *)

datatype 'a stream = Cons of 'a * (unit -> 'a stream)

fun stream_dupfind (fxs: int stream) =
  let
    fun helper(prev: int, stream: int stream) =
      case stream of
        Cons(x, xs) =>
          if x = prev then
            helper(x, xs())
          else
            Cons(x, fn () => helper(x, xs()))
  in
    case fxs of
      Cons(x, xs) => Cons(x, fn () => helper(x, xs()))
  end

(* ****** ****** *)

(* end of [CS320-2023-Spring-quizzes-quiz04-02.sml] *)