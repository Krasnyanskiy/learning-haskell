{-
	Реализуйте функцию findDigitOrX, использующую функцию
	findDigit (последнюю реализовывать не нужно). findDigitOrX должна
	находить цифру в строке, а если в строке цифр нет, то она должна
	возвращать символ 'X'. Используйте конструкцию case.
-}

import Data.Char(isDigit)

findDigitOrX :: [Char] -> Char
findDigitOrX xs =
    case findDigit xs of
        (Just x) -> x
        Nothing  -> 'X'