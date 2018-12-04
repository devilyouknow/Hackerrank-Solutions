{-# LANGUAGE FlexibleInstances, UndecidableInstances, DuplicateRecordFields #-}

module Main where

import Control.Monad
import Data.List
import Data.List.Split
import Data.Set
import System.Environment
import System.IO

--
-- Complete the handshake function below.
--
handshake n = do
    --
    -- Write your code here.
    --

main :: IO()
main = do
    stdout <- getEnv "OUTPUT_PATH"
    fptr <- openFile stdout WriteMode

    t <- readLn :: IO Int

    forM_ [1..t] $ \tItr -> do
        n <- readLn :: IO Int

        let result = handshake n

        hPutStrLn fptr $ show result

    hFlush fptr
    hClose fptr
