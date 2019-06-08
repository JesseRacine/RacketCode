#lang racket
;The prime factors of 13195 are 5, 7, 13 and 29.
;What is the largest prime factor of the number 600851475143 
  

(define (is-prime n)  
  (define (prime-check n [i 2])
    (cond
      ((> i (sqrt n)) #t )
      ((zero? (modulo n i)) #f)
      (else (prime-check n (+ i 1))) )
    ) 

  (cond ((< n 2) #f)
        (else  (prime-check n))
        )
  )


(define (prev-prime n)
  (if (is-prime (- n 1))
      (- n 1)
      (prev-prime (- n 1))
      )
  )
(define (biggestprimefact n)
  (define( pfact-find i)
    (if (zero? (modulo n i))
        i
        (pfact-find (prev-prime i))        
        )
    )
  (pfact-find 
   (exact-floor (sqrt n) ))
   )

  

  (biggestprimefact 600851475143)