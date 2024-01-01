(define-macro (when condition exprs)
  `(if ,condition ,(begin exprs) 'okay))

(define-macro (switch expr cases)
  (cons 'cond
        (map (lambda (case)
                        (cons `(equal? ,expr ,(car case)) (cdr case)))
             cases)))
