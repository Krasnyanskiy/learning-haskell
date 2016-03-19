
{-
    Реализуйте функцию filterDisj, принимающую два унарных предиката и список,
    и возвращающую список элементов, удовлетворяющих хотя бы одному из
    предикатов.

    GHCi> filterDisj (< 10) odd [7,8,10,11,12]
    [7,8,11]
-}

import Data.List
import Control.Monad

filterDisj' :: (Eq a) => (a -> Bool) -> (a -> Bool) -> [a] -> [a]
filterDisj' p0 p1 xs = nub ((filter p0 xs) ++ (filter p1 xs))

filterDisj'' :: (a -> Bool) -> (a -> Bool) -> [a] -> [a]
filterDisj'' p0 p1 xs = filter (liftM2 (||) p0 p1) xs
