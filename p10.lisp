;;;; Run-length encoding of a list.
;;;; Use the result of problem P09 to implement the so-called run-length encoding data compression method. Consecutive ;;;; duplicates of elements are encoded as lists (N E) where N is the number of duplicates of the element E.
;;;;
;;;; Example:
;;;; * (encode '(a a a a b c c a a d e e e e))
;;;;   ((4 A) (1 B) (2 C) (2 A) (1 D)(4 E))

;; @author Ashwin Ramesh

;; convert a list of atoms into a list of conscutive atom lists

(load "p09.lisp");

(defun do-encode (L)
  (cond
    ((null L) nil)
    ((null (rest L))
      (list (cons (length (first L)) (list (first (first L))))))
    (T
      (append (do-encode (list (first L))) (do-encode (rest L))))))

(defun encode(L)
  (do-encode (pack L)))
