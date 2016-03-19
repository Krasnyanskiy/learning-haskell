
{-
    Предположим, что функция repeat, была бы определена следующим образом:
    repeat = iterate repeatHelper
    определите, как должна выглядеть функция repeatHelper.
-}

repeat :: a -> [a]
repeat = iterate repeatHelper where repeatHelper a = a