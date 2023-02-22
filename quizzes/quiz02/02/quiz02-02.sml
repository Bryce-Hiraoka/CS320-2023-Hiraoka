use "./../../../mysmlib-cls.sml"

val abs = fn(x: int) => if x >= 0 then x else ~x

val quiz02_02: (xs: int list,ys: int list): bool =
    let
        fun helper(x: int, ys: int list) =
            case ys of
                [] => false
              | y::ys =>
                  if abs(x - y) < 10 then
                      true
                  else
                      helper(x, ys)
    in
        case xs of
            [] => false
          | x::xs =>
              if helper(x, ys) then
                  true
              else
                  existsPair(xs, ys)
    end