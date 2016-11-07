(define (square-sum-largest-2 a b c)
	(cond ((and (> a c) (> b c)) (+ (* a a) (* b b)))
              ((and (> a b) (> c b)) (+ (* a a) (* c c)))
              (else (+ (* b b) (* c c)))))

(square-sum-largest-2 3 4 5)
(square-sum-largest-2 3 2 1)
(square-sum-largest-2 3 3 3)
(square-sum-largest-2 3 2 4)

