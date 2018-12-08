--let cont = -1

--charToString :: Char -> 

--stringCount str ch = [y | (x, y) <- zip str [0..], x == ch]

--funcao3 :: String -> Char -> String
--funcao3 s c = show([x | x <- [0..], (s!!x)==c])

--funcao2 :: String -> Char -> [Int]
--funcao2 [] c = []
--funcao2 (x:xs) c
-- | c == x = [cont+1] ++ (funcao2 xs c)
 
--funcao :: String -> Char -> [Int]
--funcao s c = findIndices (==c) s

--func :: String -> Char -> String
--func x c = show(funcao (x c))

indices :: Eq a => a -> [a] -> [Int]
indices a as = [i | (b, i) <- zip as [0..], b == a]

main :: IO ()
main = do
    s <- getLine
    c <- getLine
    --putStrLn (show(head c))
    putStrLn (show (indices (head(c)) s))
    --putStrLn (func (s (head c)))