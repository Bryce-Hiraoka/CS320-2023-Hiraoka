(* ****** ****** *)
use "./list_pairing.sml";
(* ****** ****** *)

(* ****** ****** *)

(* ****** ****** *)
val() = if(list_averages([]) = [] andalso list_averages([1.0,2.0,3.0]) = [1.0,1.5,2.0] andalso ist_averages([1.0,2.0,3.0,4.0]) = [1.0,1.5,2.0,2.5])
then print("passed")
else print("not passed")

val()

(* ****** ****** *)

(* ****** ****** *)

(* end of [CS320-2023-Spring-quizzes-midterm1-02-test.sml] *)