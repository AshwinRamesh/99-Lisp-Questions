;;;; Modified run-length encoding.
;;;; Modify the result of problem P10 in such a way that if an element has no duplicates it is simply copied into the ;;;; result list. Only elements with duplicates are transferred as (N E) lists.
;;;;
;;;; Example:
;;;; * (encode-modified '(a a a a b c c a a d e e e e))
;;;;   ((4 A) B (2 C) (2 A) D (4 E))

;; @author Ashwin Ramesh

;; convert a list of atoms into a list of conscutive atom lists

(load "p10.lisp");

(defun do-encode-modified (L)
  (cond
    ((null L) nil)
    ((and (null (rest L)) (= 1 (first (first L)))) ;; one list with only one repeat
      (list (nth 1 (first L)))) ;; return the character
    ((null (rest L))
      (list (first L))) ;; return the list (N E)
    (T
      (append (do-encode-modified (list (first L))) (do-encode-modified (rest L))))))

(defun encode-modified (L)
  (do-encode-modified (encode L)))
