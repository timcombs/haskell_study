{-
  Recursion patterns, polymorphism & the Prelude

  in practice writing recursive patterns is less common than one might expect

  Recall simple definition of lists of 'Int' values

  data IntList = Empty | Cons Int IntList
    deriving Show

  common concrete examples that use this:
  random hex string
  bytecode encoding
  other formatting

  ** Write 'addOneToAll' as another concrete example

  addOneToAll :: IntList -> IntList
  addOneToAll Empty = Empty
  addOneToAll (Cons x xs) = Cons (x + 1) (addOneToAll xs)

  ** ensure all elements nonnegative by taking absolute value

  absAll :: IntList -> IntList
  absAll Empty = Empty
  absAll (Cons x xs) = Cons (abs x) (absAll xs)

  ** keep only the positive integers of the list

  keepOnlyPositive :: IntList -> IntList
  keepOnlyPositive :: Empty
  keepOnlyPositive (Cons x xs) = if x > 0 then Cons x (keepOnlyPositive xs) else keepOnlyPositive xs

  ** Write 'filterIntList'

  filterIntList :: (Inte -> Bool) -> IntList -> IntList
  filterIntList :: Empty
  filterIntList (Cons x xs) = if x > 0 then Cons x (filterIntList f xs) else filterIntList f xs


  Polymorphism


  The Prelude
    is the standard library that gets imported into a program unless you explicitly tell it not too


-}