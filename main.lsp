;; Return T if item is a member of list. Return NIL if item is not a member of list.
;; Examples:  (set-member '(1 2) 1) => T          (set-member '(1 2) 3) =>  NIL
(defun set-member (set item)
  (if (EQUAL set '() ) ;; Base case: If the set is empty, return NIL
      NIL
    (or (EQUAL item (CAR set) ) ;; Check if the item matches the first element of the set
        (set-member (CDR set) item)))) ;; If not, recursively check the rest of the set


;; Return the union of set-1 and set-2.
;; The result should contain no duplicates.
;; Assume set-1 contains no duplicates and set-2 contains no duplicates.
;; Examples:(set-union '(1 2) '(2 4)) => '(1 2 4)
(defun set-union (set-1 set-2)
  (cond
    ((set-member set-2 (CAR set-1)) (set-union (CDR set-1) set-2))
    ;;If 1st entry of set-1 is in set 2, calls set-union with remainder of set-1
    ((EQUAL '() set-1) set-2) ;;If set-1 is null, returns set-2
    (t (CONS (CAR set-1) (set-union (CDR set-1) set-2)))))
    ;;If neither of previous statements  trigger, adds 1st element of set-1 to list
    ;;constructed recursively


;; Return the intersection of set-1 and set-2. The result should contain no duplicates.
;; Assume set-1 contains no duplicates and set-2 contains no duplicates.
;; Examples: (set-intersection '(1 2) '(2 4)) => '(2)
(defun set-intersection (set-1 set-2)
  (cond
    ((EQUAL '() set-1) nil)  ; If set-1 is empty, return nil
    ((set-member set-2 (CAR set-1)) (CONS (CAR set-1) (set-intersection (CDR set-1) set-2)))
    ;;If first element of set 1 is in set 2, adds first element to list created recursively.
    (t (set-intersection (cdr set-1) set-2)))) ;;If not, recurses with rest of set-1.


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Return the difference of set-1 and set-2.
;; The result should contain no duplicates.
;; Assume set-1 contains no duplicates and set-2 contains no duplicates.
;;
;; Examples:
;;   (set-diff '(1 2) '(2 4)) => '(1)
(defun set-diff (set-1 set-2)
  ;;Your implementation go here
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Return the exclusive or of a and b
;;
;; Examples:
;;  (boolean-xor t nil) => t
;;  (boolean-xor nil nil) => nil
(defun boolean-xor (a b)
  ;;Your implementation go here
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Return the implication of a and b
;;
;; Examples:
;;  (boolean-implies t nil) => nil
;;  (boolean-implies nil nil) => t
(defun boolean-implies (a b)
;;<Your implementation go here >
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Return the bi-implication (if and only if) of a and b
;;
;; Examples:
;;  (boolean-iff t nil) => nil
;;  (boolean-iff nil nil) => t
(defun boolean-iff (a b)
;;<Your implementation go here >
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Evaluate a boolean expression.
;; Handle NOT, AND, OR, XOR, IMPLIES, and IFF.
;;
;; Examples:
;;  (boolean-eval '(and t nil)) => nil
;;  (boolean-eval '(and t (or nil t)) => t
(defun boolean-eval (exp)
;;<Your implementation go here >
)
