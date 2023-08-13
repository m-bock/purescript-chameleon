module Chameleon.Class where

import Prelude

import Data.Generic.Rep (class Generic)
import Data.Maybe (Maybe)
import Data.Show.Generic (genericShow)
import Data.Tuple.Nested (type (/\))
import Foreign (Foreign)

-------------------------------------------------------------------------------
--- Types
-------------------------------------------------------------------------------

data Prop msg
  = Event String (Foreign -> Maybe msg)
  | Attr String String

newtype Key = Key String

newtype ElemName = ElemName String

-------------------------------------------------------------------------------
--- Classes
-------------------------------------------------------------------------------

class Html :: (Type -> Type) -> Constraint
class
  ( Functor html
  , MapMaybe html
  ) <=
  Html html where
  elem
    :: forall a. ElemName -> Array (Prop a) -> Array (html a) -> html a
  elemKeyed
    :: forall a. ElemName -> Array (Prop a) -> Array (Key /\ html a) -> html a
  text
    :: forall a. String -> html a

class MapMaybe html where
  mapMaybe :: forall msg1 msg2. (msg1 -> Maybe msg2) -> html msg1 -> html msg2

-------------------------------------------------------------------------------
--- Utils
-------------------------------------------------------------------------------

fromMaybeMsg :: forall html msg. MapMaybe html => html (Maybe msg) -> html msg
fromMaybeMsg = mapMaybe identity

noProp :: forall msg. Prop msg
noProp = Attr "" ""

noHtml :: forall html msg. Html html => html msg
noHtml = text ""

attr :: forall msg. String -> String -> Prop msg
attr = Attr

-------------------------------------------------------------------------------
--- Instances
-------------------------------------------------------------------------------

derive instance Eq ElemName
derive instance Eq Key

derive instance Generic ElemName _
derive instance Generic Key _

instance Show ElemName where
  show = genericShow

instance Show Key where
  show = genericShow

derive instance Functor Prop