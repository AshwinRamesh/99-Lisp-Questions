;;;; Rotate a list N places to the left.
;;;; Examples:
;;;; * (rotate '(a b c d e f g h) 3)
;;;; (D E F G H A B C)
;;;; * (rotate '(a b c d e f g h) -2)
;;;; (G H A B C D E F)

;; @author Ashwin Ramesh

(defun rotate (L N)
  (cond
    ((null L) nil)
    ((null N) nil)
    ((= N 0) L) ;; rotation by nothing
    ((< N 0) (rotate L (+ (length L) N))) ;; covert negative to positive
    ((<= (length L) (abs N))
      (rotate L (mod N (length L)))) ;; where there rotation is higher than length either way
    (T
      (rotate (append (rest L) (list (first L))) (- N 1))))) ;; otherwise rotate by one place
