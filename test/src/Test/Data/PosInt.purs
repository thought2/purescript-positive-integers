module Test.Data.PosInt where

import Prelude
import Data.Maybe (Maybe(..))
import Data.PosInt as PosInt
import Test.Unit (suite, test)
import Test.Unit.Assert as Assert

all =
  suite "module Data.PosInt" do
    test "fromInt/toInt" do
      Assert.equal
        (PosInt.fromInt (-1))
        Nothing
      Assert.equal
        (PosInt.fromInt 0)
        Nothing
      Assert.equal
        (PosInt.fromInt 1 <#> PosInt.toInt)
        (Just 1)
    test "add" do
      Assert.equal
        ( (PosInt.add <$> PosInt.fromInt 1 <*> PosInt.fromInt 1)
            <#> PosInt.toInt
        )
        (Just 2)
    test "fromIntTrunc" do
      Assert.equal
        (PosInt.fromIntTrunc (-1) # PosInt.toInt)
        1
      Assert.equal
        (PosInt.fromIntTrunc 0 # PosInt.toInt)
        1
      Assert.equal
        (PosInt.fromIntTrunc 1 # PosInt.toInt)
        1
