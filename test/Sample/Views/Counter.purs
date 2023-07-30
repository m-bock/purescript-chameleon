module Test.Sample.Views.Counter where

import Prelude

import Chameleon as VD

type State = Int

data Msg
  = Increment Int
  | Decrement Int

update :: Msg -> State -> State
update msg state = case msg of
  Increment n -> state + n
  Decrement n -> state - n

view :: forall html. VD.Html html => { count :: Int } -> html Msg
view props =
  VD.div
    [ VD.style "border: 1px solid red"
    ]
    [ VD.text "Counter"
    , VD.div [] [ VD.text $ show props.count ]
    , VD.button [ VD.onClick (Increment 1) ]
        [ VD.text "+" ]
    , VD.button [ VD.onClick (Decrement 1) ]
        [ VD.text "-" ]
    ]