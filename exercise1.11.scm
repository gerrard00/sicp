; f (n) = n if n < 3
; f (n) = f (n − 1) + 2f(n − 2) + 3f(n − 3) if n ≥ 3

; recursive
(define (f n)
  ; (display n) (newline)
  (cond ((< n 3) n)
        (else (+
                (f(- n 1))
                (* 2 (f(- n 2)))
                (* 3 (f(- n 3)))
                ))))


; substituting 3
(+
  (f (- 3 1))
  (* 2 (f (- 3 2)))
  (* 3 (f (- 3 3)))
  )

(+
  (f 2)
  (* 2 (f 1))
  (* 3 (f 0))
  )

(+
  2
  (* 2 1)
  (* 3 0)
  )

(+ 2 2 0)

; substituting 4
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
(f 3)
(f 6)
(f 8)
(f 9)
(f 10)
(f 11)
(f 12)

; iterative
(define(f-iter minus1 minus2 minus3 i)
  (display minus1)(display "-")
  (display minus2)(display "-")
  (display minus3)(display "-")
  (display i)
  (newline)
  (cond
    ;; just return the number
    ; ((< i 3) i)
    ((< i 3) minus1)
    (else
      (f-iter
        ;; this is the formula
        (+
          minus1
          (* 2 minus2)
          (* 3 minus3)
          )
          ;; this is the previous formula result
          minus1
          ;; this is the result before the previous result
          minus2
          (- i 1)
        )
      )
    )
  )

(define (f2 n) (f-iter 2 1 0 n ))

(f 3)
(f2 3)
(f 4)
(f2 4)
(f 5)
(f2 5)
(f 6)
(f2 6)
