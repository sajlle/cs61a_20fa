(define (split-at lst n)
  'YOUR-CODE-HERE
  (cond
    ((= n 0) (cons nil lst))
    ((null? lst) (cons lst nil))
    (else (let ((rec (split-at (cdr lst) (- n 1)))) 
          (cons (cons (car lst) (car rec)) (cdr rec)))))
)


(define (compose-all funcs)
  'YOUR-CODE-HERE
  (define (helper x)
    (if (null? funcs) 
         x 
         ((compose-all (cdr funcs)) ((car funcs) x)))
  )
  helper
)

