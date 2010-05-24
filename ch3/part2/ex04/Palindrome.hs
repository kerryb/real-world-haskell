palindrome []     = []
palindrome [a]    = [a]
palindrome [a,b]  = [a,b,a]
palindrome (a:bs) = a : (palindrome bs) ++ [a]
