;; Return the union of set-1 and set-2.

;; The result should contain no duplicates.

;; Assume set-1 contains no duplicates and set-2 contains no duplicates.

;; Examples:

;;   (set-union '(1 2) '(2 4)) => '(1 2 4)

(defun set-union (set-1 set-2)
  ;;Resource used:https://www.geeksforgeeks.org/sets-in-lisp/ 

 (DEFINE (append set-1 set-2))
  (COND
    ((NULL set-1) set-2)
    (ELSE (CONS (CAR set-1)
            (APPEND (CDR set-1) set-2)))
  )
  (print (set-member '(1 2) '(2 4))) ;; Should print (1 2 3 4)
  

)