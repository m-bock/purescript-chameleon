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

type HomeProps = Unit

newtype ReactHTML ctx a = ReactHTML (ctx -> (a -> Effect Unit) -> JSX)

instance Functor (ReactHTML ctx) where
  map f (ReactHTML mkJsx) = ReactHTML \ctx handler -> mkJsx ctx (f >>> handler)

runReactHTML :: forall ctx a. ctx -> (a -> Effect Unit) -> ReactHTML ctx a -> JSX
runReactHTML ctx handler (ReactHTML f) = f ctx handler

instance Html ReactHTML where
  elem name props1 children1 = ReactHTML $ \ctx handleAction ->
    let

      props2 = Obj.fromFoldable $ mkProp <$> props1
      props3 = Obj.insert "children" (toForeign children2) props2

      children2 = runReactHTML ctx handleAction <$> children1

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

  text str = ReactHTML $ \_ _ -> DOM.text str

  mapCtx f (ReactHTML mkJsx) = ReactHTML \ctx handleAction -> mkJsx (f ctx) handleAction

  withCtx mkHtml = ReactHTML \ctx handleAction -> runReactHTML ctx handleAction (mkHtml ctx)

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

instance ToForeign (EffectFn1 Foreign Unit) where
  toForeign = unsafeCoerce

class ToForeign a where
  toForeign :: a -> Foreign

