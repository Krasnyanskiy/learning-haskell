
{-
    fixme
-}

data Bit  = Zero  | One  deriving (Eq, Show)
data Sign = Minus | Plus deriving (Eq, Show)
data Z    = Z Sign [Bit] deriving (Eq, Show)

intToBin 0 = [Zero]
intToBin n = reverse (helper n) where
    helper 0 = []
    helper n | n `mod` 2 == 1 = One  : helper (n `div` 2)
             | n `mod` 2 == 0 = Zero : helper (n `div` 2)

binToInt :: [Bit] -> Int
binToInt bits = foldr (\x y -> x + y*2) 0 $ reverse $ helper bits where
    helper [] = []
    helper (x:xs)
        | x == Zero = 0 : helper (xs)
        | x == One  = 1 : helper (xs)

sign n
    | n >= 0 = Plus
    | n <  0 = Minus

fromIntToZ n = (Z (sign n) (intToBin $ abs n))

fromZtoInt (Z sgn xs)
    | sgn == Minus = - (binToInt xs)
    | sgn == Plus  = binToInt xs

add :: Z -> Z -> Z
add a b = fromIntToZ $ (+) (fromZtoInt a) (fromZtoInt b)

mul :: Z -> Z -> Z
mul a b = fromIntToZ $ (*) (fromZtoInt a) (fromZtoInt b)
