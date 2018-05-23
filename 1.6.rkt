#lang sicp

(define (square a) (* a a))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
		 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (define avg (/ (+ x y) 2))
  ;(display avg)
  ;(newline)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 9)

(sqrt (+ 100 37))

(sqrt (+ (sqrt 2) (sqrt 3)))

(square (sqrt 1000))


; ex1.6
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
	(else else-clause)))

(define (sqrt-iter2 guess x)
  (new-if (good-enough? guess x)
      guess
      (sqrt-iter2 (improve guess x)
		 x)))

(define (sqrt2 x)
  (sqrt-iter2 1.0 x))

(new-if (= 2 3) 0 5)

(new-if (= 1 1) 0 5)

;(sqrt2 9)


; ex1.7
; 非常に小さい値だと、good-enough?の許容誤差の値になるのでimproveが十分な回数実行されない
;(sqrt 0.01)
;(sqrt 0.001)
;(sqrt 0.0001)
;(sqrt 0.00001)
;(sqrt 0.000001)


; 非常に大きい値だと、許容誤差の値に収束しないので計算が終わらない
;(sqrt 100000000000)
;(sqrt 1000000000000)
;(sqrt 10000000000000) ; 計算が終わらない


(define (new-sqrt-iter guess x)
  (define new-guess (improve guess x))
  (if (new-good-enough? new-guess guess)
      new-guess
      (new-sqrt-iter new-guess
		 x)))

(define (new-good-enough? new-guess guess)
  (< (abs (- new-guess guess)) 0.001))


(define (new-sqrt x)
  (new-sqrt-iter 1.0 x))

(new-sqrt 4)
(new-sqrt 9)
(new-sqrt 16)
(new-sqrt 0.00000001)
(new-sqrt 0.0000001)
(new-sqrt 0.000001)
(new-sqrt 10000000000000)
(new-sqrt 100000000000000)
(new-sqrt 1000000000000000)






