module TaglessVirtualDOM.Events where

import Data.Maybe (Maybe)
import TaglessVirtualDOM (Prop(..))
import Web.Event.Internal.Types as DOM

onClick :: forall a. (DOM.Event -> Maybe a) -> Prop a
onClick = Event "click"