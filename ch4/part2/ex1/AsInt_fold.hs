import Data.Char (digitToInt)
import Data.List (foldl')

asInt_fold ""       = error "Empty string"
asInt_fold "-"      = error "Empty string"
asInt_fold ('-':xs) = -(asInt_fold xs)
asInt_fold xs       = foldl' parseDigits 0 xs
                      where parseDigits acc char = acc * 10 + (digitToInt char)
