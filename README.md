# purescript-chameleon

<img src="https://github.com/thought2/assets/blob/407d97eba23f3137572f43ea6b754fb591d415bb/chameleon/logo.svg" width="200">

Framework agnostic web views. Instead of writing views in a concrete `HTML` type, write them in a polymorphic way and then render or embed them in any framework that provides an implementation.

## Related libraries

Currently available implementations:
  - [chameleon-halogen](https://github.com/thought2/purescript-chameleon-halogen)
  - [chameleon-react-basic](https://github.com/thought2/purescript-chameleon-react-basic)

Further libraries:
  - [chameleon-styled](https://github.com/thought2/purescript-chameleon-styled)
  - [chameleon-transformers](https://github.com/thought2/purescript-chameleon-transformers)


## Example

<!-- START example -->
*Main.purs:*
```hs
module Main where

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
```
<!-- END example -->