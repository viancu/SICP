(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

;improved the good-enough? procedure so that it works for much smaller numbers
;it now checks if the difference between the current guess and the previous-
;guess is a small fraction of the current guess
(define (good-enough? guess x)
  (< (/ (abs (- (square guess) x)) guess) 0.001))

(define (sqrt x)
  (sqrt-iter 1.0 x))
