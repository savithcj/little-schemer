#lang racket
(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))

(define eqan?
  (lambda (a1 a2)
    (cond
      ((and (number? a1) (number? a2))
       (= a1 a2))
       ((or (number? a1) (number? a2)) #f)
       (else (eq? a1 a2)))))

(define add1
  (lambda (n)
    (+ n 1)))

(define occur
  (lambda (a lat)
    (cond
      ((null? lat) 0)
      (else
       (cond
         ((eqan? (car lat) a) (add1 (occur a (cdr lat))))
         (else (occur a (cdr lat))))))))

(occur 'a '(a b c a d))