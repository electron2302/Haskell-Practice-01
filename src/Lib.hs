-- | A Lib module.
module Lib
    ( someFunc
     , square
     , ggT
    ) where

someFunc :: IO ()
someFunc = putStrLn "someFunc"

-- | Calculate the square of a number
square :: Num a 
          => a -- ^ the number
          -> a -- ^ the square
square n = n * n

-- | Calculate the ggt of two ints
ggT :: Integer -> Integer -> Integer
ggT a b = 
    if b == 0
        then a 
        else ggT b (a `mod` b)