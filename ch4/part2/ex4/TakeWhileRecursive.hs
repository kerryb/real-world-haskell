takeWhileRecursive _ [] = []
takeWhileRecursive f (x:xs) | f x       = x:(takeWhileRecursive f xs)
                            | otherwise = []
