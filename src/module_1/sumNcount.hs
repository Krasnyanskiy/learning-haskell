{- v1 -}

sum'n'count :: Integer -> (Integer, Integer)
sum'n'count x
  | x == 0 = (0, 1)
  | x < 0 = iter 0 0 (-x)
  | otherwise = iter 0 0 x
  where
    iter sum count 0 = (sum, count)
    iter sum count x = let
        (x', d) = divMod x 10
      in iter (sum + d) (count + 1) x'


{- v2 -}


sum'n'count :: Integer -> (Integer, Integer)
sum'n'count x = (sumd x', count x') where
    x' = abs x

    count :: Integer -> Integer
    count x = length' $ show x

    sumd :: Integer -> Integer
    sumd 0 = 0
    sumd x = (mod x 10) + sumd (div x 10)

    length' :: [a] -> Integer
    length' [] = 0
    length' (x:xs) = 1 + length' xs