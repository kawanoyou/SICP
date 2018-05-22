#lang sicp

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

; (p)

; (test 0 100)
; (test 1 100)

; (test 0 (p))

; 作用的順序（引数を評価して作用）
; pの評価でループする
;
; 正規順序（展開して簡約）
; 0が返る 

