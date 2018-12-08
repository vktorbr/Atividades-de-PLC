conv :: Int -> [Int]
conv 0 = [0]
conv x
 | x `mod` 2 == 1 = conv (div x 2) ++ [1]
 | x `mod` 2 == 0 = conv (div x 2) ++ [0]

--conv :: Int -> [Int]
--conv 0 = []
--conv x = conv (div x 10) ++ [x `mod` 10]

tail' :: [Int] -> [Int]
tail' [0] = [0]
tail' (x:xs) = xs

inverso :: [Int] -> [Int]
inverso (x:xs) = inverso (xs) ++ [x]
inverso [] = []

funcao :: [Int] -> String
funcao (x:xs)
 | (x:xs) == inverso (x:xs) = "True"
 | otherwise = "False"

main :: IO ()
main = do
    i <- readLn
    putStrLn (funcao (tail'(conv(i))))