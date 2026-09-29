--Si hoy es viernes que día fue hace 12 días
{-
Funcion: days_ago
Descripción : hoy es viernes que dia fue hace 12 días
Uso days_ago x = 0 (domingo)
-}
days_ago :: Int -> Int
days_ago x = mod (x - 12) 7

--Encontrar un elemento, el más pequeño de una lista de números enteros positivos
{-
Esta es del profe, estabamos haciendo pruebas para encontrar el elemento más pequeño de una lista 
Función : minimal
Descripción : La función encuentra el elemento mas pequeño de una lista de números enteros positivos
Uso minimal x < x:xs
-}
minimal :: [Int] -> Maybe Int
minimal [x] = Just x
minimal [] = Nothing
minimal (x:(y:xs)) = if x<y then minimal (x:xs) else minimal (y:xs)
