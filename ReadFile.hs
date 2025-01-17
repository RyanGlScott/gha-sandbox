module Main (main) where

import System.IO

main :: IO ()
main = do
  putStrLn $ "Locale-derived encoding is " ++ show localeEncoding
  hGetEncoding stdin >>= print
  hGetEncoding stdout >>= print
  hGetEncoding stderr >>= print
  h <- openFile "pi.txt" ReadMode
  hGetEncoding h >>= print
  hGetContents h >>= putStrLn
