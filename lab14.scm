(define (split-at lst n)
  (define (first lst n)
    (if (= n 0)
      nil
      (cons (car lst) (first (cdr lst) (- n 1)))
    )
  )
  (define (second lst n)
    (if (not (= n 0))
      (second (cdr lst) (- n 1))
      lst
    )
  )
  (if (< (length lst) n)
    (cons lst nil)
    (cons (first lst n) (second lst n))
  )
)

; Tree Abstraction
; Constructs tree given label and list of branches
(define (tree label branches)
  (cons label branches))

; Returns the label of the tree
(define (label t) (car t))

; Returns the list of branches of the given tree
(define (branches t) (cdr t))

; Returns #t if t is a leaf, #f otherwise
(define (is-leaf t) (null? (branches t)))

(define (filter-odd t) 'YOUR-CODE-HERE)

(define (cddr s) (cdr (cdr s)))

(define (cadr s) (car (cdr s)))

(define (caddr s) (car (cddr s)))

(define (swap expr) 'YOUR-CODE-HERE)
