listLength :: [a] -> Int
listLength []     = 0
listLength [_]    = 1
listLength (_:xs) = 1 + (listLength xs)
