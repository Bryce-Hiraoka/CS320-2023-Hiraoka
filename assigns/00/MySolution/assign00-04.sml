use "./../assign00-lib.sml";

fun str2int(cs: string): int =
let
    val str_len = String.size (cs)

    fun helper(a: string, b: int): int =
        let
            val c = String.sub(a, 0)
        in
            Char.ord (c) - 48
        end
    fun restofnum(d: int): int =
        let
            val ten = 10
        in
            if (d = 1) then 1
            else ten * restofnum(d-1)
        end
    fun remaining(e: string, f: int): string =
        let
            val size = String.size(e)
            val next = String.str(String.sub(e, f))
        in
            if (f = size - 1) then next
            else next ^ remaining(e, f+1)
        end
in
    if (str_len = 1) then helper(cs, 0) else helper(cs, 0) * restofnum(str_len) + str2int(remaining(cs, 1))
end