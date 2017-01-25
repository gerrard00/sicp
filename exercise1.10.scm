(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

; basically 1 << 10
(A 1 10)

(A 0 (A 1 9))

(A 0
   (A 0
     ( A 1 8 )))

(A 0
   (A 0
      ( A 0
          ( A 0
              (A 0
                 (A 0
                    (A 0
                       (A 0
                          (A 0
                             (A 1 1))))))))))

(A 0
   (A 0
      ( A 0
          ( A 0
              (A 0
                 (A 0
                    (A 0
                       (A 0
                          (A 0 2)))))))))

(A 0
   (A 0
      ( A 0
          ( A 0
              (A 0
                 (A 0
                    (A 0
                       (A 0 4))))))))


(A 0 512)
 1024


; second one

(A 2 4)

(A 1
   (A 2 3))

(A 1
   (A 1
      (A 2 2)))

(A 1
   (A 1
      (A 1
         (A 2 1))))

(A 1
   (A 1
      (A 1 2)))

(A 1
   (A 1
      (A 0
         (A 1 1))))

(A 1
   (A 1
      (A 0 2)))

(A 1
   (A 1 4))

(A 1
   (A 0
      (A 1 3)))

(A 1
   (A 0
      (A 0
         (A 1 2))))

(A 1
   (A 0
      (A 0
         (A 0
            (A 1 1)))))

(A 1
   (A 0
      (A 0
         (A 0 2))))

(A 1
   (A 0
      (A 0 4)))

(A 1
   (A 0 8))

(A 1 16)

; at this point it's just the original
65536

; third one
(A 3 3)

(A 2
   (A 3 2))

(A 2
   (A 2
      (A 3 1))

(A 2
   (A 2 2))

(A 2
   (A 1
      (A 2 1)))

(A 2
   (A 1 2))

(A 2
   (A 1 2))

(A 2
   (A 0
      (A 1 1)))

(A 2
   (A 0 2))

(A 2 4)

; we know what (A 2 4) is already
65536

; 2n
(define (f n) (A 0 n))

; 1 << n or  2^n
(define (g n) (A 1 n))

(g 4)
(g 12)


; written in png; h(n) = 2^h(n -1) except when n = 0
(define (h n) (A 2 n))

; 0
(h 0)
; 2
(h 1)
; 4
(h 2)
; 16
(h 3)
; 65536
(h 4)
; call stack too deep
(h 5)

(define (h2
  (cond ((= y 0) 0)
        ((= y 1) 2)
        (else (A 1
                 (A 2 (- y 1))))))
