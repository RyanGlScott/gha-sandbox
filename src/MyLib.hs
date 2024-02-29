module MyLib (someFunc) where

import Control.Lens ()

-- | This is a function.
someFunc :: IO ()
someFunc = putStrLn "someFunc"
