module Entero where

import Auxiliar

{-
Función:multiEnt
Descripción:Toma dos enteros y devuelve su producto
Ejemplo:
    ghci > multiEnt ( Neg ( Succ ( Succ ( Succ ( Succ Zero ) ) ) ) ) ( Succ ( Succ Zero ) )
ghci > Neg ( Succ ( Succ ( Succ ( Succ ( Succ ( Succ ( Succ ( Succ Zero ) )
) ) ) ) ) )
-}

{- nota para la multiplicacion
- + = -
+ - = -
- - = +
+ + = +
_ 0 = 0
0 _ = 0
Succ == +
Neg == -
-}
multiEnt :: Entero -> Entero -> Entero
--Casos base
multiEnt _ Zero = Zero
multiEnt Zero _ = Zero
--Signos
multiEnt (Neg x) (Neg y) = multiForInt x y
multiEnt (Neg x) y = Neg (multiForInt x y)
multiEnt x (Neg y) = Neg (multiForInt x y)
multiEnt x y = multiForInt x y

