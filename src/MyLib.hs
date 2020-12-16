{-# LANGUAGE CPP #-}
module MyLib (someFunc) where

someFunc :: IO ()
#if MIN_VERSION_base(4,14,0)
someFunc = putStrLn "someFunc"
#else
someFunc = doesn'tExist
#endif
