(define (fast-expt b n)
  (fast-expt-iter b n 1))

(define (fast-expt-iter b n value)
  (cond ((= n 0) value)
        ((even? n) (fast-expt-iter (square b) (/ n 2) value))
        (else (fast-expt-iter b (- n 1) (* b value)))))

(fast-expt 6 4)
