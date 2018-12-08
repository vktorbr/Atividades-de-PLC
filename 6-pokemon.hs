{-
funcao :: String -> Int -> Int -> String
funcao input min max =
    let allLines = lines input
        shortLines = filter (\line -> ((min < (read line :: Int)) || ((read line :: Int) > max))) allLines
        result = unlines shortLines
    in result

func eof =
    if eof == True
        then funcao 
            
    
main :: IO ()
main = do
    fminima <- readLn
    fmaxima <- readLn
    
    func 
    

    putStrLn (funcao pokemons fminima fmaxima)
-}
import Control.Monad
import System.IO

let 
    
funcao :: [t] -> String
funcao

loop :: IO ()
loop =
    do line <- readLn
       putStrLn (funcao line)
       eof  <- isEOF
       unless eof loop

main = loop