#lang racket
(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))

(define sub1
  (lambda (n)
    (- n 1)))

(define o**
  (lambda (n m)
    (cond
      ((zero? m) 1)
      (else (* n (o** n (sub1 m)))))))

(o** 2 3)