
elem' idx xs
	| idx /= 0 = elem' (idx - 1) $ tail xs
	| otherwise = head xs