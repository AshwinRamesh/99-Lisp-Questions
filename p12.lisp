;;;; Decode a run-length encoded list.
;;;; Given a run-length code list generated as specified in problem P11. Construct its uncompressed version.
;;;; * (decode '((4 A) B (2 C) (2 A) D (4 E)))
;;;;   (a a a a b c c a a d e e e e)
;; @author Ashwin Ramesh

(load "p11.lisp");

(defun decode (L)
  (cond
    ((null L) nil)
    ((null (rest L)) (decode-block (first L)))
    (T
      (append (decode-block (first L)) (decode (rest L))))))

(defun decode-block (I)
  (cond
    ((null I) nil)
    ((not (listp I)) (list I))
    ((= (first I) 1) (list (nth 1 I))) ; return element
    (T
      (append (list (nth 1 I)) (decode-block (append (list (- (first I) 1)) (list (nth 1 I)) ))))))
