
{-
    Parse

    ' firstName = Alex\nlastName = Finkelson\nage = 25 '

    into...

    [
        "firstName=Alex",
        "lastName=Finkelson",
        "age=25"
    ]
-}

import Data.Text(split,strip,pack)
import Data.Text.Internal

parse' :: [Char] -> [Text]
parse' = split (=='\n') . strip . pack . removeSpaces
    where removeSpaces = filter (/=' ')

