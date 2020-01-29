#lang racket

(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))

(define insertL
  (lambda (new old lat)
    (cond
      ((null? lat) (quote ()))
      (else
         (cond
           ((eq? (car lat) old) (cons new lat))
           (else (cons (car lat) (insertL new old (cdr lat)))))))))

(insertL 'e 'f '(a b c d f))