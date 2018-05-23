#lang sicp

(define (square a) (* a a))

(define (cube a) (* a a a))

(define (cbrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (cbrt-iter (improve guess x)
		 x)))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2.0 guess))
     3.0))

(define (good-enough? guess x)
  (< (abs (- (cube guess) x)) 0.001))

(define (cube-root x)
  (cbrt-iter 1.0 x))

(cube-root 9)

(cube (cube-root 9))

(cube-root 27)

(cube (cube-root 27))

;(sqrt 9)
;
;(sqrt (+ 100 37))
;
;(sqrt (+ (sqrt 2) (sqrt 3)))
;
;(square (sqrt 1000))
;

