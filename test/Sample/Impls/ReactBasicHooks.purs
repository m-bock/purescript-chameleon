module Test.Sample.Impls.ReactBasicHooks where

import Prelude

import Data.Maybe (Maybe(..))
import Data.String (toUpper)
import Data.String as Str
import Effect (Effect)
import Effect.Uncurried (EffectFn1, mkEffectFn1)
import Effect.Unsafe (unsafePerformEffect)
import Foreign (Foreign)
import Foreign.Object (Object)
import Foreign.Object as Obj
import React.Basic.DOM (text) as DOM
import React.Basic.DOM (unsafeCreateDOMComponent)
import React.Basic.Hooks (JSX, ReactComponent, element, (/\))
import TaglessVirtualDOM (class Html, Prop(..))
import Unsafe.Coerce (unsafeCoerce)
import Web.Event.Internal.Types (Event) as DOM

type HomeProps = Unit

newtype ReactHTML a = ReactHTML ((a -> Effect Unit) -> JSX)

instance Functor ReactHTML where
  map f (ReactHTML mkJsx) = ReactHTML \handler -> mkJsx (f >>> handler)

runReactHTML :: forall a. (a -> Effect Unit) -> ReactHTML a -> JSX
runReactHTML handler (ReactHTML f) = f handler

instance Html ReactHTML where
  elem name props1 children1 = ReactHTML $ \handleAction ->
    let

      props2 = Obj.fromFoldable $ mkProp <$> props1
      props3 = Obj.insert "children" (toForeign children2) props2

      children2 = runReactHTML handleAction <$> children1

      mkProp = case _ of
        Attr "style" v -> "STYLE" /\ toForeign v
        Attr k v -> k /\ toForeign v
        Event n f -> ("on" <> upperFirst n) /\ toForeign
          ( mkEffectFn1 \event -> case f event of
              Just action -> handleAction action
              Nothing -> pure unit
          )

    in
      (unsafeCoerce $ element $ mkComp name) props3

  text str = ReactHTML $ \_ -> DOM.text str

mkElem :: Object Foreign -> JSX
mkElem = unsafeCoerce mkComp

mkComp :: forall r. String -> ReactComponent (Record r)
mkComp name = unsafePerformEffect (unsafeCreateDOMComponent name)

upperFirst :: String -> String
upperFirst str =
  case str of
    "" -> ""
    _ -> toUpper (Str.take 1 str) <> Str.drop 1 str

instance ToForeign JSX where
  toForeign = unsafeCoerce

instance ToForeign a => ToForeign (Array a) where
  toForeign = unsafeCoerce <<< map toForeign

instance ToForeign String where
  toForeign = unsafeCoerce

instance ToForeign (EffectFn1 DOM.Event Unit) where
  toForeign = unsafeCoerce

class ToForeign a where
  toForeign :: a -> Foreign

