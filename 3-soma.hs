funcao :: Int -> Int
funcao 0 = 0
funcao x = x `mod` 10 + funcao (div x 10)

funcao2 :: Int -> String
funcao2 x = show(funcao x)

main :: IO ()
main = do
    i <- readLn
    putStrLn(funcao2 i)