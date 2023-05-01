-- # purescript-virtual-dom
--
-- In which framework should I write my PureScript web app? They differ in many
-- aspects like state management, virtual DOM implementation or native solution
-- or JS-bindings? Many difficult questions, many pros and cons.
--
-- I'd argue that for a large part of the apps this does not matter. Just write
-- your pure views in a framework agnostic way with this library. And you can
-- integrate it in any framework that does provide a matching implementation. 
--
-- Currently available implementations:
--   - [halogen](https://github.com/thought2/purescript-virtual-dom-halogen)
--   - [react-basic](https://github.com/thought2/purescript-virtual-dom-react-basic)
--
-- ## Example

module Test.SampleReadme where

import Prelude

import VirtualDOM (class Html, text)
import VirtualDOM.HTML.Attributes as TA
import VirtualDOM.HTML.Elements as T
import VirtualDOM.HTML.Events as TE

type State = Int

data Msg
  = Increment Int
  | Decrement Int

update :: Msg -> State -> State
update msg state = case msg of
  Increment n -> state + n
  Decrement n -> state - n

view :: forall html ctx. Html html => { count :: Int } -> html ctx Msg
view props =
  T.div
    [ TA.style "border: 1px solid red"
    ]
    [ text "Counter"
    , T.div [] [ text $ show props.count ]
    , T.button [ TE.onClick (Increment 1) ]
        [ text "+" ]
    , T.button [ TE.onClick (Decrement 1) ]
        [ text "-" ]
    ]

-- ## Demo
--
-- The test suite contains a demo app that renders the same component in both
-- halogen and react-basic. To run it:
--
-- ```
-- yarn install
-- spago --config test.dhall build
-- yarn run parcel serve web/index.html 
-- ```
--
-- In the browser you should see the sample component rendered in both
-- frameworks side by side.