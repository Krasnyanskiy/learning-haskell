{-
	Реализуйте функции distance, считающую расстояние между двумя точками
	с вещественными координатами, и manhDistance, считающую манхэттенское
	расстояние между двумя точками с целочисленными координатами.
-}

data Coord a = Coord a a

distance :: Coord Double -> Coord Double -> Double
distance (Coord a b) (Coord a' b') = sqrt ((a - a')^2 + (b - b')^2)

manhDistance :: Coord Int -> Coord Int -> Int
manhDistance (Coord a b) (Coord a' b') = abs (a - a') + abs (b - b')