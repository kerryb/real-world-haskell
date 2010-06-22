takeWhileFold f xs = foldr step [] xs
  where step x a | f x       = x:a
                 | otherwise = []
