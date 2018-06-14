#lang sicp

(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1))
         (* 2 (f (- n 2)))
         (* 3 (f (- n 3))))))

(define (f2 n)
  (if (< n 3)
      n
      (f-iter 2 1 0 n)))

   
(define (f-iter a b c count)
  (if (< count 3)
      a
      (f-iter (+ a (* 2 b) (* 3 c)) a b (- count 1))))

(f 0)
(f 1)
(f 2)
(f 3)
(f 4)
(f 5)
(f 6)
(f 7)

(f2 0)
(f2 1)
(f2 2)
(f2 3)
(f2 4)
(f2 5)
(f2 6)
(f2 7)



