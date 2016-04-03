{-

    Определите представителя класса Functor для бинарного дерева, в каждом
    узле которого хранятся элементы типа Maybe:

    data Tree a = Leaf (Maybe a) | Branch (Tree a) (Maybe a) (Tree a) deriving Show

    GHCi> words <$> Leaf Nothing
    Leaf Nothing

    GHCi> words <$> Leaf (Just "a b")
    Leaf (Just ["a","b"])

-}

data Tree a = Leaf (Maybe a) | Branch (Tree a) (Maybe a) (Tree a) deriving Show

instance Functor Tree where
    fmap f (Leaf m)       = Leaf (f `fmap` m)
    fmap f (Branch l x r) = Branch (f `fmap` l) (f `fmap` x) (f `fmap` r)