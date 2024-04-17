;; Return the bi-implication (if and only if) of a and b

;;

;; Examples:

;;  (boolean-iff t nil) => nil

;;  (boolean-iff nil nil) => t

(defun boolean-iff (a b)

    (EQUAL a b))

(print (boolean-iff t t)) ; Should print T
(print (boolean-iff t nil)) ; Should print NIL
(print (boolean-iff nil t)) ; Should print NIL
(print (boolean-iff nil nil)) ; Should print T
  