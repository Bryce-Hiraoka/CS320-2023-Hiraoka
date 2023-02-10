####################################################
import sys
sys.path.append('..')
from assign02 import *
from assign02_01 import *
####################################################
print("[import ./../assign02.py] is done!")
####################################################
#
# Please implement (10 points)
# mylist_quicksort (see list_quicksort in assign02.sml)
#

def mylist_quicksort(xs):
    def myqsort(xs):
        if mylist_nilq(xs):
            return mylist_nil()
        else:
            (ys, zs) = myqpart(xs.cons2, xs.cons1)
            ys = myqsort(ys) 
            zs = myqsort(zs)
            return mylist_append(ys, mylist_append(mylist_cons(xs.cons1, mylist_nil()), zs))
    
    def myqpart(xs, p0):
        if mylist_nilq(xs):
            return (mylist_nil(), mylist_nil())
        else:
            (ys,zs) = myqpart(xs.cons2, p0)
            if xs.cons1 <= p0:
                return (mylist_cons(xs.cons1, ys), zs)
            else:
                return (ys, mylist_cons(xs.cons1, zs))
    return myqsort(xs)
    

####################################################
