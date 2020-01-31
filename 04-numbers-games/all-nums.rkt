#lang racket
(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))

(define all-nums
  (lambda (lat)
    (cond
      ((null? lat) (quote ()))
      (else
       (cond ((number? (car lat)) (cons (car lat) (all-nums (cdr lat))))
             (else (all-nums (cdr lat))))))))

(all-nums '(5 pears 6 prunes 9 dates))