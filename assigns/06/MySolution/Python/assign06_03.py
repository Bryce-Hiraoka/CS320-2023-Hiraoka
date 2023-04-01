####################################################
#!/usr/bin/env python3
####################################################
import sys
sys.path.append('./../../../../mypylib')
from mypylib_cls import *
####################################################
"""
HX-2023-03-24: 20 points
Solving the N-queen puzzle
"""
####################################################

def checker(board, row, col):
    for i in range(row):
        if (board[i] == col or (abs(row - i) == abs(board[i] - col))):
            return False
    return True  

def children_boards(bd, size):
    children = []
    n = 0
    
    while n < size:
        if bd[n] != 0:
            n += 1
        else:
            break
        
    for i in range(1, size + 1):
        if checker(bd, n, i):
            valid = bd[:]
            valid[n] = i
            children.append(valid)
            
    return children

def solve_N_queen_puzzle(n):
    board = []
    
    for i in range(n):
        board.append(0)
    
    search = gtree_dfs([board], lambda board: children_boards(board, n))
    final = stream_make_filter(search, lambda i: tuple(i) if i[-1] != 0 else None)
    return final

####################################################
