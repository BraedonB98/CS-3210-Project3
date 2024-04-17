;; Evaluate a boolean expression.

;; Handle NOT, AND, OR, XOR, IMPLIES, and IFF.

;;

;; Examples:

;;  (boolean-eval '(and t nil)) => nil

;;  (boolean-eval '(and t (or nil t)) => t

(defun boolean-eval (exp)
    ;;if and only if(iff)
    (boolean-iff t t)
    ;;Implcation
    (boolean-implies t t)
    ;;XOR
    (boolean-xor t t) 
    ;;NOT
    (EQUAL (NOT a) b)
    ;;AND
    (AND a b)
    ;;OR
    ()



)
    ;;Not print here :)

    ;;And goes here