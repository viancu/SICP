;finds the maximum value of the three inputs
(define (max-three x y z)
  (if (> z (if (> x y) x y)) z (if (> x y) x y)))

;finds the minimum value of the three inputs
(define (min-three x y z)
  (if (< z (if (< x y) x y)) z (if (< x y) x y)))

;squares a number
(define (sqr x) (* x x))

;sums the squares of the two largest values of the three inputs
(define (sum-square-two-largest x y z)
  (+ (sqr (max-three x y z))
     (sqr (- (+ x y z) (max-three x y z) (min-three x y z)))
  )
)
