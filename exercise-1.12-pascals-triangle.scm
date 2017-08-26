(define (pascal row column)
  ; (display row) (display "-") (display column) (newline)
  (cond
    ((< row 3) 1)
    ((= column 1) 1)
    ((= column row) 1)
    (else (+
            (pascal (- row 1) (- column 1) )
            (pascal (- row 1) column)
            ))
    )
  )

(define (loop row column target_rows)
  (define next_column (+ column 1))
  (define next_row (+ row 1))

  (if (= column 1) (newline))

  (display (pascal row column))
  (display " ")

  (if (<= next_column row)
      (loop row next_column target_rows)
      (if (<= next_row target_rows)
          (loop next_row 1 target_rows)
          )
      )
  )

(loop 1 1 8)
