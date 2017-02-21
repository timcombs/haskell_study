{-
  Lecture 1 notes
    everything is an expression
    programs created by composing expressions
      composing is applying a function to something
    variables NEVER change value in the same context
      this is calle referential transparency
    functions can be treated like data
      passed as arguments to other functions or returned from other functions
      these are first class functions or higher order functions
      (like closures in javascript)
    Looping is replaced with recursion or application of higher order functions
      using map & filter instead cuz no need to hold the indices
    
    infix needs a "element" on either side of the function

    4 * 3 works like (*) 4 3
    let a = 5 in a  --> a has no value outside of this expression
      creates a binding for the variable a?
    operator inside parentheses with a value on one side is a function section:
    (+12) or (3*) work in this way

    / operator for floating point division
    div is the function for integer divison

    backticks around a function name turn it into an infix operator
    12 `div` 4 works like div 12 4

    currying - functions don't really take multiple arguments - a function that has 
    multiple args after it is really taking the 1st arg and returning a new function
    that takes the next arg, etc.

    :l means load and give it the file name and that is the file it is loading
    :r means to reload
    
    fromIntegral (5 :: Int) :: Integer

    concatenate strings with ++

    write a function like:
    add10 x = 10 + x
    then after i can write:
    add10 5
    will return 15

    :t to find out what type something is
    can make the output be a type by :: <type> after it
    add10 5 :: Float --> makes the type output a floating point number



-}


{-# OPTIONS_GHC -Wall #-}

toDigits :: Integer -> [Integer]
toDigits :: Integer -> [Integer]

toDigits a
toDigits < 0 = []
toDigits 0 = []
  | 1234 > 0 =  1 : 2 : 3 : 4 : []

toDigitsRev 1234
  | 1234 < 0 = []
  | 1234 == 0 = []
  | 1234 > 0 = 4 : 3 : 2 : 1 : []

