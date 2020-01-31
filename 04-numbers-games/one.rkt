#lang racket
(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))

(define one?
  (lambda (n)
    (cond
      ((number? n) (= n 1))
      (else #f))))

(one? 1)