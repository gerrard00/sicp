(define (fib n)
  (display n)(newline)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (+ (fib (- n 1))
                 (fib (- n 2))))))

(define (fib2 n)
  (fib-iter 1 0 n))

(define (fib-iter a b count)
  (display a)(newline)
  (if (= count 0)
      b
      (fib-iter (+ a b) a (- count 1))))

(fib 5)
(fib 6)
(fib 10)

(fib2 5)
(fib2 6)
(fib2 10)
