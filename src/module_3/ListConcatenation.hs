
module ListConcatenation where

import Prelude hiding ((++))

(++) :: [a] -> [a] -> [a]
(++) [] ys = ys
(++) (x:xs) ys = x : ((++) xs ys)

{-
    [] ++ ys = ys
    (x:xs) ++ ys = x : xs ++ ys
-}

