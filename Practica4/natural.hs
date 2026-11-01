module Natural where
import Auxiliar
{-===================================================================================-}
{-
Función:a_natural
Descripción:toma un entero (0,1,2...) y lo lleve a su estructura
de dato Natural.
Ejemplo:
ghci > a_natural 0
ghci > Cero
ghci > a_natural 2
ghci > S ( S Cero )
-}

a_natural :: Int -> Natural
a_natural 0 = Cero
a_natural n = S (a_natural (n - 1))
{-===================================================================================-}

{-
Función:a_entero 
Descripción:toma un dato natural y lo lleva a su valor entero
Ejemplo:
ghci > a_entero Cero
ghci > 0
ghci > a_entero ( S ( S ( S Cero ) ) )
ghci > 3
-}

a_entero :: Natural -> Int
a_entero Cero = 0
a_entero (S n) = 1 + a_entero n
{-===================================================================================-}

{-
Función:potencia
Descripción:eleva un número natural a la potencia del segundo
Ejemplo:
ghci > potencia ( S ( S ( S Cero ) ) ) ( S ( S Cero ) )
ghci > S ( S ( S ( S ( S ( S ( S ( S ( S Cero ) ) ) ) ) ) ) )
-}

potenciaNatFacil :: Natural -> Natural -> Natural
potenciaNatFacil n m = a_natural  ((a_entero n ) ^ (a_entero m))

potencia :: Natural -> Natural -> Natural
potencia _ Cero = S(Cero)
potencia  base  (S exponente) = multiNat base (potencia base exponente)
{-===================================================================================-}

{-
Función:facNat
Descripción:Devuelve un factorial de un natural dado
Ejemplo:
ghci > facNat ( S ( S ( S Cero ) ) )
ghci > S ( S ( S ( S ( S ( S Cero ) ) ) ) )
-}
facNat :: Natural -> Natural
facNat Cero = S(Cero)
facNat (S nof) =  multiNat (S nof) (facNat nof)
{-===================================================================================-}
