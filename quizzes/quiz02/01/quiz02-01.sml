use "./../../../mysmlib-cls.sml"

val strlen = foreach_to_length(string_foreach)
val strsub = foreach_to_get_at(string_foreach)

fun quiz02_01(word: string): char => int =
    let
        fun helper (index, counter) =
            if (i < strlen(word)) 
                then
                    let
                        val ch = strsub(word, index)
                        val new_count = if (c = ch) then counter + 1 else counter
                    in
                        helper(index + 1, new_count)
                    end
                else
                    counter
    in
        helper (0, 0)
    end

