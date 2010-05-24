data Direction = RightTurn | LeftTurn | StraightLine
                deriving (Show)

data CartesianPoint = CartesianPoint {x::Int, y::Int}
                      deriving (Show)

-- See http://en.wikipedia.org/wiki/Graham_scan#Algorithm
turnDirection a b c
             | crossProductSign < 0 = RightTurn
             | crossProductSign > 0 = LeftTurn
             | otherwise            = StraightLine
             where line1_x = x b - x a
                   line1_y = y b - y a
                   overall_x = x c - x a
                   overall_y = y c - y a
                   crossProductSign = line1_x * overall_y - line1_y * overall_x
