;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |3|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
(require
 rackunit
 rackunit/text-ui
 "extras.rkt"
 2htdp/image)
(provide
 make-diff-exp
 diff-exp-rand1
 diff-exp-rand2
 make-mult-exp
 mult-exp-rand1
 mult-exp-rand2
 expr-to-image)

(define-struct diff-exp (rand1 rand2))
(define-struct mult-exp (rand1 rand2))

;; An Expr is one of
;; -- (make-diff-exp Number Number)
;; -- (make-mult-exp Number Number)
;; Interpretation: a diff-exp represents a difference,
;; and a mult-exp represents a multiplication