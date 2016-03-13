{-
    Измените определение функции fibonacci так, чтобы она была определена
    для всех целых чисел и порождала при отрицательных аргументах указанную
    последовательность.﻿
-}

fibonacci :: Integer -> Integer
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n =
    if n > 0
        then fibonacci (n - 1) + fibonacci (n - 2)
        else fibonacci (n + 2) - fibonacci (n + 1)