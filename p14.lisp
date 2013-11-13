;;;; Duplicate the elements of a list.
;;;; Example:
;;;; * (dupli '(a b c c d))
;;;;   (A A B B C C C C D D)

;; @author Ashwin Ramesh

(defun dupli (L)
  (cond
    ((null L) nil)
    (T
      (append (list (first L) (first L)) (dupli (rest L))))))
