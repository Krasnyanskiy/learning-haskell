
sum' :: Num a => [a] -> a
sum' [] = 0
sum' [_] = 1
sum' (x:xs) = 1 + sum' xs


product' :: Num a => [a] -> a
product' [] = 0
product' [x] = x
product' (x:xs) = x * product' xs


maximum' :: Ord a => [a] -> a
maximum' [] = error "Could not find maximum element in empty list"
maximum' [x] = x
maximum' (x:xs)
	| x > maximum' xs = x
	| otherwise = maximum' xs


minimum' :: Ord a => [a] -> a
minimum' [] = error "Could not find minimum element in empty list"
minimum' [x] = x
minimum' (x:xs)
	| x > minimum' xs = x
	| otherwise = minimum' xs