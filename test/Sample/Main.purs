module Test.Sample.Main where

import Prelude

import Effect (Effect)
import Effect.Aff (launchAff_)
import Halogen (liftEffect)
import Halogen as H
import Halogen as Halogen
import Halogen.HTML as HH
import Halogen.VDom.Driver as HalogenVDOM
import React.Basic.DOM as RDOM
import React.Basic.DOM.Client as ReactBasicDOM
import React.Basic.Hooks (useState, (/\))
import React.Basic.Hooks as React
import Test.Sample.Views.Counter as Counter
import VirtualDOM.Impl.Halogen (runHalogenHTML)
import VirtualDOM.Impl.ReactBasic (runReactHTML)
import Web.DOM as DOM
import Web.HTML (HTMLElement)

--------------------------------------------------------------------------------
--- React Basic Hooks
--------------------------------------------------------------------------------

mkAppReactBasicHooks :: React.Component {}
mkAppReactBasicHooks = do
  React.component "Counter" \_props -> React.do

    state /\ setState <- useState 0

    let
      handler msg = setState $ Counter.update msg

    pure $ RDOM.div
      { children:
          [ RDOM.h1_ [ RDOM.text "React Basic Hooks" ]
          , runReactHTML unit handler $ Counter.view { count: state }
          ]
      }

foreign import elemById :: String -> Effect DOM.Element

runReactBasicHooks :: Effect Unit
runReactBasicHooks = do
  rootElem <- elemById "root"
  app <- mkAppReactBasicHooks
  reactRoot <- ReactBasicDOM.createRoot rootElem
  ReactBasicDOM.renderRoot reactRoot (app {})

--------------------------------------------------------------------------------
--- Halogen
--------------------------------------------------------------------------------

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
      , runHalogenHTML unit $ Counter.view { count: state }
      ]

  handleAction msg = H.modify_ $ Counter.update msg

foreign import htmlElemById :: String -> Effect HTMLElement

runHalogen :: Effect Unit
runHalogen = launchAff_ do
  rootElem <- liftEffect $ htmlElemById "root"
  _ <- HalogenVDOM.runUI appHalogen unit rootElem
  pure unit

--------------------------------------------------------------------------------
--- Main
--------------------------------------------------------------------------------

main :: Effect Unit
main = do
  runReactBasicHooks
  runHalogen

