module Test.Sample.Views.Counter where

import Prelude

import Data.Maybe (Maybe(..))
import TaglessVirtualDOM (class Html, text)
import TaglessVirtualDOM.Attributes as TA
import TaglessVirtualDOM.Elements as T
import TaglessVirtualDOM.Events as TE

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