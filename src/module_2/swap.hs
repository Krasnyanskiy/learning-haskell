
-- 2.2 Параметрический полиморфизм (2) – Шаг 9

swap = f (g h)

f = uncurry

g = flip

h = (,)


{-
f :: Num a => (a, a) -> a
f (x,y) = x + y

cf :: Num c => c -> c -> c
cf = curry f

ucf :: Num c => (c, c) -> c
ucf = uncurry cf

let ufl = uncurry flip

-}