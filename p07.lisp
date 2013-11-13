;;;; Flatten a nested list structure.
;;;; Transform a list, possibly holding lists as elements into a `flat' list by replacing each list with its elements (recursively).
;;;;
;;;; Example:
;;;; * (my-flatten '(a (b (c d) e)))
;;;;   (A B C D E)

;; @author Ashwin Ramesh

(defun my-flatten (L)
    (cond
        ((null L)
          nil)
        ((not (listp L)) ; atom
          (list L))
        ((= 1 (length L)) ; atom
          (my-flatten (first L)))
        (T
          (append (my-flatten (first L)) (my-flatten (rest L))))))
