module Unit_4_5 where

data List a = Nil | Cons a (List a) deriving Show

-- Cons 1 Nil
-- Cons 1 (Cons 2 (Cons 2 Nil))
