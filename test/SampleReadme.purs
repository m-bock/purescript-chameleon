-- # tagless-virtual-dom
--
-- In which framework should I write my PureScript web app? They differ in many
-- aspects like state management, virtual DOM implementation or native solution
-- or JS-bindings? Many difficult questions, many pros and cons.
--
-- I'd argue that for a large part of many apps this does not matter. Just write
-- your pure views in a framework agnostic way with this library. And you can
-- integrate it in any framework that does provide a matching implementation. 
--
-- The test suite contains reference implementations for `halogen` and
-- `react-basic-hooks`. You can run the sample app with 
--
-- ```
-- yarn install
-- spago --config test.dhall build
-- yarn run parcel serve web/index.html 
-- ```
--
-- In the browser you should see the sample component rendered in both
-- frameworks side by side.
--
-- ## Example

module Test.SampleReadme where

import Prelude

import TaglessVirtualDOM (class Html, text)
import TaglessVirtualDOM.HTML.Attributes as TA
import TaglessVirtualDOM.HTML.Elements as T
import TaglessVirtualDOM.HTML.Events as TE

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

-- ## TODO
-- Right now this is in a POC state. These tasks/questions need to be addressed:
--   - How to handle keyed elements?
--   - Do it really need the DOM.Event dependency?
--   - Wow to design `input` element functions?
--   - Auto generate Elements/Events/Arrtributes?
--   - Publish react-basic-hooks and halogen implementations in separate libraries
--