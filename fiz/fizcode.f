import test2.f
import test1.f
      
      ; evaluates least common multiple of x and y
 (define (lcm x y)
  (div(mul x y) (gcd x y)))

      ; evaluate for z largest possible integer y such that y^2 <= z
      (define (sroot z)
      (ifz z 0 (nvar z 1))
      )

      ; evaluates the smallest integer y such that xy % z = 1
      (define (minv x z)
      (ifz (sub (gcd x z) 1) (minvar x 1 z) (halt)))

      
      ;calculates the root
      (define(nvar x y)
      (ifz      (lt x (mul y y))    (dec y)  (nvar x (inc y))      
      ))

      ;
      (define(minvar x y z)
      (ifz (sub (rem (mul x y) z) 1) y (minvar x (inc y) z)))
 
