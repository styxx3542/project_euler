import Data.List
-- >>>(2 : (sieve 10000 [3,5..10001])) !! 1000
multiples x limit = takeWhile (<= limit) (map (* x) [0..])
sieve :: Int -> [Int] -> [Int]
sieve _ [] = []
sieve n (x : xs)
  |x * x > n = x: xs
  |otherwise = x : sieve n (xs \\ multiples x n)
