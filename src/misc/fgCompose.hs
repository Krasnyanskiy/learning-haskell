
{-
    Try to use:

	$> let fgFB = fgCompose foo bar
	$> fgFB 42
-}

foo :: Num a => a -> a
foo a = a + 2

bar :: Num a => a -> a
bar a = a * 2

fgCompose :: (Num a, Num b, Num c) => (a -> b) -> (c -> a) -> c -> b
fgCompose f g = f . g
