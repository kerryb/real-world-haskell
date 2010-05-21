main = interact wordCount
    where wordCount input = show (length (lines input)) ++ "\t"
                            ++ show (length (words input)) ++ "\t"
                            ++ show (length input) ++ "\n"
