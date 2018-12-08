import Control.Monad

main :: IO ()
main = do
    input <- getLine
    inputs <- replicateM (read input) getLine
    print $ length inputs