
{-
    Usage
        1) Load: :l ~Desktop/lc.hs
        2) Run:  logicalCompare True False
-}

logicalCompare :: Bool -> Bool -> Bool
logicalCompare x y = ((&&) x) y
