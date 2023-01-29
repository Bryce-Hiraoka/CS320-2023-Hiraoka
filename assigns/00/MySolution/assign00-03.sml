use "./../assign00-lib.sml";

fun int2str(i: int): string =
let
    fun helper(a: int): string =
        let
            val b = Char.chr (a + 48)
        in
            String.str (b)
        end
    fun getlastnum(c: int): int =
        c mod 10
in 
    if i < 10 then helper(i) else int2str(i div 10) ^ helper(getlastnum(i))
end