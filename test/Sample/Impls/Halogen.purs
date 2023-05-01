module Test.Sample.Impls.Halogen
  ( HalogenHTML
  , runHalogenHTML
  )
  where

import Prelude

import Data.Bifunctor (lmap)
import Data.String as Str
import Data.Tuple.Nested ((/\))
import Foreign (Foreign)
import Halogen.HTML (HTML)
import Halogen.HTML as HH
import Halogen.HTML.Properties (IProp(..))
import Halogen.Query.Input (Input(..))
import VirtualDOM (class Html, ElemName(..), Key(..), Prop(..))
import Unsafe.Coerce (unsafeCoerce)
import Web.Event.Event (EventType(..))
import Web.Event.Internal.Types as DOM

newtype HalogenHTML ctx a = HalogenHTML (ctx -> HTML Void a)

derive instance Functor (HalogenHTML ctx)

instance Html HalogenHTML where
  elem (ElemName name) props children = HalogenHTML \ctx ->
    HH.element
      (HH.ElemName name)
      (mapProp <$> props)
      (runHalogenHTML ctx <$> children)

  elemKeyed (ElemName name) props children = HalogenHTML \ctx ->
    HH.keyed
      (HH.ElemName name)
      (mapProp <$> props)
      ((\(Key key /\ html) -> key /\ runHalogenHTML ctx html) <$> children)

  text str = HalogenHTML \_ -> HH.text str

  mapCtx f (HalogenHTML mkHtml) = HalogenHTML (f >>> mkHtml)

  withCtx f = HalogenHTML \ctx -> runHalogenHTML ctx $ f ctx

mapProp :: forall r a. Prop a -> IProp r a
mapProp prop = case prop of
  Attr k v -> HH.attr (HH.AttrName k) v
  Event n h -> IProp $ HH.handler (EventType $ Str.toLower n) (eventToForeign >>> h >>> map Action)

eventToForeign :: DOM.Event -> Foreign
eventToForeign = unsafeCoerce

runHalogenHTML :: forall ctx b a. ctx -> HalogenHTML ctx a -> (HTML b a)
runHalogenHTML ctx (HalogenHTML f) = lmap absurd $ f ctx

