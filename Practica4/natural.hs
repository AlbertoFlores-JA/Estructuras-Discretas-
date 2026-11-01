data Natural = Cero | S Natural deriving (Eq, Show)

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




{-
Función:
Descripción:
Ejemplo:
-}



{-
Función:
Descripción:
Ejemplo:
-}


{-
Función:
Descripción:
Ejemplo:
-}