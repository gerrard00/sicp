; f (n) = n if n < 3
; f (n) = f (n − 1) + 2f(n − 2) + 3f(n − 3) if n ≥ 3

; recursive
(define (f n)
  ; (display n) (display "-")
  ; (display (f (- n 3))) (display ">")
  (cond ((< n 3) n)
         ( else (+
             (f (- n 1))
             (* 2 (f (- n 2)))
             (* 3 (f (- n 3)))
             ))
         ))

(+
  (f (- n 1))
  (* 2 (f (- n 2)))
  (* 3 (f (- n 3)))
  )

(+
  (f (- 4 1))
  (* 2 (f (- 4 2)))
  (* 3 (f (- 4 3)))
  )

(+
  (f 3)
  (* 2 2)
  (* 3 1)
  )

(+
  (f 3)
  4
  3
  )

(+ 4 4 3)

; iterative
(define (f-iter n)
  )

(define (f2 n) (f-iter (- n 1 )))

(f 2)
(f 3)
(f 4)
(f 5)
(f 6)
(f 8)
(f 9)
(f 10)
(f 11)
(f 12)
