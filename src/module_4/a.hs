
{-
	Тип данных `A` имеет один конструктор данных `B`. Конструктор данных
	принимает два аргумента типа Int. Тип у `B` это функция

	Prelude> data A = B Int Int
	Prelude> :t B
	B :: Int -> Int -> A
-}

data A = B Int Int deriving Show


foo :: A -> String
foo (B x y) = show (x > y)

-- $> foo (B 1 2)