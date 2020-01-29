#lang racket
(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))

(define multirember
  (lambda (a lat)
    (cond
      ((null? lat) (quote ()))
      (else (cond
              ((eq? (car lat) a)
               (multirember a (cdr lat)))
              (else (cons (car lat)
                          (multirember a (cdr lat)))))))))

(multirember 'cup '(coffee cup tea cup and hick cup))