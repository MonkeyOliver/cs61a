(define (over-or-under num1 num2) (if (= num1 num2) 0 (if (> num1 num2) 1 -1)))

(define (make-adder num) (define (func inc) (+ num inc)) func)

(define (composed f g) (define (func x) (f (g x))) func)

(define lst '((1) 2 (3 4) 5))

(define (duplicate lst) (if (null? lst) nil (cons (car lst) (cons (car lst) (duplicate (cdr lst))))))
