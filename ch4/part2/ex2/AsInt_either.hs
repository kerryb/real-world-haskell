import Data.Char
import Data.List

type ErrorMessage = String

asInt_either :: String -> Either ErrorMessage Int
asInt_either ('-':xs) = case asInt_either xs of
                          Left error -> Left error
                          Right n    -> Right (-n)
asInt_either xs       | null xs   = Left "Empty string"
                      | otherwise = foldl' parseDigits (Right 0) xs
                          where parseDigits (Left error) _   = Left error
                                parseDigits (Right acc) char | acc < 0      = Left "Too big"
                                                             | isDigit char = Right (acc * 10 + (digitToInt char))
                                                             | otherwise    = Left ("Not an integer: " ++ [char])
