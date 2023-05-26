module VirtualDOM.Impl.TestHtml
  ( TestProp(..)
  , TestHtml(..)
  ) where

import Prelude

import Data.Generic.Rep (class Generic)
import Data.Maybe (Maybe)
import Data.Show.Generic (genericShow)
import Data.Tuple.Nested (type (/\))
import Foreign (Foreign, unsafeToForeign)
import VirtualDOM.Class as C

data TestProp msg
  = Event String (Maybe msg)
  | Attr String String

data TestHtml msg
  = Elem C.ElemName (Array (TestProp msg)) (Array (TestHtml msg))
  | ElemKeyed C.ElemName (Array (TestProp msg)) (Array (C.Key /\ TestHtml msg))
  | Text String

derive instance Functor TestProp
derive instance Functor TestHtml
derive instance Eq msg => Eq (TestHtml msg)
derive instance Eq a => Eq (TestProp a)
derive instance Generic (TestHtml msg) _
derive instance Generic (TestProp msg) _

instance Show msg => Show (TestProp msg) where
  show = genericShow

instance Show msg => Show (TestHtml msg) where
  show = genericShow

instance C.Html TestHtml where
  text = Text
  elem name props = Elem name (map mapProp props)
  elemKeyed name props = ElemKeyed name (map mapProp props)

mapProp :: forall msg. C.Prop msg -> TestProp msg
mapProp = case _ of
  C.Event name mkMsg -> Event name (mkMsg foreignRecord)
  C.Attr key val -> Attr key val

foreignRecord :: Foreign
foreignRecord = unsafeToForeign {}