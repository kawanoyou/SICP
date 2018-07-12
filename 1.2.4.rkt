#lang sicp

;(define (expt b n)
;  (if (= n 0)
;      1
;      (* b (expt b (- n 1)))))
;
;(define (expti b n)
;  (expt-iter b n 1))
;
;(define (expt-iter b counter product)
;  (if (= counter 0)
;      product
;      (expt-iter b
;                 (- counter 1)
;                 (* b product))))
;
;
;(expt 2 20)
;(expti 2 20)
;
;(define (square n)
;  (* n n))
;
;; ex1.16
;(define (fast-expti b n)
;  (fast-expt-iter b n 1))
;
;(define (fast-expt-iter b n a)
;  (cond ((= n 0) a)
;        ((even? n) (fast-expt-iter (square b) (/ n 2) a))
;        (else (fast-expt-iter b (- n 1) (* a b)))))
;
;(fast-expti 2 20)

;ex1.17
;(define (* a b)
;  (if (= b 0)
;      0
;      (+ a (* a (- b 1)))))

(define (double n)
  (+ n n))

(define (halve n)
  (/ n 2))

(double 10)
(halve 10)

(define (mul a b)
  (cond ((= b 0) 0)
        ((even? b) (mul (double a) (halve b)))
        (else (+ (mul (double a) (halve (- b 1))) a))))

(* 3 0)
(* 3 6)

(mul 3 0)
(mul 3 6)

;ex 1.18
;(define (muli a b)
;  (mul-iter a b 0))
;
;(define (mul-iter a b n)
;  (cond ((= b 0) n)
;        (