
fail' :: a
fail' = error "Ka-boom!"

failOrNum :: Num b => a -> b -> b
failOrNum f n = n + 1
