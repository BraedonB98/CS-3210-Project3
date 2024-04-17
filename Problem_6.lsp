;; Return the implication of a and b

;;

;; Examples:

;;  (boolean-implies t nil) => nil

;;  (boolean-implies nil nil) => t

(defun boolean-implies (a b)
  (or (not a) b))

;; Example usage
(print (boolean-implies t t)) ; Should print T
(print (boolean-implies t nil)) ; Should print NIL
(print (boolean-implies nil t)) ; Should print T
(print (boolean-implies nil nil)) ; Should print T
