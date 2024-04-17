;; Return the exclusive or of a and b

;;

;; Examples:

;;  (boolean-xor t nil) => t

;;  (boolean-xor nil nil) => nil

(defun boolean-xor (a b)

  (if (and a (not b))
    t
    (if (and (not a) b)
        t  
        NIL)))

    ;;Example
(print (boolean-xor t t)) ; Should print NIL
(print (boolean-xor NIL t)) ; Should print T
(print (boolean-xor t NIL)) ; Should print T
(print (boolean-xor NIL NIL)) ; Should print NIL