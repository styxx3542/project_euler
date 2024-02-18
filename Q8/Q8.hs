import Data.Char
import Data.List

greatestProduct :: String -> Int -> Int
greatestProduct s n = maximum . map (product . take n) $ tails $ map digitToInt s

main = do
  contents <- readFile "./input.txt"
  print . show $ greatestProduct (filter (not. isSpace) contents) 13
