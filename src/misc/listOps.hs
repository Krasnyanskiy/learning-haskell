
take :: Int -> [a] -> [a]
take n _ 		| n <= 0 = []
take _ [] 				 = []
take n (x:xs) 			 = x : take (n-1) xs


drop :: Int -> [a] -> [a]
drop n xs		| n <= 0 =  xs
drop _ [] 				 =  []
drop n (x:xs)  	   		 =  drop (n-1) xs


splitAt :: Int -> [a] -> ([a],[a])
splitAt n xs   =  (take n xs, drop n xs)


(!!) :: [a] -> Int -> a
(!!) xs n      |  n < 0 = error "Oops!"
(!!) [] _               = error "Oops!"
(!!) (x:_) 0            = x
(!!) (_:xs) n           = (!!) xs (n - 1)


takeWhile :: (a -> Bool) -> [a] -> [a]
takeWhile _ [] = []
takeWhile p (x:xs)
	| p x       = x : takeWhile p xs
	| otherwise = []

