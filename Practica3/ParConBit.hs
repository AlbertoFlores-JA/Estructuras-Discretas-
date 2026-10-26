module ParConBit (esParBit) where

import Data.Bits ((.&.))

--indentificar si el numero es par o impar por su terminacion en binario
esParBit :: Int -> Bool
esParBit x = (x .&. 1) == 0