(define (double x)
  (+ x x))

(define (halve x)
  (/ x 2))

(define (mult a b)
  (mult-iter a b 0))

(define (mult-iter a b x)
  (cond ((= a 0) x)
        ((= b 0) x)
        ((even? b) (mult-iter (double a) (halve b) x))
	(else (mult-iter a (- b 1) (+ x a)))))

(mult 5 5)
(mult 3 4)
(mult 1 6)
(mult 6 1)
(mult 0 10)
(mult 10 0)
