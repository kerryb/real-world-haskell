takeWhileFold :: (a -> Bool) -> [a] -> [a]
takeWhileFold f xs = foldr step [] xs
  where step x a | f x       = x:a
                 | otherwise = []
