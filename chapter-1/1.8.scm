(define (close-enough? guess x)
  (< (abs (- (* guess guess guess) x)) 0.001))

(define (cube-estimate x y)
  (/ (+ (/ x (* y y)) (* 2 y)) 3))

(define (get-cube guess x)
  (if (close-enough? guess x)
    guess
    (get-cube (cube-estimate x guess)
              x)))

(cube-estimate 27 1)
(close-enough? 5 10)
(close-enough? 1 1.00001)
(get-cube 1.0 27)
(get-cube 1.0 1)
(get-cube 1.0 10)
