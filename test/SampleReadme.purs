module Test.SampleReadme where

import Prelude

import Chameleon as C

data Msg
  = Increment Int
  | Decrement Int

view :: forall html. C.Html html => { count :: Int } -> html Msg
view props =
  C.div
    [ C.style "border: 1px solid red"
    ]
    [ C.text "Counter"
    , C.div [] [ C.text $ show props.count ]
    , C.button [ C.onClick (Increment 1) ]
        [ C.text "+" ]
    , C.button [ C.onClick (Decrement 1) ]
        [ C.text "-" ]
    ]