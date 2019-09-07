module Data.PosInt (PosInt, fromInt, toInt, add, fromIntTrunc) where

import Prelude
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Maybe as Maybe

newtype PosInt
  = PosInt Int

derive instance eqPosInt :: Eq PosInt

derive instance genericPosInt :: Generic PosInt _

instance showPosInt :: Show PosInt where
  show = genericShow

minimum :: Int
minimum = 1

-- | Creates a `PosInt` from an `Int` value. The integer must be greater than `0` otherwise Nothing is returned.
fromInt :: Int -> Maybe PosInt
fromInt i
  | i >= minimum = Just $ PosInt i

fromInt _ = Nothing

-- | Unwraps the integer
toInt :: PosInt -> Int
toInt (PosInt i) = i

-- | Adds two positive integers
add :: PosInt -> PosInt -> PosInt
add (PosInt x) (PosInt y) = PosInt (x + y)

-- | Creates a `PosInt` from any `Int`, values lower 1 are truncated to 1
-- |
-- | Useful for e.g.
-- | length' :: forall a. Array a -> PosInt
-- | length' = Array.length >>> fromIntTrunc
fromIntTrunc :: Int -> PosInt
fromIntTrunc i = Maybe.fromMaybe (PosInt minimum) (fromInt i)
