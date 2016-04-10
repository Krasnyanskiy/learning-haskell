gcd' :: (Integral a) => a -> a -> a
gcd' x y
    | y == 0    = x
    | otherwise = gcd' x (x `mod` y)
