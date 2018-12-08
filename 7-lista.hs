main :: IO ()
main = do
    contents <- getContents
    putStrLn (maior contents)

maior :: String -> String
maior input =
    let atual = lines input
        result = fun atual
        --result = unlines atual
    in result

fun :: [String] -> String
fun (x:xs)
 | (length x) == (funcao (x:xs)) = x
 | otherwise = fun xs

funcao :: [String] -> Int 
--funcao [] = 0
funcao (x:xs)
 | length(x:xs) == 1 = length x
 | (length x) < (funcao xs) = length x
 | otherwise = funcao xs 