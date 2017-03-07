{-
  Lecture 1 notes
    everything is an expression
    programs created by composing expressions
      composing is applying a function to something
    variables NEVER change value in the same context
      this is called referential transparency
    functions can be treated like data
      passed as arguments to other functions or returned from other functions
      these are first class functions or higher order functions
      (like closures in javascript)
    Looping is replaced with recursion or application of higher order functions
      using map & filter instead cuz no need to hold the indices

    type:
    stack ghci --> to get into the REPL
    
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

    :l <filename> means load that file
    :r <filename> means to reload the file

    -- what does this mean?
    fromIntegral (5 :: Int) :: Integer

    concatenate strings with ++

    write a function like:
    add10 x = 10 + x
    then after i can write:
    add10 5
    will return 15

    what is a type in this context?
    :t to find out what type something is
    can make the output be a type by :: <type> after it
    add10 5 :: Float --> makes the type output a floating point number
-}
  
{-
  Exercise 1 asks you to define toDigits and toDigitsRev. Working with linked lists. Presumably you would define toDigits and then define toDigitsRev to just call toDigits and use the built-in reverse function to reverse the result.

  Exercise 1 is not very well designed. If you are going to use div and mod to find the digits, you have to start by generating the least significant digits and working your way up. So it makes more sense to define toDigitsRev first. don't need toDigits to solve the problem, but easy to define it as the reverse of toDigitsRev.

  Another possible solution uses 'show' to turn the Integer into a String, then convert each character back into a digit, and it's debatable whether that's a better solution.

  Then doubleEveryOther asks you to double the digits from the right, which is hard to do, and unnecessary, since you have the digits already reversed. Instead I would make doubleEveryOther start from the left, so, double the second item in the list, and the fourth, and so on.

  Following the instructions will incorrectly validate the sample solutions. There’s a missing step based on the Luhn algorithm.
  
  For example, if original number is 1385, then:
  toDigitRev to break integer into reversed digit list: [5, 8, 3, 1]
  Double EVERY OTHER digit: [5, 16, 3, 2]

  need to turn 2 digits numbers into 1 digit
  based on the Luhn algorithm subtracting 9 is equivalent to adding the two digits together:
  Note: 16 - 9 == 1 + 6 == 16 'mod' 9

  For any results >= 10, subtract 9: [5, 7, 3, 2]
  or the digits together: 16
  or Modulo 10: 6
  
  add an extra function called, say, modulo9 that would adjust those numbers greater than 9. Hint: you could use the ‘map’ function in your solution.

  As for exercise 5, the Towers of Hanoi, this requires only one function. I recommend you write two cases: when the number of discs is 0, or when it is n. For the nonzero case, you will be appending three lists. 1st list is recursive; 2nd list is not; 3rd list is recursive.

  don't worry about the 4 peg case
-}


{-# OPTIONS_GHC -Wall #-}

{- Exercise #1 -}
-- typing the function and its input and output
toDigitsRev :: Integer -> [Integer]
toDigits :: Integer -> [Integer]

-- base case
toDigitsRev 0 = []
-- function definition (recursion!)
toDigitsRev n
  | n < 0 = []
  | otherwise = n `mod` 10 : toDigitsRev (n `div` 10)

toDigits n = reverse (toDigitsRev n)


{- Exercise #2 -}
doubleEveryOther :: [Integer] -> [Integer]

-- base case
doubleEveryOther <= 0 = []
-- function definition





{-
  towers of hanoi:
  3 concatenated list
  1st list is recursive
  2nd list is not
  3rd list is recursive
-}