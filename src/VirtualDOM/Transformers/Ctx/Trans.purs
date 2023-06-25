module VirtualDOM.Transformers.Ctx.Trans where

import Prelude

import Data.Tuple.Nested ((/\))
import VirtualDOM.Class (class Html)
import VirtualDOM.Class as C
import VirtualDOM.Transformers.Accum.Class (class Accum, class TellAccum)
import VirtualDOM.Transformers.Accum.Class as Accum
import VirtualDOM.Transformers.Ctx.Class (class AskCtx, class Ctx)
import VirtualDOM.Transformers.OutMsg.Class (class OutMsg, class RunOutMsg, elemOut, runOutMsg)
import VirtualDOM.Transformers.TreeAccum.Class (class TellAccumTree)
import VirtualDOM.Transformers.TreeAccum.Class as AccumTree

newtype CtxT :: forall k. Type -> (k -> Type) -> k -> Type
newtype CtxT ctx html a = CtxT (ctx -> html a)

derive instance (Functor html) => Functor (CtxT ctx html)

runCtxT :: forall ctx html a. CtxT ctx html a -> ctx -> html a
runCtxT (CtxT f) = f

instance AskCtx ctx (CtxT ctx html) where
  withCtx f = CtxT \ctx -> runCtxT (f ctx) ctx

instance Ctx ctx (CtxT ctx html) where
  setCtx f html = CtxT \ctx -> runCtxT html $ f ctx

instance (Html html) => Html (CtxT ctx html) where
  elem elemName props children = CtxT \ctx ->
    C.elem elemName props (flip runCtxT ctx <$> children)

  elemKeyed elemName props children = CtxT \ctx ->
    C.elemKeyed elemName props ((\(key /\ html) -> key /\ flip runCtxT ctx html) <$> children)

  text str = CtxT \_ -> C.text str

instance (Semigroup acc, TellAccum acc html) => TellAccum acc (CtxT ctx html) where
  tellAccum acc (CtxT f) = CtxT \ctx -> Accum.tellAccum acc (f ctx)

instance (Accum acc html) => Accum acc (CtxT ctx html) where
  censorAccum f html = CtxT \ctx -> Accum.censorAccum f (runCtxT html ctx)

instance (TellAccumTree tree acc html) => TellAccumTree tree acc (CtxT ctx html) where
  tellAccumTree acc (CtxT f) = CtxT \ctx -> AccumTree.tellAccumTree acc (f ctx)

instance OutMsg out html => OutMsg out (CtxT ctx html) where
  elemOut elemName props children = CtxT \ctx ->
    elemOut elemName props (map (flip runCtxT ctx) children)

instance RunOutMsg out html => RunOutMsg out (CtxT ctx html) where
  runOutMsg (CtxT f) = CtxT \ctx ->
    runOutMsg (f ctx)