;;;; Run-length encoding of a list (direct solution).
;;;; Implement the so-called run-length encoding data compression method directly. I.e. don't explicitly create the sublists containing the duplicates, as in problem P09, but only count them. As in problem P11, simplify the result list by replacing the singleton lists (1 X) by X.
;;;; Example:
;;;; * (encode-direct '(a a a a b c c a a d e e e e))
;;;;   ((4 A) B (2 C) (2 A) D (4 E))

;; @author Ashwin Ramesh

(defun encode-direct(L)
  (cond
    ((null L) nil)
    (T
      (cons (singleton (encode L)) (encode-direct (rest-list L))))))

(defun encode(L)
  (cond
    ((null L) nil)
    ((null (rest L))
      (list '1 (first L)))
    ((equal (nth 0 L) (nth 1 L))
      (list (+ 1 (first (encode (rest L)))) (nth 0 L)))
    (T
      (list '1 (first L)))))

(defun rest-list (L)
  (cond
    ((null L) nil)
    ((null (rest L)) nil)
    ((equal (nth 0 L) (nth 1 L))
      (rest-list (rest L)))
    (T
      (rest L))))

(defun singleton (L)
  (cond
    ((null L) nil)
    ((= (first L) 1) (nth 1 L))
    (T L)))
