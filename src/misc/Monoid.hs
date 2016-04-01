module MonoidApp where

class Monoid' a where
    mempty'  :: a                       -- нейтральный элемент
    mappend' :: a -> a -> a             -- бинарная операция

    mconcat' :: [a] -> a                -- свёртка (моноидальная конкатенация)
    mconcat' = foldr mappend' mempty'   -- mempty' - инициал. значение, mapped' - ф-я свёртки

instance Monoid' Integer where
    mempty'  = 0
    mappend' = (+)
