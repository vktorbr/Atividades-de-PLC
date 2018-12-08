factors :: (Integral a) => a -> [a]
factors n = let
    p1 = [x | x <- [1 .. floor $ sqrt $ fromIntegral n], n `mod` x == 0]
    p2 = map (div n) (tail p1)
    in p1 `concatNoDupe` (reverse p2) where
        concatNoDupe :: (Eq a) => [a] -> [a] -> [a]
        concatNoDupe [] ys = ys
        concatNoDupe [x] (y:ys) = if x == y then (y : ys) else (x : y : ys)
        concatNoDupe (x:xs) ys = x : (concatNoDupe xs ys)