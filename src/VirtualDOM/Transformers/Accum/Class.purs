module VirtualDOM.Transformers.Accum.Class where

import Prelude

class TellAccum :: Type -> (Type -> Type) -> Constraint
class Semigroup acc <= TellAccum acc html | html -> acc where
  tellAccum :: forall a. acc -> html a -> html a

class Accum :: Type -> (Type -> Type) -> Constraint
class TellAccum acc html <= Accum acc html | html -> acc where
  censorAccum :: forall a. (acc -> acc) -> html a -> html a
