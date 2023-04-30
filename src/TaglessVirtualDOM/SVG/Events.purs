module TaglessVirtualDOM.SVG.Events where

import Prelude

import Control.Monad.Except (runExcept)
import Data.Either (hush)
import Data.Maybe (Maybe(..))
import Foreign (Foreign)
import Foreign as F
import Foreign.Index as FI
import TaglessVirtualDOM (Prop(..))

class FromForeign a where
  fromForeign :: Foreign -> Maybe a

instance FromForeign String where
  fromForeign for = hush $ runExcept do
    tgt <- FI.readProp "target" for
    val <- FI.readProp "value" tgt
    str <- F.readString val
    pure str

