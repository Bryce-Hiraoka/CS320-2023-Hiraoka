use "./../assign00-lib.sml";

fun stringrev(cs: string): string =
let
    val c = String.size (cs)
    fun restofstr(a: string, b: int): string =
        let
            val next = String.str(String.sub(a, b))
        in
            if (b = 0) then next
            else next ^ restofstr(a, b - 1)
        end
in
    if String.size (cs) = 0 then "" else restofstr(cs, c - 1)
end