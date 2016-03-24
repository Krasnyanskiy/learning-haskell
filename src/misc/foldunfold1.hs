

foldr1 :: (a -> a -> a) -> [a] -> a
foldr1 _ [x] = x
foldr1 f (x:xs) = f x (foldr1 f xs)
foldr1 _ [] = error "list is empty"

foldl1 :: (a -> a -> a) -> [a] -> a
foldl1 f (x:xs) = foldl f xs
foldl1 _ [] = error "list is empty"

max' :: (Ord a) => [a] -> a
max' = foldl1 max

unfoldr :: (b -> Maybe (a,b)) -> b -> [a]
unfoldr f ini = helper (f ini) where
	helper (Just (x,ini')) = x : unfoldr f ini'
	helper Nothing         = []

