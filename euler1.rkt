#lang racket
;; Project Euler problem 1
;;if we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
;;Find the sum of all the multiples of 3 or 5 below 1000.
;


(define (euler-1 the-sum i)
  (if (> i 999)
      the-sum
      (if (or
            (zero? (modulo i 5))
            (zero? (modulo i 3)))
          (euler-1 (+ the-sum i) (+ i 1))
          (euler-1 the-sum (+ i 1)))))  
        

(euler-1 0 1)