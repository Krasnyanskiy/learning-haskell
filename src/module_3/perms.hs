

import Data.List (permutations)


-- v1

perms :: [a] -> [[a]]
perms = permutations


-- v2

perms' :: [a] -> [[a]]
perms' = foldr (concatMap . helper) [[]]
  where helper :: a -> [a] -> [[a]]
        helper x [] = [[x]]
        helper x l@(y:ys) = (x:l) : map (y:) (helper x ys)