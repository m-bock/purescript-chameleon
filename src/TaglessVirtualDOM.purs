module TaglessVirtualDOM where

import Prelude

import Data.Maybe (Maybe)
import Foreign (Foreign)

data Prop a
  = Event String (Foreign -> Maybe a)
  | Attr String String

class Html :: (Type -> Type -> Type) -> Constraint
class Functor (html Type) <= Html html where
  elem :: forall ctx a. String -> Array (Prop a) -> Array (html ctx a) -> html ctx a
  text :: forall ctx a. String -> html ctx a
  mapCtx :: forall ctx1 ctx2 a. (ctx2 -> ctx1) -> html ctx1 a -> html ctx2 a
  withCtx :: forall ctx a. (ctx -> html ctx a) -> html ctx a

