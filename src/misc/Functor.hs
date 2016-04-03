

module Demo where

import Prelude hiding (Functor, fmap)

class Functor f where
    fmap :: (a->b) -> f a -> f b -- lift | поднимаем вычисленияб упаковывая 'a'
                                 --        в контейнер 'f' и результат 'b' в
                                 --        в контейнер 'f'

instance Functor [] where
    fmap = map


instance Functor Maybe where
    fmap _ Nothing  = Nothing
    fmap f (Just a) = Just (f a)

{-
	fmap Just [1,2,3]

	fmap ((\x y -> (x,y)) 5) [1,2,3]
	fmap ((,) 5) [1,2,3]
-}