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
  Yeah, this Exercise 1 is not very well designed. Sorry for assigning it to you without first trying it.

  In Exercise 1, it asks you to define toDigits and toDigitsRev. Presumably you would define toDigits and then define toDigitsRev to just call toDigits and reverse the result.

  Personally I don't think that makes much sense. If you are going to use div and mod to find the digits, you have to start by generating the least significant digits and working your way up. So it makes more sense to define toDigitsRev first. And you don't really need toDigits to solve the problem, but it would be easy to define it as the reverse of toDigitsRev.

  Another possible solution involves using 'show' to turn the Integer into a String, then converting each character back into a digit, but that involves some things you haven't learned about, and it's debatable whether that's a better solution.

  I would say first of all that toDigits isn’t very useful to write. It’s easier to write toDigitsRev and it’s more useful in the solution.

  Then doubleEveryOther asks you to double the digits from the right, which is hard to do, and unnecessary, since you have the digits already reversed. Instead I would make doubleEveryOther start from the left, so, double the second item in the list, and the fourth, and so on.

  Also, if you follow the instructions, you won’t validate the sample solutions correctly. There’s a missing step in the algorithm. It’s based on the Luhn algorithm. After doubling a digit, if the result is 10 or greater, you need to subtract 9 (which would be equivalent to adding the two digits). For example, if your original number is 1385, then:

  Break it into reversed digits: [5, 8, 3, 1]
  Double every other digit: [5, 16, 3, 2]
  For any values 10 or greater, subtract 9: [5, 7, 3, 2]
  Add the digits together: 17
  Modulo 10: 7

  So, that would not validate. Notice that 16 - 9 is the same as 1 + 6. Also the same as 16 modulo 9.

  So, to get the right answer, you can add an extra function called, say, modulo9 that would adjust those numbers greater than 9. Hint: you could use the ‘map’ function in your solution.

  Another function you might find handy (but is not necessary) is the ‘reverse’ function, that reverses a list.

  As for exercise 2, the Towers of Hanoi, this requires only one function. I recommend you write two cases: when the number of discs is 0, or when it is n. For the nonzero case, you will be appending three lists. Two of those lists will involve a recursive call.

  I didn’t try the optional Towers of Hanoi with 4 pegs. That seems a bit beside the point of learning to write recursive functions, and more about the math. But I’d be happy to help if you’re interested in solving it.
-}

{-
  #haskell-beginners
  irc channel for haskell beginners
-}

{-
  = is a binding not an assignment
  bindings are permanent

  programs that we are writing are loaded into the REPL
  then we can call the functions in the REPL

  working with linked lists for this assignment
-}

{-# OPTIONS_GHC -Wall #-}

-- typing the function and its input and output
toDigitsRev :: Integer -> [Integer]

-- base case
toDigitsRev 0 = []
-- function definition (recursion!)
toDigitsRev n
  | n < 0 = []
  | otherwise = n `mod` 10 : toDigitsRev (n `div` 10)

{-
  towers of hanoi:
  3 concatenated list
  1st list is recursive
  2nd list is not
  3rd list is recursive
-}