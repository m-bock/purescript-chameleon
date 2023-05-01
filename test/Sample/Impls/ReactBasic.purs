module Test.Sample.Impls.ReactBasic
  ( ReactHTML
  , runReactHTML
  )
  where

import Prelude

import Data.Maybe (Maybe(..))
import Data.String (toUpper)
import Data.String as Str
import Data.Tuple.Nested (type (/\), (/\))
import Effect (Effect)
import Effect.Uncurried (EffectFn1, mkEffectFn1)
import Effect.Unsafe (unsafePerformEffect)
import Foreign (Foreign)
import Foreign.Object (Object)
import Foreign.Object as Obj
import React.Basic.DOM (text) as DOM
import React.Basic.DOM (unsafeCreateDOMComponent)
import React.Basic (JSX, ReactComponent, element)
import VirtualDOM (class Html, ElemName(..), Key, Prop(..))
import Unsafe.Coerce (unsafeCoerce)

newtype ReactHTML ctx a = ReactHTML (ctx -> (a -> Effect Unit) -> Maybe Key -> JSX)

instance Functor (ReactHTML ctx) where
  map f (ReactHTML mkJsx) = ReactHTML \ctx handler -> mkJsx ctx (f >>> handler)

runReactHTMLKeyed :: forall ctx a. ctx -> (a -> Effect Unit) -> Key /\ ReactHTML ctx a -> JSX
runReactHTMLKeyed ctx handler (key /\ ReactHTML f) = f ctx handler (Just key)

runReactHTML :: forall ctx a. ctx -> (a -> Effect Unit) -> ReactHTML ctx a -> JSX
runReactHTML ctx handler (ReactHTML f) = f ctx handler Nothing

instance Html ReactHTML where
  elem (ElemName name) props1 children1 = ReactHTML $ \ctx handleAction _ ->
    let

      props2 = Obj.fromFoldable $ mkProp handleAction <$> props1
      props3 = Obj.insert "children" (toForeign children2) props2

      children2 = runReactHTML ctx handleAction <$> children1

    in
      foreignFn (element $ mkComp name) props3

  elemKeyed (ElemName name) props1 children1 = ReactHTML $ \ctx handleAction key ->
    let

      props2 = Obj.fromFoldable $ mkProp handleAction <$> props1
      props3 = Obj.insert "children" (toForeign children2) props2

      children2 = runReactHTMLKeyed ctx handleAction <$> children1

    in
      foreignFn (element $ mkComp name) props3

  text str = ReactHTML $ \_ _ _ -> DOM.text str

  mapCtx f (ReactHTML mkJsx) = ReactHTML \ctx handleAction -> mkJsx (f ctx) handleAction

  withCtx mkHtml = ReactHTML \ctx handleAction _ -> runReactHTML ctx handleAction (mkHtml ctx)

mkProp :: forall a. (a -> Effect Unit) -> Prop a -> String /\ Foreign
mkProp handleAction = case _ of
  Attr "style" v -> "STYLE" /\ toForeign v
  Attr k v -> k /\ toForeign v
  Event n f -> ("on" <> upperFirst n) /\ toForeign
    ( mkEffectFn1 \event -> case f event of
        Just action -> handleAction action
        Nothing -> pure unit
    )

mkComp :: forall r. String -> ReactComponent (Record r)
mkComp name = unsafePerformEffect (unsafeCreateDOMComponent name)

foreignFn :: forall r. (Record r -> JSX) -> Object Foreign -> JSX
foreignFn = unsafeCoerce

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

