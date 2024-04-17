;; Return the union of set-1 and set-2.

;; The result should contain no duplicates.

;; Assume set-1 contains no duplicates and set-2 contains no duplicates.

;; Examples:

;;   (set-union '(1 2) '(2 4)) => '(1 2 4)

(defun set-union (set-1 set-2)
;;
  (cond
    ((null set-1) set-2)
    (t (cons (car set-1)
             (set-union (cdr set-1) set-2)))))

;; Example usage
(print (set-union '(1 2) '(2 4))) ;; Should print (1 2 4)

  

