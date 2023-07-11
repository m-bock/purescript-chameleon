module VirtualDOM.Transformers.OutMsg.Class where

import Data.These (These)

class OutMsg out html | html -> out where
  fromOutHtml :: forall a. html (These a out) -> html a

class OutMsg out html <= RunOutMsg out html | html -> out where
  runOutMsg :: forall msg. html msg -> html (These msg out)
