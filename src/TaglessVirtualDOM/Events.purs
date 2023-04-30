module TaglessVirtualDOM.Events where

import Prelude

import Control.Monad.Except (runExcept)
import Data.Either (fromRight)
import Data.Maybe (Maybe(..))
import Foreign (Foreign)
import Foreign as F
import Foreign.Index as FI
import TaglessVirtualDOM (Prop(..))

onClick :: forall a. a -> Prop a
onClick msg = Event "click" \_ -> Just msg

onChange :: forall a. (String -> a) -> Prop a
onChange mkMsg = Event "change" (getInput >>> mkMsg >>> Just)

getInput :: Foreign -> String
getInput for = fromRight "" $ runExcept do
  tgt <- FI.readProp "target" for
  val <- FI.readProp "value" tgt
  str <- F.readString val
  pure str