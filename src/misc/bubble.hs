
{-

    [Recursive Bubble Sort]

    Helpers:
    -------
        (r)  - repeat
        (f') - sort_helper

-}

module BubbleSort where

{-
sort :: (Eq a, Ord a) => [a] -> [a]
sort xs = let
             r f xs 0 = xs
             r f xs n = r f (f xs) (n-1)
          in r f' xs $ length xs where
               f' (x:y:xs) | x < y     = y : f' (x:xs)
                           | otherwise = x : f' (y:xs)
               f' a = a
-}               

-- {v2}

sort :: (Eq a, Ord a) => [a] -> [a]
sort xs = iterate helper xs !! length xs
    where
        helper (x:y:xs) | x < y     = y : helper (x:xs) 
                        | otherwise = x : helper (y:xs)
        helper a = a          
               
