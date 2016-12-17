(define (square x) (* x x))

(define (calculate-sum-of-squares i j)
  (+ (square i)
     (square j)))

(define (square-largest a b c)
  (cond
    ((and (< a b) (< a c))
     (calculate-sum-of-squares b c))
    ((and
       (< b a)
       (< b c))
     (calculate-sum-of-squares a c))
    (else
      (calculate-sum-of-squares a b))))

(square-largest 1 2 3)
(square-largest 4 2 3)
(square-largest 4 5 3)
