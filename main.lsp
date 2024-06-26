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
  (COND
    ((set-member set-2 (CAR set-1)) (set-union (CDR set-1) set-2))
    ;;If 1st entry of set-1 is in set 2, calls set-union with remainder of set-1
    ((EQUAL '() set-1) set-2) ;;If set-1 is null, returns set-2
    (T (CONS (CAR set-1) (set-union (CDR set-1) set-2)))))
    ;;If neither of previous statements  trigger, adds 1st element of set-1 to list
    ;;constructed recursively


;; Return the intersection of set-1 and set-2. The result should contain no duplicates.
;; Assume set-1 contains no duplicates and set-2 contains no duplicates.
;; Examples: (set-intersection '(1 2) '(2 4)) => '(2)
(defun set-intersection (set-1 set-2)
  (COND
    ((EQUAL '() set-1) NIL)  ; If set-1 is empty, return nil
    ((set-member set-2 (CAR set-1)) (CONS (CAR set-1) (set-intersection (CDR set-1) set-2)))
    ;;If first element of set 1 is in set 2, adds first element to list created recursively.
    (T (set-intersection (CDR set-1) set-2)))) ;;If not, recurses with rest of set-1.



;; Return the difference of set-1 and set-2. The result should contain no duplicates.
;; Assume set-1 contains no duplicates and set-2 contains no duplicates.
;; Examples: (set-diff '(1 2) '(2 4)) => '(1)
(defun set-diff (set-1 set-2)
  (COND
    ((EQUAL '() set-1) NIL) ;;If set 1 is empty, returns nill.
    ((set-member set-2 (CAR set-1)) (set-diff (CDR set-1) set-2))
    ;;If 1st entry of set-1 is in set-2, calls set-diff with remainder of set-1.
    (T (CONS (CAR set-1) (set-diff (CDR set-1) set-2)))))
    ;;If neither of previous statements  trigger, adds 1st element of set-1 to list


;; Return the exclusive or of a and b.
;; Examples:      (boolean-xor t nil) => t        (boolean-xor nil nil) => nil
(defun boolean-xor (a b)
  (OR (AND a (NOT b)) (AND (NOT a) b))) ;;Either a (not b) or b (not a).


;; Return the implication of a and b. A implies B. Only false when A is true, B is false.
;; Examples:   (boolean-implies t nil) => nil        (boolean-implies nil nil) => t
(defun boolean-implies (a b)
  (OR (NOT a) b) ;;True when b is true. True if a is false. False if a is true, b is false.
  )



;; Return the bi-implication (if and only if) of a and b
;; Examples:  (boolean-iff t nil) => nil       (boolean-iff nil nil) => t
;;Only False when A =/= B. True if both are true, or both are false.
(defun boolean-iff (a b)
  (EQUAL a b))




;; Evaluate a boolean expression.
;; Handle NOT, AND, OR, XOR, IMPLIES, and IFF.
;; We will assume boolean expression is given in lower-case, like the examples below.
;;
;; Examples:
;;       (boolean-eval '(and t nil)) => nil     (boolean-eval '(and t (or nil t)) => t
(defun boolean-eval (exp)
  (COND
    ((or (EQUAL exp NIL) (EQUAL exp T)) exp)
    ((EQUAL (CAR exp) 'not) (NOT (boolean-eval (SECOND exp))))
    ((EQUAL (CAR exp) 'and) (AND (boolean-eval (SECOND exp)) (boolean-eval (THIRD exp))))
    ((EQUAL (CAR exp) 'or) (OR (boolean-eval (SECOND exp)) (boolean-eval (THIRD exp))))
    ((EQUAL (CAR exp) 'xor) (boolean-xor (boolean-eval (SECOND exp)) (boolean-eval (THIRD exp))))
    ((EQUAL (CAR exp) 'implies) (boolean-implies (boolean-eval (SECOND exp)) (boolean-eval (THIRD exp))))
    ((EQUAL (CAR exp) 'iff) (boolean-iff (boolean-eval (SECOND exp)) (boolean-eval (THIRD exp))))))
