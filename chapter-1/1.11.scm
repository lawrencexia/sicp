(define (f x)
  (cond ((< x 3) x)
        (else (+ (f (- x 1)) 
                 (* 2 (f (- x 2)))
                 (* 3 (f (- x 3)))))))

(f 5)

(define (f x)
  (if (< x 3)
      x
      (f-iter 2 1 0 x)))

(define (f-iter a b c x)
  (if (< x 3)
      a
      (f-iter (+ a (* 2 b) (* 3 c))
              a
              b
              (- x 1))))

(f 5)
