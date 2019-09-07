module Test.Main where

import Prelude
import Test.Unit.Main (runTest)
import Test.Data.PosInt as TestDataPosInt

main =
  runTest do
    TestDataPosInt.all
