
{- v1 -}

seqA :: Integer -> Integer
seqA n
  | n == 0 = 1
  | n == 1 = 2
  | n == 2 = 3
  | otherwise = let
      iter a0 a1 a2 (-1) = a2
      iter a0 a1 a2 n =
      	iter a1 a2 (a2 + a1 - 2 * a0) (n - 1)
    in iter 1 2 3 (n - 3)


{- v2 -}

seqA :: Integer -> Integer
seqA n
    | n == 0 = 1
    | n == 1 = 2
    | n == 2 = 3
    | n > 2 =
        let
            helper a0 a1 a2 0 = a0
            helper a0 a1 a2 n =
                helper a1 a2 (a2 + a1 - 2*a0) (n-1)
        in helper 1 2 3 n