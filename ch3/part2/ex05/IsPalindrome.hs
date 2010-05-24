isPalindrome []  = True
isPalindrome [_] = True
isPalindrome xs  = (head xs == last xs) && (isPalindrome middle)
                   where middle = drop 1 (init xs)
