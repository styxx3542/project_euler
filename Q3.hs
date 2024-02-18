-- >>> primeFactorization 600851475143
-- [71,839,1471,6857]

isPrime :: (Integral a) => a -> Bool
isPrime 1 = False
isPrime 2 = True
isPrime a = and [a `mod` b /= 0 | b <- [2 .. (a `div` 2)]]

primeFactorization :: (Integral a) => a -> [a]
primeFactorization a
  | isPrime a = [a]
  | otherwise = b : primeFactorization (div a b)
 where
  b = head [x | x <- [1 ..], isPrime x, a `mod` x == 0]
