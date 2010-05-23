import Data.List

compareLengths a b = compare (length a) (length b)
sortByLength lists = sortBy compareLengths lists
