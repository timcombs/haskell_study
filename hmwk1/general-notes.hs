{-
  #haskell-beginners
  irc channel for haskell beginners
-}

{-
  = is a binding not an assignment
  bindings are permanent

  programs that we are writing are loaded into the REPL
  then we can call the functions in the REPL
-}

{-
  Loading code from a source file into GHCi prompt causes the REPL prompt to change from Prelude> to *Main.hs this means source code has been loaded to the REPL. To unload the code and return to the Prelude> prompt, use the command :m, which is short for :module.
-}

{-
  Whitespace and Indentation
  
  indentation is significant
    it often replaces syntactic markers - { ; ( etc.
    code that is part of an expression should be indented under the beginning of expressoin
    part of expressions that are grouped should be indented to same level

  whitespace is significant

  trailing whitespace is BAD STYLE
-}

{-
  Notes on Variable Syntax:
  -convention: if variable is a list of things add an s on the end like xs
    so (x:xs) means a list in which the head is x and the rest of list is xs
-}

{-
  importing modules:

  make a file like someFile.hs
  to make it importable use this syntax:
  module Learn where
  ... some code ...

  don't forget to capitalize the module name

-}