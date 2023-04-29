-- # tagless-html
--
-- In which framework should I write my PureScript web app? They differ in many aspects like state management, PureScript native virtual DOM or React bindings? Many difficult questions, many pros and cons.
--
-- I'd argue that for a large part of many apps this does not matter. Just write your pure views in a framework agnostic way with this library. And you can integrate it in any framework that does provide an matching implementation.
--
-- The test suite contains reference implementations for `halogen` and `react-basic-hooks`. You can run the sample app with
--
-- ```
-- yarn install
-- spago --config test.dhall build
-- yarn run parcel serve web/index.html 
-- ```
--
-- In the browser you should see the following component rendered in both frameworks side by side:
-- ## Example

module Test.SampleReadme where

import Prelude

import Data.Maybe (Maybe(..))
import Tagless.HTML (class Html, text)
import Tagless.HTML.Attributes as TA
import Tagless.HTML.Elements as T
import Tagless.HTML.Events as TE

type State = Int

data Msg
  = Increment Int
  | Decrement Int

update :: Msg -> State -> State
update msg state = case msg of
  Increment n -> state + n
  Decrement n -> state - n

view :: forall html. Html html => { count :: Int } -> html Msg
view props =
  T.div
    [ TA.style "border: 1px solid red"
    ]
    [ text "Counter"
    , T.div [] [ text $ show props.count ]
    , T.button [ TE.onClick (const $ Just $ Increment 1) ]
        [ text "+" ]
    , T.button [ TE.onClick (const $ Just $ Decrement 1) ]
        [ text "-" ]
    ]