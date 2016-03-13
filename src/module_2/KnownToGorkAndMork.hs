
{-
	Задайте реализацию по умолчанию метода stompOrStab, которая вызывает метод stomp,
	если переданное ему значение приводит в ярость Морка; вызывает stab, если оно
	приводит в ярость Горка и вызывает сначала stab, а потом stomp, если оно приводит
	в ярость их обоих. Если не происходит ничего из вышеперечисленного, метод должен
	возвращать переданный ему аргумент.
-}

class KnownToGork a where
    stomp :: a -> a
    doesEnrageGork :: a -> Bool

class KnownToMork a where
    stab :: a -> a
    doesEnrageMork :: a -> Bool

class (KnownToGork a, KnownToMork a) => KnownToGorkAndMork a where
    stompOrStab :: a -> a
    stompOrStab a
        | doesEnrageMork a && doesEnrageGork a = stomp $ stab a
        | doesEnrageMork a = stomp a
        | doesEnrageGork a = stab a
        | otherwise = a
