(define (square x) ( * x x))

(define (improve-cube guess x)
  (/
    (+
      (/
        x (square guess))
       (* 2 guess))
     3))

(define (not-improving? x y)
  (< (abs (- x y)) 0.001))

(define (cubert-iter last-guess guess x)
(display "test2:")
(display last-guess)
(newline)
  (if (not-improving? last-guess guess)
      guess
      (cubert-iter guess (improve-cube guess x) x)))

(define (cubert x)
  (cubert-iter 0 1.0 x))

; new one works with small numbers, old doesn't
(cubert 1e-12)
(cubert 64)
(cubert 68)
(cubert 652912311324297500000)
