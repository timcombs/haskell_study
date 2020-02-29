sayHello :: String -> IO ()
sayHello x = putStrLn ("Hello World! Hello, " ++ x ++ "!")

triple x = x * 3

tripleMinusOne x = (x * 3) - 1

multiPi x = 3.14 * x

foo w =
  let v = w * 2
      u = w ^ 2
  in 2 * v * u

bar q =
  let r = q * 2
      s = q ^ 2
      in 2 * r * s