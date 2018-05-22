#lang sicp

(define (square a)
  (* a a))

(define (sum-of-squares a b)
  (+ (square a) (square b)))

;(sum-of-squares 2 3)

(define (func a b c)
  (cond ((and (> a c) (> b c)) (sum-of-squares a b))
        ((and (> b a) (> c a)) (sum-of-squares b c))
        ((and (> a b) (> c b)) (sum-of-squares a c))
        ))

(func 1 2 3)
