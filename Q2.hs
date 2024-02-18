
-- >>> sum [x | x <- takeWhile (< 4000000) fib, even x] 
-- 4613732
fib :: [Int]
fib = 1 : 2 : zipWith (+) fib (drop 1 fib)
