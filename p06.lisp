;;;;Find out whether a list is a palindrome.
;;;;A palindrome can be read forward or backward; e.g. (x a m a x).

;; @author Ashwin Ramesh

(defun is-palindrome(L)
  (cond
    ((null L)
     nil)
    ((= 1 (length L))
     T)
    ((= 2 (length L))
     (if (eq (first L) (first (last L)))
         T
         nil)
    )
    (T
     (if (eq (first L) (first (last L)))
         (is-palindrome (butlast (rest L)))
         nil))))
