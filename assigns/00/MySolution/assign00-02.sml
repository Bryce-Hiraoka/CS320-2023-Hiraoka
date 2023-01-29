use "./../assign00-lib.sml";

fun isPrime(n: int): bool =
    let
        fun helper(n: int, divider: int) =
        if divider * divider > n then true
        else if n mod divider = 0 then false
        else helper(n, divider + 1)
    in
        if n = 2 then true
        else helper(n, 2)
    end