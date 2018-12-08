sub :: [a] -> [[a]]
sub [] = [[]]
sub (x:xs) = sub1 ++ map (x:) sub1
    where sub1 = sub xs

--soma :: [Int] -> Int
--soma [] = 0
--soma (x:xs) = x + soma xs

funcao :: [[Int]] -> Int -> Int
funcao [[]] _ = 0
funcao (x:xs) s
 | (length(x:xs)==1) && (sum x == s) = 1
 | sum x == s = 1+(funcao xs s)
 | otherwise = funcao xs s

main :: IO ()
main = do
    a <- getLine
    l <- readLn
    let ints = map read (words a) :: [Int]
    putStrLn(show (funcao (sub ints) l))