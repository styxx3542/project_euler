import Data.List

main = print $ head $ filter ((> 500) . divisors) (scanl1 (+) [1 ..])
divisors :: Int -> Int
divisors x = (2 *) . length $ filter (\a -> x `rem` a == 0) [1 .. (floor . sqrt $ fromIntegral x)]
