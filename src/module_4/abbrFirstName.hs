{-
	Определить функцию abbrFirstName, которая сокращает имя до первой буквы
	с точкой, то есть, если имя было "Ivan", то после применения этой функции
	оно превратится в "I.". Однако, если имя было короче двух символов, то
	оно не меняется.
-}

data Person = Person { firstName :: String, lastName :: String, age :: Int } deriving Show

abbrFirstName :: Person -> Person
abbrFirstName p@(Person { firstName = fn })
    | length fn < 2 = p
    | otherwise = p { firstName = head (firstName p) : "." }