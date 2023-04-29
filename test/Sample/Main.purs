module Test.Sample.Main where

import Prelude

import Control.Monad.Error.Class (class MonadThrow, liftEither)
import Data.Either (note)
import Data.Maybe (Maybe(..))
import Effect (Effect)
import Effect.Aff (Aff, Error)
import Effect.Exception (error, throw)
import Halogen (liftEffect)
import Halogen as H
import Halogen as Halogen
import Halogen.Aff as HA
import Halogen.HTML as HH
import Halogen.VDom.Driver (runUI)
import React.Basic.DOM (div, h1_, text) as DOM
import React.Basic.DOM (render)
import React.Basic.Hooks (useState, (/\))
import React.Basic.Hooks as React
import Test.Sample.Impls.Halogen (runHalogenHTML)
import Test.Sample.Impls.ReactBasicHooks (runReactHTML)
import Test.Sample.Views.Counter as Counter
import Web.DOM.NonElementParentNode (getElementById)
import Web.HTML (window)
import Web.HTML.HTMLDocument (toNonElementParentNode)
import Web.HTML.HTMLElement (fromElement)
import Web.HTML.Window (document)



--------------------------------------------------------------------------------
--- React Basic Hooks
--------------------------------------------------------------------------------

mkAppReactBasicHooks :: React.Component {}
mkAppReactBasicHooks = do
  React.component "Counter" \_props -> React.do

    state /\ setState <- useState 0

    let
      handler msg = setState $ Counter.update msg

    pure $ DOM.div
      { children:
          [ DOM.h1_ [ DOM.text "React Basic Hooks" ]
          , runReactHTML unit handler $ Counter.view { count: state }
          ]
      }

runReactBasicHooks :: React.Component {} -> Effect Unit
runReactBasicHooks mkComp = do
  root <- getElementById "root-react-basic-hooks" =<< (map toNonElementParentNode $ document =<< window)
  case root of
    Nothing ->
      throw "Root element not found."
    Just r -> do
      comp <- mkComp
      render (comp {}) r

--------------------------------------------------------------------------------
--- Halogen
--------------------------------------------------------------------------------

runHalogen :: forall q o. Halogen.Component q Unit o Aff -> Effect Unit
runHalogen comp = HA.runHalogenAff do
  body <- HA.awaitBody
  win <- liftEffect window
  doc <- liftEffect $ document win

  element <- liftEffect $ liftMaybe =<< getElementById "root-halogen" (toNonElementParentNode doc)

  htmlElement <- liftMaybe $ fromElement element

  runUI comp unit htmlElement

  where
  liftMaybe :: forall a m. MonadThrow Error m => Maybe a -> m a
  liftMaybe = (note (error "Error") >>> liftEither)

data Action = CounterMsg Counter.Msg

appHalogen :: forall q i o m. Halogen.Component q i o m
appHalogen =
  H.mkComponent
    { initialState
    , render
    , eval: H.mkEval $ H.defaultEval { handleAction = handleAction }
    }
  where
  initialState _ = 0

  render state =
    HH.div_
      [ HH.h1 [] [ HH.text "Halogen" ]
      , runHalogenHTML unit $ CounterMsg <$> Counter.view { count: state }
      ]

  handleAction = case _ of
    CounterMsg msg -> H.modify_ $ Counter.update msg


--------------------------------------------------------------------------------
--- Main
--------------------------------------------------------------------------------

main :: Effect Unit
main = do
  runReactBasicHooks mkAppReactBasicHooks
  runHalogen appHalogen

