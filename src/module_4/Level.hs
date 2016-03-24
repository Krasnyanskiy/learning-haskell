
{-
    Тип LogLevel описывает различные уровни логирования.
    data LogLevel = Error | Warning | Info

    Определите функцию cmp, сравнивающую элементы типа LogLevel так,
    чтобы было верно, что Error > Warning > Info.

    GHCi> cmp Error Warning
    GT
    GHCI> cmp Info Warning
    LT
-}

{-# LANGUAGE StandaloneDeriving #-}

deriving instance (Eq LogLevel)

instance Ord LogLevel where
    compare Error Warning   = GT
    compare Error Info      = GT
    compare Warning Info    = GT

    compare Warning Error   = LT
    compare Info Warning    = LT
    compare Info Error      = LT

    compare Info Info       = EQ
    compare Error Error     = EQ
    compare Warning Warning = EQ

cmp :: LogLevel -> LogLevel -> Ordering
cmp = compare