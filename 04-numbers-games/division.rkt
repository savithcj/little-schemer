#lang racket
(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))

(define add1
  (lambda (n)
    (+ n 1)))

(define o/
  (lambda (n m)
    (cond
      ((< n m) 0)
      (else (add1 (o/ (- n m) m))))))

(o/ 15 4)