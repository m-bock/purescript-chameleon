module Test.Sample.Views.Counter where

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