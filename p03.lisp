;;;; Find the K'th element of a list.
;;;; The first element in the list is number 1.
;;;; Example:
;;;; * (element-at '(a b c d e) 3)
;;;;   C

;; @author Ashwin Ramesh

(defun element-at (L n)
  (cond
    ((not (listp L))
     nil)
    ((not (integerp n))
     nil)
    ((> n (list-length L))
     nil)
    ((<= n 0)
     nil)
    (T
      (nth (- n 1) L)))

