;;;;Find the number of elements of a list.

;; @author Ashwin Ramesh

(defun count-list(L)
  (cond
    ((null L)
     nil)
    ((null (rest L))
     1)
    (T
      (+ 1 (count-list (rest L))))))
