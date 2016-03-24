
max3 :: (Ord a) => [a] -> [a] -> [a] -> [a]
max3 xs ys zs = zipWith3 (\a b c -> max (max a b) c) xs ys zs
