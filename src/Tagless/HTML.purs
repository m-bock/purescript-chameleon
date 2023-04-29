module Tagless.HTML where

import Prelude

import Data.Argonaut (Json)
import Data.Maybe (Maybe)
import Web.Event.Internal.Types as DOM

data Prop a
  = Event String (DOM.Event -> Maybe a)
  | Attr String String

class Html :: (Type -> Type) -> Constraint
class (Functor html) <= Html html where
  elem :: forall a. String -> Array (Prop a) -> Array (html a) -> html a
  text :: forall a. String -> html a
