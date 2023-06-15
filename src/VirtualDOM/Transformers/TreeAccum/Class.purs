module VirtualDOM.Transformers.TreeAccum.Class where

import Prelude

import Data.Maybe (Maybe(..))

class TellAccumTree :: (Type -> Type) -> Type -> (Type -> Type) -> Constraint
class IsTree tree <= TellAccumTree tree acc html | html -> tree acc where
  tellAccumTree :: forall a. acc -> html a -> html a

class IsTree tree where
  setLabel :: forall a. a -> tree a -> tree a
  nodes :: forall a. Array (tree a) -> tree a
  isEmpty :: forall a. tree a -> Boolean
  tryFlatten :: forall a. tree a -> tree a
