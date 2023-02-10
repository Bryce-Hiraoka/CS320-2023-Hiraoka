####################################################
import sys
sys.path.append('..')
from assign02 import *
####################################################
print("[import ./../assign02.py] is done!")
####################################################
#
# Please implement (20 points)
# mylist_append (see list_append in assign02.sml)
def mylist_append (xs, ys):
    # checks if my_list xs is empty using function mylist_nilq; if my_list xs is empty return ys
    if (mylist_nilq(xs)):
        return ys
    else:
    # creates a new mylist_cons with the head of xs as the head and a recursive call to mylist_append as the tail
    # return the resulting my_list
        return mylist_cons(xs.cons1, mylist_append(xs.cons2, ys))

# mylist_rappend (see list_rappend in assign02.sml)
def mylist_rappend (xs, ys):
    # checks if my_list xs is empty using function mylist_nilq; if my_list xs is empty return ys
    if (mylist_nilq(xs)):
        return ys
    else:
        # recursive call to my list_rappend where xs is now the tail of xs
        # creation of new mylist_con with the head of xs as the head and ys as the tail
        # return the result
        return mylist_rappend(xs.cons2, mylist_cons(xs.cons1, ys))


# mylist_reverse (see list_reverse in assign02.sml)
def mylist_reverse (xs):
    # returns the result of a call to mylist_rappend with xs and a epmty my list
    return mylist_rappend(xs, mylist_nil())


####################################################
