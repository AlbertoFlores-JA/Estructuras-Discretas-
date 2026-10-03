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
minimal (x:(y:xs)) = if x<y 
    then minimal (x:xs) 
    else minimal (y:xs)



--Tarea laboratorio

--reconversion 
{-
Función : reconversion
Descripción : La función debe recibir un parámetro numeríco y debe hacer una conversion monetaria, quitándole tres ceros al valor ingresado.
Uso reconversion 3000 -> 3.0
-}
reconversion :: Double -> Double 
reconversion x = x / 1000

--cashback
{-
Función: cashback
Descripción: La función debe recibir un número y calcular el cashback con el 10%
Uso cashback 230 -> 23.0
Nota: use los numeros con punto decimal para incluir las posibles compras que incluyen centavos por ejemplo 200.40 $ y te da el cashback con el decimal, que no calcuraría con los valores de Int
-}
cashback :: Double -> Double
cashback x = x*0.10

--cashbackMonto
{-
Función: cashbackMonto
Descripción: la función recibe un valor numérico y regresa el valor multiplicado por el valor de los puntos (0.10) que puede ser variable dependiendo el banco
Uso cashbackMonto 200 0.10 -> 20.0
Nota: Incluí que el valor del cashback fuera personalizable para incluir algun caso donde el banco te de menos conversión por cashback por ejemplo (0.11 o 0.09) por la planificación del problema 
-}
cashbackMonto :: Double -> Double -> Double
cashbackMonto x y = x*y




--minutosHoras
{-
Función: minutosHoras
Descripción: La función recibe minutos y los pasa a horas
Uso minutosHoras 112 1 hora con 52 minutos
-}
minutosHoras :: Int ->  String
minutosHoras x = show (div x 60)++" horas y "++show (mod x 60)++" minutos "


--esEstafa
{-
Función : esEstafa
Descripción: La función recibe 4 parametros: 
(x) primer valor "costo del producto"  
(y) segundo valor corresponde a "el primer billete de alta denominación " 
(z) tercer parametro es "el cambio que recibe " 
(w) cuarto valor es la "cantidad de cambio que devuelve el cliente cuando pide su billete de vuelta" 
la funcion solo compara si la cantidad de cambio que devuelve "w" es menor al cambio que recibió y no volvio a regresar, si recibiera 
Uso esEstafa 100 200 100 0 
            True           
-}
esEstafa :: Int -> Int -> Int ->Int -> Bool
esEstafa x y z w =  (y - x) == z && z > w




--esDescendente
{-
Función: esDescendente
Descripción: la función recibe 4 parámetros x, y, z y w, nos devuelve un valor booleano
True si están ordenados de mayor a menor
False si los números no fueron ingresados de forma ascendente
Uso 9 8 5 2 
    True
-}
esDescendente :: Int -> Int -> Int -> Int -> Bool
esDescendente x y w z = x > y && y > w && w> z 



--imc
{-
función :imc
Descripción: La función calcula tu imc con los dos valores que le asignes primero tu peso en kg , luego tu altura en metros y deacuerdo a los parámetros de la OMS determinan si es un parámetro bajo peso, normal, obesidad leve, obesidad media, obesidad morbida 
Uso imc 53.5 1.61
    normal
Nota: Usé la siguiente pagína de referencia https://www.gob.mx/issste/articulos/que-es-el-indice-de-masa-corporal
-}
imc :: Double -> Double -> String 
imc x y =  if x / (y*y) < 18.5 then "bajo peso"
    else if ((x / (y*y))) < 24.99 then "normbal"
    else if ((x / (y*y))) < 29.99 then "obesidad leve"
    else if ((x / (y*y))) < 34.99 then "obesidad media"
    else  "obesidad morbida"

--hipotenusa
{-
Función : hipotenusa
Descripción La funcion recibe dos parámetros de tipo flotante b y h donde b representa la base y h la altura, la funcion devuelve un valor de tipo flotante, que representa la el valor de la hipotenusa respecto a la base y la altura
Uso 
-}
hipotenusa :: Float -> Float -> Float
hipotenusa b h = sqrt (b * b + h * h)

