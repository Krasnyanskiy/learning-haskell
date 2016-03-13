
{-
	Only for Numbers!

	To make it polimorphic use the next type declaration:
	elem' :: Eq a => a -> [a] -> Bool
-}

elem' :: (Eq a, Num a) => a -> [a] -> Bool
elem' x arr = if [1 | e <- arr, e == x] == [] then False else True
