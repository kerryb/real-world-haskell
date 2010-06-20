import Data.Char
import Data.List

type ErrorMessage = String

asInt_either :: String -> Either ErrorMessage Int
asInt_either ('-':xs) = case asInt_either xs of
                          Left error -> Left error
                          Right n    -> Right (-n)
asInt_either xs       | null xs   = Left "Empty string"
                      | otherwise = Right (foldl' parseDigits 0 xs)
                          where parseDigits acc char | acc < 0      = error "Too big"
                                                     | isDigit char = acc * 10 + (digitToInt char)
                                                     | otherwise    = error ("Not an integer: " ++ [char])
