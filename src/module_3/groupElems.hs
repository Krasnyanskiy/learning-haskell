
groupElems :: Eq a => [a] -> [[a]]
groupElems []     = []
groupElems (x:xs) = (x : takeWhile (== x) xs) : groupElems (dropWhile (== x) xs)

{-
    groupElems :: Eq a => [a] -> [[a]]
    groupElems [] = []
    groupElems xs = group xs
-}