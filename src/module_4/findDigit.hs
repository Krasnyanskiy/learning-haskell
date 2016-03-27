{-
	Реализуйте функцию, которая ищет в строке первое вхождение символа,
	который является цифрой, и возвращает Nothing, если в строке нет цифр.
-}

import Data.Char(isDigit)

findDigit :: [Char] -> Maybe Char
findDigit xs = helper xs where
        helper [] = Nothing
        helper (x:xs)
            | isDigit x = (Just x)
            | otherwise = helper xs

{-

	-------------------
	[The same in Scala]
	-------------------

	import java.lang.Character.isDigit

	object FindDigit extends App {
	  def findDigit(s: String): Option[Char] = {
	    s find {x => isDigit(x)}
	  }
	}

	or

	def findDigit(s: String) = s find isDigit

-}