;;;;Reverse a list.

;; @author Ashwin Ramesh

(defun reverse-list(L)
  (cond
    ((null L)
     nil)
    ((null (rest L))
     L)
    (T
     (append (last L) (reverse-list (butlast L))))))
