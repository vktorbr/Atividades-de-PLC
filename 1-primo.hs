--Dado um inteiro, retorne uma string dizendo se ele eh primo, quadrado perfeito, 
--ou apenas um numero qualquer
toInt :: Float -> Int
toInt x = floor x

ehPrimo :: Int -> Bool
ehPrimo k
 | k <= 1 = False
 | otherwise = null [x|x <- [2..floor(sqrt (fromIntegral k))], k `mod`x == 0]

ehQuadrado :: Int -> Bool
ehQuadrado n = sq * sq == n
        where sq = floor $ sqrt $ (fromIntegral n :: Double)

--ehQuadrado :: Int -> Bool
--ehQuadrado n = elem n (takeWhile (<=n) [ x*x | x <- [1..]])

funcao :: Int -> String
funcao x
 | ehPrimo x == True = "Primo"
 | ehQuadrado x == True = "Quadrado Perfeito"
 | otherwise = "Natural"

main :: IO ()
main = do 
        n1 <- readLn
        putStrLn(funcao n1)
        --resultado <- funcao n1
        --putStrLn (resultado)
        --n1 <- sqrt n1
        --putStrLn (show (sqrt n1 * sqrt n1 :: Float))
        --print (n1 :: Float)