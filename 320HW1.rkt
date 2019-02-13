#lang scheme
;Daniel Baczmaga

;Question #1
(define(make_list_of_size n e)
  (cond
    ((zero? (- n 1)) (list e))
    (else (cons e (make_list_of_size (- n 1) e)))
    )
)

;Question #2
(define(zeros lst)
   (cond
     ((null? lst) 0)
     ((zero? (car lst)) (+ (zeros (cdr lst)) 1))
     (else (zeros (cdr lst)))
   )
)

;Question #3
(define(power a b)
  (cond
    ((zero? b) 1)
    ((negative? b) (* (power a (+ b 1)) a))
    (else (* (power a (- b 1)) a))
  )
)

;Question #4
(define(remove lst a)
  (cond
    ((null? lst) '())
    ((equal? (car lst) a) (remove (cdr lst) a))
    (else(cons (car lst) (remove (cdr lst) a)))
  )
)

;Question #5
(define(largest lst)
  (cond
    ((null? (cdr lst)) (car lst))
    (else(max (car lst) (largest(cdr lst))))
  )
)

