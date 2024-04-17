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
(let ((x t) (y nil))
    (format t "XO of ~A and ~A is: ~A~%" x y (boolean-xor x y)))