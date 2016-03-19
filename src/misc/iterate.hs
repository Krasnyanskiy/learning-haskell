


iterate :: (a -> a) -> a -> [a]
iterate f x = x : iterate f (f x)

{-
    Example:
        take 10 $ iterate (^2) 5
-}