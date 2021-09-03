#lang sicp
(define (add-rat x y)
  (make-rat (+ (* (numer x) (denom y))
               (* (numer y) (denom x)))
            (* (denom x) (denom y))))

(define (sub-rat x y)
  (make-rat (- (* (numer x) (denom y))
               (* (numer y) (denom x)))
            (* (denom x) (denom y))))

(define (mul-rat x y)
  (make-rat (* (numer x) (numer y))
            (* (denom x) (denom y))))

(define (div-rat x y)
  (make-rat(* (numer x) (denom y))
           (* (denom x) (numer y))))

(define (equal-rat? x y)
  (= (* (numer x) (denom y))
     (* (numer y) (denom x))))

(define (make-rat n d)
  (let ((g (gcd n d)))
    (if (pos-rat?  (/ n g) (/ d g))
        (cons (abs (/ n g)) (abs (/ d g)))
        (cons (- (abs (/ n g))) (abs (/ d g))))))
        

(define (numer x) (car x))

(define (denom x) (cdr x))


(define (print-rat x)
  (newline)
  (display (numer x))
  (display "/")
  (display (denom x)))

(define (pos-rat? x y)
  (or
   (and (>= x 0) (>  y 0))
   (and (<= x 0) (<  y 0))))

(define n-one-half (make-rat 1 -2))

(print-rat n-one-half)

(define one-third (make-rat 1 3))

(print-rat (add-rat n-one-half one-third))

(print-rat (mul-rat n-one-half one-third))

(print-rat (add-rat one-third one-third))