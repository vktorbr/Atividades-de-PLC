--Dado um inteiro, retorne uma string dizendo se ele eh primo, quadrado perfeito, 
--ou apenas um numero qualquer
toInt :: Float -> Int
toInt x = round x

ehPrimo :: Int -> Bool
ehPrimo k
 | k <= 2 = False
 | otherwise = null [x|x <- [2..toInt(sqrt (fromIntegral k))], k `mod`x == 0]

ehQuadrado :: Int -> Bool
ehQuadrado n = elem n (takeWhile (<=n) [ x*x | x <- [1..]])

funcao :: Int -> String
funcao x
 | ehPrimo x == True = "Primo"

main :: IO ()
main = do 
        n1 <- readLn
        putStrLn(funcao n1)
        --resultado <- funcao n1
        --putStrLn (resultado)
        --n1 <- sqrt n1
        --putStrLn (show (sqrt n1 * sqrt n1 :: Float))
        --print (n1 :: Float)