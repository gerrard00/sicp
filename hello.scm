(define pi 3.14)

(define radius 10)

(define circumference (* pi (* radius radius)))

circumference

(define (square x) (* x x))

(square 6)

(square (* 4 5))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(sum-of-squares 4 3)

; (define (my-abs x)
;   (cond ((x > 0) x)
;         ((x = 0) 0)
;         ((x < 0)  (x) -x)
;     )
;   )

; (define (my-abs x)
;   (cond ((< x 0) (- x))
;         (else x)))

(define (my-abs x)
  (if (< x 0)
    (- x)
    x))

(my-abs 13)
(my-abs -7)
(my-abs 0)
