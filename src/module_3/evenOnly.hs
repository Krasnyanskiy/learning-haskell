
{-
	Используя однократный вызов свертки, реализуйте функцию evenOnly, которая
	выбрасывает из списка элементы, стоящие на нечетных местах, оставляя
	только четные.

	GHCi> evenOnly [1..10]
	[2,4,6,8,10]
	GHCi> evenOnly ['a'..'z']
	"bdfhjlnprtvxz"
-}

evenOnly :: [a] -> [a]
evenOnly xs = [b | (a,b) <- (zip [1..] xs), not . odd $ a]

{-
evenOnly' :: [a] -> [a]
evenOnly' xs = fst (foldr f ([],0) xs)
	where f x (xs,idx)
		| odd (idx + 1) = (,) (x:xs) (idx+1)
		| otherwise     = (,) xs     (idx+1)
-}

-- evenOnly' xs = fst (foldr f ([],0) xs) where f x (y,idx) = (if (odd (idx+1)) then x:y else y,idx+1)
