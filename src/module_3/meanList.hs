
{-
	Реализуйте функцию meanList, которая находит среднее значение элементов списка,
	используя однократный вызов функции свертки.

	GHCi> meanList [1,2,3,4]
	2.5
	Постобработка считается допустимой, то есть предполагаемая реализация функции
	meanList имеет вид

	meanList = someFun . foldr someFoldingFun someIni
-}

meanList :: [Double] -> Double
meanList xs = thrd (foldr (\x (s,c,_) -> (x+s,c+1,(x+s)/(c+1))) (0,0,0) xs)
    where thrd (_,_,x) = x
