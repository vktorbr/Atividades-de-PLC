import Data.Char

converte :: Char -> Char
converte x
 | (isUpper x) == True = toLower x
 | (isLower x) == True = toUpper x
 | otherwise = x

funcao :: String -> String
funcao [] = []
funcao (x:xs) = (converte x):funcao xs

main :: IO ()
main = do
    i <- getLine
    putStrLn(funcao i)