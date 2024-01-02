(define-macro
 (if-macro condition if-true if-false)
 `(if ,condition ,if-true ,if-false))

(define-macro (or-macro expr1 expr2)
  `(let ((v1 ,expr1))
     (if v1
         v1
         ,expr2)))

(define (replicate x n) 'YOUR-CODE-HERE)

(define-macro (repeat-n expr n) 'YOUR-CODE-HERE)

(define
 (list-of map-expr for var in lst if filter-expr)
 'YOUR-CODE-HERE)

(define-macro (list-of-macro map-expr
                             for
                             var
                             in
                             lst
                             if
                             filter-expr)
  'YOUR-CODE-HERE)
