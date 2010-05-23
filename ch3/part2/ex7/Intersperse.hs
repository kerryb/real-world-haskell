intersperse :: a -> [[a]] -> [a]
intersperse _ []             = []
intersperse _ [x]            = x
intersperse seperator (x:xs) = x ++ seperator : (intersperse seperator xs)
