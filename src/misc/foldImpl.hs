

foldr' :: (a -> b -> b) -> b -> [a] -> b
foldr' f ini []     = ini
foldr' f ini (x:xs) = f x (foldr' f ini xs)


foldl' :: (a -> b -> b) -> b -> [a] -> b
foldl' f ini []     = ini
foldl' f ini (x:xs) = foldl' f (f ini x) xs



{-
	foldr (-) x [2,1,5]
	foldl (-) x [2,1,5]

	foldr = (2 - (1 - (5 - x)))
	foldl = (((x - 2) - 1) - 5)
-}