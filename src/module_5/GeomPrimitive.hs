{-
    Определите представителя класса Functor для типа данных GeomPrimitive,
    который определён следующим образом:

    data GeomPrimitive a = Point (Point3D a) | LineSegment (Point3D a) (Point3D a)

    При определении, воспользуйтесь тем, что Point3D уже является
    представителем класса Functor.

    GHCi> fmap (+ 1) $ Point (Point3D 0 0 0)
    Point (Point3D 1 1 1)

    GHCi> fmap (+ 1) $ LineSegment (Point3D 0 0 0) (Point3D 1 1 1)
    LineSegment (Point3D 1 1 1) (Point3D 2 2 2)
-}

data Point3D a = Point3D a a a deriving Show

instance Functor Point3D where
    fmap f (Point3D a b c) = Point3D (f a) (f b) (f c)

data GeomPrimitive a = Point (Point3D a) | LineSegment (Point3D a) (Point3D a) deriving Show

instance Functor GeomPrimitive where
    fmap f (Point p@(Point3D a b c)) = Point (f `fmap` p)
    fmap f (LineSegment x@(Point3D a b c) y@(Point3D a' b' c')) =
        LineSegment (f `fmap` x) (f `fmap` y)