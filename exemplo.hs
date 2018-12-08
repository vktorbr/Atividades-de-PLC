import Control.Monad

main :: IO ()
main = do
    nlinhas <- getLine
    ncolunas <- getLine
    inputs <- replicateM (read nlinhas) getLine
    putStrLn(show(inputs))
    --print (length inputs)

    --map read $ words "1 2 3 4 5" :: [Int]
--[1,2,3,4,5]