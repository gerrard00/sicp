(define (inc a) (+ a 1))
(define (dec a) (- a 1))

(define (my+ a b)
; (display "called\n")
; (display a)
  (if (= a 0)
    b
    (inc (my+ (dec a) b))))

; recursive, we need to track inc calls
(my+ 3 2)
(inc (my+ 2 2))
(inc (inc (my+ 1 2)))
(inc (inc (inc (my+ 0 2))))
(inc (inc (inc 2)))
(inc (inc 3))
(inc 4)
5

(define (other+ a b)
  (if (= a 0)
    b
    (other+ (dec a) (inc b))))

; linear, just track state of variables
(other+ 3 2)
(other+ 2 3)
(other+ 1 4)
(other+ 0 5)
5
