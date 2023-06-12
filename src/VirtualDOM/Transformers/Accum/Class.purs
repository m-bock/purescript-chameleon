module VirtualDOM.Transformers.Accum.Class where

import Prelude

class TellAccum :: (Type -> Type) -> Type -> Constraint
class Semigroup acc <= TellAccum html acc | html -> acc where
  tellAccum :: forall a. acc -> html a -> html a

class Accum :: (Type -> Type) -> Type -> Constraint
class TellAccum html acc <= Accum html acc | html -> acc where
  listenAccum :: forall a. html a -> acc
  censorAccum :: forall a. (acc -> acc) -> html a -> html a
