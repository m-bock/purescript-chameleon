module VirtualDOM.Transformers.Ctx.Class where

class AskCtx :: Type -> (Type -> Type) -> Constraint
class AskCtx ctx html | html -> ctx where
  withCtx
    :: forall a. (ctx -> html a) -> html a

class Ctx :: Type -> (Type -> Type) -> Constraint
class AskCtx ctx html <= Ctx ctx html | html -> ctx where
  setCtx
    :: forall a. (ctx -> ctx) -> html a -> html a

putCtx :: forall a html ctx. Ctx ctx html => ctx -> html a -> html a
putCtx ctx = setCtx \_ -> ctx