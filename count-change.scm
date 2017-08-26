(define (count-change amount)
  (cc amount 5))

(define (cc amount kinds-of-coins)
  (cond ((= amount 0) 1)
        ((or (< amount 0)
             (= kinds-of-coins 0))
         0)
        (else
          (+ (cc amount (- kinds-of-coins 1))
             (cc (- amount (first-denomination
                             kinds-of-coins))
                 kinds-of-coins)))))

(define (first-denomination kinds-of-coins)
  (cond ((= kinds-of-coins 1) 1)
        ((= kinds-of-coins 2) 5)
        ((= kinds-of-coins 3) 10)
        ((= kinds-of-coins 4) 25)
        ((= kinds-of-coins 5) 50)))

; (count-change 100)

(define (count-change-2-iter a b c d e amount)
  (cond ((= amount 0) 1)
        ((or (< amount 0)
             (= (+ a  b c d e) 0)
             (< a 0)
             (< b 0)
             (< c 0)
             (< d 0)
             (< e 0)
             )
         0)
        (
         ; (display a)(display "-")
         ; (display b)(display "-")
         ; (display c)(display "-")
         ; (display d)(display "-")
         ; (display e)(display "-")
         ; (display amount)(newline)
         ; (display amount)
         ; 8675309
           ; define new max a b c d e values and use those instead of a b c d e
           (+
             (count-change-2-iter (- a 1) b c d e (- amount (first-denomination 5)))
             (count-change-2-iter a (- b 1) c d e (- amount (first-denomination 4)))
             (count-change-2-iter a b (- c 1) d e (- amount (first-denomination 3)))
             (count-change-2-iter a b c (- d 1) e (- amount (first-denomination 2)))
             (count-change-2-iter a b c d (- e 1) (- amount (first-denomination 1)))
             )
         )))

(define (count-change-2 amount)
  (count-change-2-iter
    (quotient amount  (first-denomination 5))
    (quotient amount  (first-denomination 4))
    (quotient amount  (first-denomination 3))
    (quotient amount  (first-denomination 2))
    (quotient amount  (first-denomination 1))
    amount))

(count-change-2 100)
; (count-change-2-iter 1 2 3 4 5)
