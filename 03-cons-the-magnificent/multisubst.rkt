#lang racket
(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))

(define multisubst
  (lambda (new old lat)
    (cond
      ((null? lat) (quote ()))
      (else
       (cond
         ((eq? (car lat) old)
               (cons new
                     (multisubst new old
                                 (cdr lat))))
         (else (cons (car lat)
                     (multisubst new old
                                 (cdr lat)))))))))

(multisubst 'hot 'cold '(the weather was so cold today the inside of my car was cold))