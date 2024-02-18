toIntegerList :: String -> [Integer]
toIntegerList = map read . lines

solution :: [Integer] -> String
solution = take 10 . show . sum

main = interact $ solution . toIntegerList  
