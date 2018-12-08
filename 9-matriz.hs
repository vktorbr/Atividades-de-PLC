--mult' :: Num a => [[a]] -> [[a]] -> [[a]]
--mult' a b = [[sum $ zipWith (*) ar bc | bc <- (transpose b)] | ar <- a]

--main :: IO
--main = do
import Control.Monad (replicateM)

    -- Read space seperated words on a line from stdin
readMany :: Read a => IO [a]
readMany = fmap (map read . words) getLine
    
parse :: IO (Int, Int, [[Int]])
parse = do
    [m, n] <- readMany
    xss    <- replicateM m readMany
    return (m, n, xss)