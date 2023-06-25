module VirtualDOM.Transformers.OutMsg.Class where

import Data.These (These)
import VirtualDOM (ElemName, Prop)

class OutMsg out html | html -> out where
  elemOut :: forall a. ElemName -> Array (Prop (These a out)) -> Array (html a) -> html a

class OutMsg out html <= RunOutMsg out html | html -> out where
  runOutMsg :: forall msg. html msg -> html (These msg out)
