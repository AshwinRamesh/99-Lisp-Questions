;;;; Find the last but one box of a list.
;;;; Example:
;;;; * (my-but-last '(a b c d))
;;;;   (C D)

;; @author Ashwin Ramesh

(defun my-but-last(L)
    (if (null L)
        nil
    )
    (if (= (length L) 1)
        L
    )
    (if (= (length L) 2)
        L
        (my-but-last (rest L))
    )
)

