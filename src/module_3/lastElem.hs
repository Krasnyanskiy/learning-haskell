
{-
	Напишите реализацию функции, возвращающей последний элемент
	списка, через foldl1.

	lastElem :: [a] -> a
	lastElem = foldl1 undefined


	FoldL1:

	foldl1 :: (a -> a -> a) -> [a] -> a
    foldl1 f (x:xs) = foldl f xs
    foldl1 _ [] = error "list is empty"
-}

lastElem :: [a] -> a
lastElem = foldl1 (\x y -> y)
