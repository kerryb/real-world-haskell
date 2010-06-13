import Data.Char (digitToInt)
import Data.List (foldl')

parseDigits :: Int -> Char -> Int
parseDigits acc char = acc * 10 + (digitToInt char)

asInt_fold :: String -> Int
asInt_fold xs = foldl' parseDigits 0 xs
