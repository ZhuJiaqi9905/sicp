#lang sicp
(define (my-cons x y)
  (lambda (m) (m x y)))

(define (my-car z)
  (z (lambda (p q) p)))

(define (my-cdr z)
  (z (lambda (p q) q)))

(define one-two (my-cons 1 2))

(my-car one-two)

(my-cdr one-two)