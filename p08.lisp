;;;; Eliminate consecutive duplicates of list elements.
;;;; If a list contains repeated elements they should be replaced with a single copy of the element. The order of the ;;;; elements should not be changed.
;;;;
;;;; Example:
;;;; * (compress '(a a a a b c c a a d e e e e))
;;;;   (A B C A D E)

;; @author Ashwin Ramesh

(defun compress (L)
    (cond
      ((null L) nil)
      ((null (cdr L)) L)
      ((eq (nth 0 L) (nth 1 L))
        (compress (rest L)))
      (T
        (append (list (first L)) (compress (rest L))))))
