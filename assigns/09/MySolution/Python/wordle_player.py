########################
# HX-2023-04-15: 20 points
########################
"""
Given a history of wordle hints, this function returns a
word as the player's guess.
"""
########################################################################
def wordle_guess(hints):
    word = ['_'] * len(hints[0])
    alphabet = set('abcdefghijklmnopqrstuvwxyz')
    x = set()

    for i in hints:
        for ind, (pos, char_guess) in enumerate(i):
            if pos == 1:
                word[ind] = char_guess
            elif pos == 2:
                x.add((ind, char_guess))
            else:
                alphabet.discard(char_guess)

    result = ""
    
    for c in word:
        result += c

    return result
########################################################################
