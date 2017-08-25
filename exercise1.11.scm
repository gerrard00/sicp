; f (n) = n if n < 3
; f (n) = f (n − 1) + 2f(n − 2) + 3f(n − 3) if n ≥ 3

; recursive
(define (f n)
  ; (display n) (newline)
  ; (display (f (- n 3))) (display ">")
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
(define(f-iter n iter count)
  (display n)(display "-")
  (display iter)(display "-")
  (display count)(newline)
  (+ (cond ((< n 3) n) (else (f2 n)))
     (cond
       ((= count iter)
        (cond ((> iter 3) 0)
              (else (f-iter (- n 1) (+ iter 1) 1)))
        )
       (else (f-iter n iter (+ count 1)))))

  )

(define (f2 n) (f-iter (- n 1) 1 1))

(f 3)
(f2 3)
(f 4)
(f2 4)
(f 5)
(f2 5)


(define (simple n)
  (+
    1
    (cond ((= n 1) 0)
          (else (simple (- n 1))))))


(simple 9)
