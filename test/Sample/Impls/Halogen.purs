module Test.Sample.Impls.Halogen where

import Prelude

import Data.Bifunctor (lmap)
import Halogen (AttrName(..), ElemName(..))
import Halogen.HTML (HTML)
import Halogen.HTML as HH
import Halogen.HTML.Properties (IProp(..))
import Halogen.Query.Input (Input(..))
import TaglessVirtualDOM (class Html, Prop(..))
import Unsafe.Coerce (unsafeCoerce)
import Web.Event.Event (EventType(..))

instance Html HalogenHTML where
  elem name props children = HalogenHTML \ctx ->
    HH.element
      (ElemName name)
      (mapProp <$> props)
      (runHalogenHTML ctx <$> children)
    where
    mapProp prop = case prop of
      Attr k v -> HH.attr (AttrName k) v
      Event n h -> IProp $ HH.handler (EventType n) (h >>> map Action)

  text str = HalogenHTML \_ -> HH.text str

  mapCtx f (HalogenHTML mkHtml) = HalogenHTML (f >>> mkHtml)

  withCtx f = HalogenHTML \ctx -> runHalogenHTML ctx $ f ctx

newtype HalogenHTML ctx a = HalogenHTML (ctx -> HTML Void a)

derive instance Functor (HalogenHTML ctx)

runHalogenHTML :: forall ctx b a. ctx -> HalogenHTML ctx a -> (HTML b a)
runHalogenHTML ctx (HalogenHTML f) = lmap absurd $ f ctx

