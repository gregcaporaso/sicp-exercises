#lang sicp
(define
 (sum-of-squares a b)
 (+ (* a a) (* b b))
)

(define
 (f x y z)
  (if (> x y)
   (if (> z y)
    (sum-of-squares x z)
    (sum-of-squares x y)
    )
   (if (> x z)
    (sum-of-squares x y)
    (sum-of-squares y z))
  )
)

(f 1 2 3)
(f 1 3 2)
(f 2 1 3)
(f 2 3 1)
(f 3 1 2)
(f 3 2 1)
