import Data.List

-- >>> (\t -> tripletProduct (fst t) (snd t)) $ head [(a,b) | a <- [1..1000], b<- [1..1000], isSatisfying a b]
-- 31875000
tripletProduct :: Int -> Int -> Int
tripletProduct a b = a * b * round (sqrt. fromIntegral $ (a*a + b*b))

isSatisfying :: Int -> Int -> Bool
isSatisfying a b = (a + b) == ((a*b) `div` 1000 + 500) && (a*b `mod` 1000 == 0)


