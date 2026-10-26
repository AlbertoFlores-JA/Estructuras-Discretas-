--Práctica 3
{-
Funcion : cetes 
Descripcion: Calcula la aproximacion de rendimiento de tu dinero en el plazo establecido deacuedo a las cetes y el retiro de las mismas, por meses o dias, restrigiendo solo 1, 6 y 12 meses con su correspondiente en dias
Funcion:
ghci > cetes 100 ( Dias 28)
ghci > 100.4
ghci > cetes 100 ( Meses 1)
ghci > 100.4
-}
--Definimos dos variables para el Tiempo para que distinga entre dias y meses
data Tiempo = Dias Int | Meses Int deriving (Show, Eq)

cetes :: Double -> Tiempo -> Double
cetes vi (Dias 28) = formulaCetes vi 0.0609 28
cetes vi (Dias 182) = formulaCetes vi 0.0691 182
cetes vi (Dias 364) = formulaCetes vi 0.0744 364

cetes vi (Meses 1) = formulaCetes vi 0.0609 28
cetes vi (Meses 6) = formulaCetes vi 0.0691 182
cetes vi (Meses 12) = formulaCetes vi 0.0744 364

cetes _ _ = error "Plazo no valido, intenta con  (Meses 1, 6, 12) o  (dias 28, 182, 364)"

{-
Formula auxiliar de cetes con lo siguiente:
• vf(Valor Final o Monto Futuro):
• vi (Valor Inicial o Capital Invertido)
• i (Tasa de Rendimiento Anual Bruta):
• t (Días Transcurridos)
• 360 (Base Anual Comercial):
-}
formulaCetes :: Double -> Double -> Double -> Double
formulaCetes vi i t = vi * (1 + i * (t / 360))


{-
Funcion : mensajeCetes 
Descripcion: Hace lo mismo que cetes, pero ahora devuelve un mensaje que devuelve : El plazo de la inversion, el rendimiento bruto obtenido y el monto acomulado al finalizar el plazo
Funcion:
ghci > mensajeCetes 100 ( Dias 28)
ghci > " Despues de n dias , obtuve m de rendimiento bruto sin
asumir ningun riesgo crediticio . El monto total de mi inversion es
de k ."
Lenguaje: 
• n representa el plazo de la inversión
• m representa el rendimiento bruto obtenido.
• k representa el monto total, es decir, el monto inicial más el rendimiento.
-}
mensajeCetes :: Double -> Tiempo -> String 
mensajeCetes vi tiempo =
    let 
        k = cetes vi tiempo
        m = k - vi
        n = case tiempo of 
            Dias d -> d 
            Meses 1 -> 28
            Meses 6 -> 182
            Meses 12 -> 364 
            _ -> error "Plazo no valido" 
    in "Despues de " ++ show n ++ " dias, obtuviste " ++ show m ++ " de redimiento bruto sin asumir ningun riesgo crediticio. El monto total de tu inversion es de " ++ show k 

{-
Funcion : negativos
Descripcion: La funcion cuenta los numeros negativos de una lista
Funcion:
ghci > negativos [ -1 , 2 , 4 , 6 , -4]
ghci > 2
-}
--Ya la habia hecho recusivamente pero es por lista de comprension ;-:
negativosRec :: (Num a, Ord a) => [a] -> Int
negativosRec [] = 0
negativosRec (x:xs)
    | x < 0     = 1 + negativosRec xs
    | otherwise = negativosRec xs

negativos  :: (Num a, Ord a) => [a] -> Int
negativos xs = sum [1 | x <- xs, x < 0]


{-
Funcion : 
Descripcion: 
Funcion:
-}
{-
Funcion : 
Descripcion: 
Funcion:
-}
{-
Funcion : 
Descripcion: 
Funcion:
-}