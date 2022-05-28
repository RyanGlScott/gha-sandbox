{-# LANGUAGE TemplateHaskell #-}
module Main (main) where

import Development.GitRev

main :: IO ()
main = putStrLn $ unlines
  [ "Branch: " ++ $(gitBranch)
  , "Commit: " ++ $(gitHash)
  ]
