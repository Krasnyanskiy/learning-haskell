{-
	Рассмотрим еще один пример рекурсивного типа данных:

	data Nat = Zero | Suc Nat

	Элементы этого типа имеют следующий вид:
	Zero, Suc Zero, Suc (Suc Zero), Suc (Suc (Suc Zero)), и так далее.
	Таким образом мы можем считать, что элементы этого типа - это
	натуральные числа в унарной
	системе счисления.

	Мы можем написать функцию, которая преобразует Nat в Integer
	следующим образом:

	fromNat :: Nat -> Integer
	fromNat Zero = 0
	fromNat (Suc n) = fromNat n + 1

	Реализуйте функции сложения и умножения этих чисел, а также функцию,
	вычисляющую факториал.
-}

data Nat = Zero | Suc Nat deriving Show

-- (Suc (Suc (Suc Zero)))

fromNat :: Nat -> Integer
fromNat Zero = 0
fromNat (Suc n) = fromNat n + 1

toNat :: Integer -> Nat
toNat 0 = Zero
toNat n = (Suc $ toNat $ n-1)


add :: Nat -> Nat -> Nat
add x y = toNat $ (+) (fromNat x) (fromNat y)

mul :: Nat -> Nat -> Nat
mul x y = toNat $ (*) (fromNat x) (fromNat y)

fac :: Nat -> Nat
fac n = toNat $ f $ fromNat n
    where f n = foldr (*) 1 [1..n]
