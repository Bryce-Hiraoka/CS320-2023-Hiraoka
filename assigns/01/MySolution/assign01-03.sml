use "./../assign01-lib.sml";
use"./../assign01.sml";

  fun xlist_remove_reverse (xs: 'a xlist): 'a xlist =
    let
      fun reverse_helper (xs: 'a xlist): 'a xlist =
        case xs of
          xlist_nil => xlist_nil
          | xlist_cons (x, xs) => xlist_snoc(xlist_remove_reverse(xs), x)
          | xlist_snoc (xs, x) => xlist_cons(x, xlist_remove_reverse(xs))
          | xlist_append (xs, ys) => xlist_append (xlist_remove_reverse(ys), xlist_remove_reverse(xs))
          | xlist_reverse xs => xlist_reverse(xlist_remove_reverse(xs))
    in
      case xs of
       xlist_nil => xlist_nil
       | xlist_cons (x, xs) => xlist_cons (x, xlist_remove_reverse(xs))
       | xlist_snoc (xs, x) => xlist_snoc(xlist_remove_reverse(xs), x)
       | xlist_append (xs, ys) => xlist_append (xlist_remove_reverse(xs), xlist_remove_reverse(ys))
       | xlist_reverse (xs) => reverse_helper(xs)
    end