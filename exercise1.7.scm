(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (not-improving? x y)
  (< (abs (- x y)) 0.001))

(define (sqrt-iter last-guess guess x)
(display "test:")
(display last-guess)
(newline)
  (if (good-enough? guess x)
      guess
      (sqrt-iter guess (improve guess x) x)))

(define (sqrt-iter2 last-guess guess x)
(display "test2:")
(display last-guess)
(newline)
  (if (not-improving? last-guess guess)
      guess
      (sqrt-iter2 guess (improve guess x) x)))

(define (sqrt x)
  (sqrt-iter 0 1.0 x))

(define (sqrt2 x)
  (sqrt-iter2 0 1.0 x))

; new one works with small numbers, old doesn't
(sqrt .0002)
(sqrt2 .0002)
(sqrt 4)
(sqrt2 4)
(sqrt 99857)
(sqrt2 99857)
(sqrt 100456)
(sqrt2 100456)
(sqrt 2147000000)
(sqrt2 2147000000)
(sqrt 75260986245481)
(sqrt2 75260986245481)
