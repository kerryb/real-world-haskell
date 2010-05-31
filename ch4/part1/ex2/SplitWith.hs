splitWith :: (a -> Bool) -> [a] -> [[a]]
splitWith _ [] = []
splitWith fn xs | null before = splitWith fn (tail after)
                | null after  = [before]
                | otherwise   = before : splitWith fn (tail after)
                where (before, after) = span fn xs
