module Auxiliar where

data Natural = Cero | S Natural deriving (Eq, Show)
data Entero = Zero | Succ Entero | Neg Entero deriving ( Eq, Show)

{- Suma de dos Naturales 
-}
sumaNat :: Natural -> Natural -> Natural
sumaNat Cero va2  = va2
sumaNat (S va1) va2 = S (sumaNat va1 va2)

{- multiNat 
Multiplica naturales con la data definida
-}
multiNat :: Natural -> Natural -> Natural
multiNat Cero _ = Cero
multiNat (S x) y = sumaNat y (multiNat x y)

{------------------------------------------------------------------------------}
{-
Definir Suma para enteros positivos y multiplicacion para enteros positivos porque neg solo pega el signo
-}

sumaForInt :: Entero -> Entero -> Entero
sumaForInt Zero  y = y
sumaForInt (Succ x) y = Succ (sumaForInt x y)


multiForInt :: Entero -> Entero -> Entero
multiForInt _ Zero = Zero
multiForInt Zero _ = Zero

multiForInt (Succ x) y = sumaForInt y (multiForInt x y )