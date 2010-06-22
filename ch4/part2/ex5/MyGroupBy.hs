import Data.List

myGroupBy f xs = foldl' step [] xs
  where step a x | null a    = [[x]]
                 | f (head$last a) x  = (init a) ++ [(last a) ++ [x]]
                 | otherwise = a ++ [[x]]
