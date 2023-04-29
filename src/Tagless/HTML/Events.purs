module Tagless.HTML.Events where

import Data.Maybe (Maybe)
import Tagless.HTML (Prop(..))
import Web.Event.Internal.Types as DOM

onClick :: forall a. (DOM.Event -> Maybe a) -> Prop a
onClick = Event "click"