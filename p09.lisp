;;;;  Pack consecutive duplicates of list elements into sublists.
;;;; If a list contains repeated elements they should be placed in separate sublists.
;;;;
;;;; Example:
;;;; * (pack '(a a a a b c c a a d e e e e))
;;;;   ((A A A A) (B) (C C) (A A) (D) (E E E E))

;; @author Ashwin Ramesh

;; convert a list of atoms into a list of conscutive atom lists
(defun pack (L)
  (cond
    ((null L) nil)
    (T
      (cons (cons-list L) (pack (rest-list L))))))

;; return a list of consecutive atoms
(defun cons-list (L)
    (cond
      ((null L) nil)
      ((null (rest L)) L)
      ((equal (nth 0 L) (nth 1 L))
        (cons (nth 0 L) (cons-list (rest L))))
      (T
        (list (first L)))))

;; return the rest of the list after consecutive atoms
(defun rest-list (L)
  (cond
    ((null L) nil)
    ((null (rest L)) nil)
    ((equal (nth 0 L) (nth 1 L))
      (rest-list (rest L)))
    (T
      (rest L))))
