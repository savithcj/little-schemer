#lang racket
(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))

(define sub1
  (lambda (n)
    (- n 1)))

(define pick
  (lambda (n lat)
    (cond
      ((zero? (sub1 n)) (car lat))
    (else (pick (sub1 n) (cdr lat))))))

(pick 2 '(lasagna spaghetti ravioli macaroni meatball))


      