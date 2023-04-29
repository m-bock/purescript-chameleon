module Test.Sample.Impls.Halogen where

import Prelude

import Data.Bifunctor (lmap)
import Halogen (AttrName(..), ElemName(..))
import Halogen.HTML (HTML)
import Halogen.HTML as HH
import Halogen.HTML.Properties (IProp(..))
import Halogen.Query.Input (Input(..))
import Tagless.HTML (class Html, Prop(..))
import Web.Event.Event (EventType(..))

instance Html HalogenHTML where
  elem name props children = HalogenHTML $
    HH.element
      (ElemName name)
      (mapProp <$> props)
      (runHalogenHTML <$> children)
    where
    mapProp prop = case prop of
      Attr k v -> HH.attr (AttrName k) v
      Event n h -> IProp $ HH.handler (EventType n) (h >>> map Action)

  text str = HalogenHTML $ HH.text str

newtype HalogenHTML a = HalogenHTML (HTML Void a)

derive instance Functor HalogenHTML

runHalogenHTML :: forall b a. HalogenHTML a -> (HTML b a)
runHalogenHTML (HalogenHTML x) = lmap absurd x

