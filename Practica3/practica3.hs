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