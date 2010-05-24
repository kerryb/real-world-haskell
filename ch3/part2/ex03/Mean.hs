mySum []     = 0
mySum (x:xs) = x + (mySum xs)

myLength []     = 0
myLength (_:xs) = 1 + (myLength xs)

mean xs = (mySum xs) / (fromIntegral (myLength xs))

