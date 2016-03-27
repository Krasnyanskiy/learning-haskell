
{-
	Определите функцию updateLastName person1 person2, которая меняет
	фамилию person2 на фамилию person1.
-}

data Person = Person { firstName :: String, lastName :: String, age :: Int } deriving Show

updateLastName :: Person -> Person -> Person
updateLastName p1 p2 = p2 { lastName = (lastName p1) }

-- Person { firstName = "John", lastName = "Smith", age = 21 }
-- Person { firstName = "Mark", lastName = "Twain", age = 34 }
