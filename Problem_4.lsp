;; Return the difference of set-1 and set-2.

;; The result should contain no duplicates.

;; Assume set-1 contains no duplicates and set-2 contains no duplicates.

;;

;; Examples:

;;   (set-diff '(1 2) '(2 4)) => '(1)

(defun set-diff (set-1 set-2)
    ;; Resource: https://www.geeksforgeeks.org/sets-in-lisp/
"Calculate the intersection of SET-1 and SET-2."
  (cond ((null set-1) nil)  ; If set-1 is empty, return nil
        ((member (car set-1) set-2) ; If the first element of set-1 is in set-2
         (cons (car set-1)                ; Cons that element
               (set-intersection (cdr set-1) set-2))) ; Recur with the rest of set-1
        (t (set-intersection (cdr set-1) set-2))) ; Otherwise, recur with the rest of set-1

)