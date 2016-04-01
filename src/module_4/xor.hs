{-
	Реализуйте представителя класса типов Monoid для типа Xor, в
	котором mappend выполняет операцию xor.
-}

import Data.Bits

newtype Xor = Xor { getXor :: Bool } deriving (Eq,Show)

instance Monoid Xor where
    mempty = Xor False
    Xor x `mappend` Xor y = Xor (x `xor` y)