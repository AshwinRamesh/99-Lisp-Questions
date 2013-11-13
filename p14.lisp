;;;; Replicate the elements of a list a given number of times.
;;;; Example:
;;;; * (repli '(a b c) 3)
;;;;   (A A A B B B C C C)

;; @author Ashwin Ramesh

(defun dupli (L N)
  (cond
    ((null L) nil)
    ((<= N 0) nil)
    (T
      (append (do-dupli (first L) N) (dupli (rest L) N)))))

(defun do-dupli (E N)
  (cond
    ((= N 1)
     (list E))
    (T
      (append (list E) (do-dupli E (- N 1))))))
