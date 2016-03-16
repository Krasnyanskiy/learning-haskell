
fail' :: a
fail' = error "Ka-boom!"

failOrNum :: Num b => a -> b -> b
failOrNum f n = n + 1

{-
    Here is the same implementation on Scala:

    ```scala
    object LazyComputation extends App {

      def failOrInt(execution: => Unit, n: Int): Int = n + 1

      println {
        failOrInt({throw new RuntimeException("Ka-boom!")}, 4)
      }

    }
    ```
-}

