module Data.PosInt where

import Prelude
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))

newtype PosInt
  = PosInt Int

derive instance eqPosInt :: Eq PosInt

derive instance genericPosInt :: Generic PosInt _

instance showPosInt :: Show PosInt where
  show = genericShow

-- | Creates a `PosInt` from an `Int` value. The integer must be greater than `0` otherwise Nothing is returned.
fromInt :: Int -> Maybe PosInt
fromInt i
  | i > 0 = Just $ PosInt i

fromInt _ = Nothing

-- | Unwraps the integer
toInt :: PosInt -> Int
toInt (PosInt i) = i

add :: PosInt -> PosInt -> PosInt
add (PosInt x) (PosInt y) = PosInt (x + y)
