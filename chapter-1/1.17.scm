(define (double x)
  (* x 2))

(define (halve x)
  (/ x 2))


(define (mult a b)
  (cond ((= b 0) 0)
	((= a 0) 0)
        ((even? b) (double (mult a (halve b))))
        (else (+ a (mult a (- b 1))))))

(mult 5 5)
(mult 3 4)
(mult 1 9)
(mult 0 10)
(mult 10 0)
