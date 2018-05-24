#lang sicp

;(define (square x) (* x x))

(define (square x)
  (exp (double (log x))))

(define (double x) (+ x x))

(square 2)
(square 5)

;(define (sqrt x)
;  (sqrt-iter 1.0 x))
;
;(define (sqrt-iter guess x)
;  (if (good-enough? guess x)
;      guess
;      (sqrt-iter (improve guess x)
;		 x)))
;
;(define (good-enough? guess x)
;  (< (abs (- (square guess) x)) 0.001))
;
;(define (improve guess x)
;  (average guess (/ x guess)))
;
;(define (average x y)
;  (/ (+ x y) 2))

;(define (sqrt x)
;  (define (good-enough? guess x)
;    (< (abs (- (square guess) x)) 0.001))
;  (define (improve guess x)
;    (average guess (/ x guess)))
;  (define (sqrt-iter guess x)
;    (if (good-enough? guess x)
;        guess
;        (sqrt-iter (improve guess x)
;                   x)))
;  (define (average x y)
;    (/ (+ x y) 2))
;  (sqrt-iter 1.0 x))

(define (sqrt x)
  (define (good-enough? guess)
    (< (abs (- (square guess) x)) 0.001))
  (define (improve guess)
    (average guess (/ x guess)))
  (define (sqrt-iter guess)
    (if (good-enough? guess)
        guess
        (sqrt-iter (improve guess))))
  (define (average x y)
    (/ (+ x y) 2))
  (sqrt-iter 1.0))

(sqrt 4)
(sqrt 9)
(sqrt 16)

