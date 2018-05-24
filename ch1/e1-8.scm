;squares a number
(define (square x) (* x x))

(define (cubert-iter guess x)
  (if (good-enough? guess x)
      guess
      (cubert-iter (improve guess x)
                 x)))

;improves the guess using Newton's method for cube roots
(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

;returns the cube root of the input
(define (cubert x)
  (cubert-iter 1.0 x))
