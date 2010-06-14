import Data.Char
import Data.List

asInt_fold ('-':xs) = -(asInt_fold xs)
asInt_fold xs       | null xs   = error "Empty string"
                    | otherwise = foldl' parseDigits 0 xs
                        where parseDigits acc char | acc < 0 = error "Too big"
                                                   | isDigit char = acc * 10 + (digitToInt char)
                                                   | otherwise = error "Not an integer"
