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
ggT a b = abs (if a == 0 then b else ggT (b `mod` a) a)