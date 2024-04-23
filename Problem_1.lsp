;; Project 3 Taurine Titans

;; Problem 1

;; Return T if item is a member of set.

;; Return NIL if item is not a member of set.

;; The type of set is list.

;; Examples:

;;  (set-member '(1 2) 1) => T

;;  (set-member '(1 2) 3) =>  NIL

(defun set-member (set item)
  ;; Base case: If the set is empty, return NIL
  (if (EQUAL set ())
      NIL
    ;; Check if the item matches the first element of the set
    (or (eq item (car set))
        ;; If not, recursively check the rest of the set
        (set-member (cdr set) item))))

;; Example usage
 
  (set-member '(1 2 3 4 5) 1) ; Should return T
  (print (set-member '(1 2 3 4 5) 1) ) ;; So it can print T
