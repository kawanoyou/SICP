#lang sicp

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

; (if (> b 0) + -) a b) の部分は
; bが正のとき、(+ a b)
; bが負のとき、(- a b)
; となる

(a-plus-abs-b 2 3)

(a-plus-abs-b 2 -3)
