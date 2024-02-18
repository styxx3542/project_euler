import Data.Char
-- >>> largestNumber
-- 906609
products :: (Num a) => [a] -> [a] -> [a]
products x y = [a * b | a <- x, b <- y]

isPalindrome :: Integer -> Bool
isPalindrome x = map digitToInt (show x) == reverse (map digitToInt (show x))

largestNumber :: Integer
largestNumber = maximum . filter isPalindrome $ products [999, 998 .. 0] [990, 979 .. 0] -- Palindromes of even digits are multiples of 11

