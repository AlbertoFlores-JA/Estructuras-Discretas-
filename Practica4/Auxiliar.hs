module Auxiliar where

data Natural = Cero | S Natural deriving (Eq, Show)

{- Suma de dos Naturales 
-}
sumaNat :: Natural -> Natural -> Natural
sumaNat Cero va2  = va2
sumaNat (S va1) va2 = S (sumaNat va1 va2)

{- multiNat
-}
multiNat :: Natural -> Natural -> Natural
multiNat Cero _ = Cero
multiNat (S x) y = sumaNat y (multiNat x y)