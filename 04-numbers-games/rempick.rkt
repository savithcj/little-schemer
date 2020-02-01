#lang racket

(define sub1
  (lambda (n)
    (- n 1)))

(define one?
  (lambda (n)
    (= n 1)))

(define rempick
  (lambda (n lat)
    (cond
      ((zero? (sub1 n)) (cdr lat))
      (else (cons (car lat) (rempick (sub1 n) (cdr lat)))))))

(define revised-rempick
  (lambda (n lat)
    (cond
      ((one? n) (cdr lat))
      (else (cons (car lat) (rempick (sub1 n) (cdr lat)))))))
    

(rempick 4 '(hotdogs with hot mustard))
(revised-rempick 4 '(hotdogs with hot mustard))