module VirtualDOM where

import Prelude

import Data.Maybe (Maybe)
import Data.Tuple.Nested (type (/\))
import Foreign (Foreign)

data Prop a
  = Event String (Foreign -> Maybe a)
  | Attr String String

newtype Key = Key String

newtype ElemName = ElemName String

class Html :: (Type -> Type) -> Type -> Constraint
class Functor html <= Html html ctx | html -> ctx where
  elem
    :: forall a. ElemName -> Array (Prop a) -> Array (html a) -> html a
  elemKeyed
    :: forall a. ElemName -> Array (Prop a) -> Array (Key /\ html a) -> html a
  text
    :: forall a. String -> html a
  withCtx
    :: forall a. (ctx -> html a) -> html a

