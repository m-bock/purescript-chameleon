{-
# purescript-virtual-dom

In which framework should I write my PureScript web app? They differ in many
aspects like state management, virtual DOM implementation or native solution or
JS-bindings? Many difficult questions, many pros and cons.

I'd argue that for a large part of the apps this does not matter. Just write
your pure views in a framework agnostic way with this library. And you can
integrate it in any framework that does provide a matching implementation. 

Currently available implementations:
  - [halogen](https://github.com/thought2/purescript-virtual-dom-halogen)
  - [react-basic](https://github.com/thought2/purescript-virtual-dom-react-basic)

With this library web views are written in tagless final style. Instead of
returning a concrete type like `HTML Msg` they return `html Msg`, along with the
constraint `Html html`. This is analogous to writing monadic code like `Monad m
=> .... -> m Unit`.


## Example
-}

module Test.Sample.Views.Counter where

import Prelude

import VirtualDOM as VD

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