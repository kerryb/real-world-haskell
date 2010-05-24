data Tree a = Node a (Tree a) (Tree a)
            | Empty
              deriving (Show)

depth Empty               = 0
depth (Node _ left right) = 1 + max (depth left) (depth right)

-- test data
depth0Tree = Empty
depth1Tree = Node "parent" Empty Empty
depth2Tree = Node "parent" (Node "left child" Empty Empty)
                           (Node "right child" Empty Empty)
depth3Tree = Node "parent" (Node "left child" Empty Empty)
                           (Node "right child" (Node "grandchild" Empty Empty) Empty)
