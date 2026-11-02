module Mati where

import Auxiliar
{-
Función mayorIgual 
Descripción: compara dos matrioscas y devuelve un booleano si son iguales o la primera es mayor a la segunda
Ejemplo:
ghci > mayorIgual Mati Mati
ghci > True
ghci > mayorIgual ( Cont ( Cont Mati ) ) ( Cont ( Cont ( Cont Mati ) ) )
ghci > False

-}
mayorIgual :: Matrioska -> Matrioska -> Bool
mayorIgual _ Mati = True 
mayorIgual Mati (Cont _) = False

mayorIgual (Cont mat1) (Cont mat2) = mayorIgual mat1 mat2
{-=============================================================================================-}
{-
Función aplana 
Descripción:que convierte una matrioska anidada en una lista plana de
todas las matrioskas que la componen, desde la más externa hasta la más interna
Ejemplo:
ghci > aplana Mati
ghci > [ Mati ]
ghci > aplana ( Cont ( Cont Mati ) )
ghci > [ Cont ( Cont Mati ) , Cont Mati Mati ]
-}
aplana :: Matrioska -> [Matrioska]
aplana Mati = [Mati]
aplana (Cont m) = Cont m : aplana m