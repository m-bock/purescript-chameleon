module VirtualDOM.Transformers.Ctx.Trans where

import Prelude

import Data.Maybe (Maybe)
import Data.These (These)
import Data.Tuple.Nested ((/\))
import VirtualDOM.Class (class Html, class MapMaybe, mapMaybe)
import VirtualDOM.Class as C
import VirtualDOM.Transformers.Accum.Class (class Accum, class TellAccum)
import VirtualDOM.Transformers.Accum.Class as Accum
import VirtualDOM.Transformers.Ctx.Class (class AskCtx, class Ctx)
import VirtualDOM.Transformers.OutMsg.Class (class OutMsg, class RunOutMsg, fromOutHtml, runOutMsg)

newtype CtxT :: forall k. Type -> (k -> Type) -> k -> Type
newtype CtxT ctx html a = CtxT (ctx -> html a)

derive instance (Functor html) => Functor (CtxT ctx html)

runCtxT :: forall ctx html a. CtxT ctx html a -> ctx -> html a
runCtxT (CtxT f) = f

-- Ctx

instance AskCtx ctx (CtxT ctx html) where
  withCtx f = CtxT \ctx -> runCtxT (f ctx) ctx

instance Ctx ctx (CtxT ctx html) where
  setCtx f html = CtxT \ctx -> runCtxT html $ f ctx

-- Html

instance (Html html) => Html (CtxT ctx html) where
  elem elemName props children = CtxT \ctx ->
    C.elem elemName props (flip runCtxT ctx <$> children)

  elemKeyed elemName props children = CtxT \ctx ->
    C.elemKeyed elemName props ((\(key /\ html) -> key /\ flip runCtxT ctx html) <$> children)

  text str = CtxT \_ -> C.text str

-- MapMaybe

instance MapMaybe html => MapMaybe (CtxT ctx html) where
  mapMaybe :: forall msg1 msg2. (msg1 -> Maybe msg2) -> CtxT ctx html msg1 -> CtxT ctx html msg2
  mapMaybe f mkHtml = CtxT \ctx ->
    mapMaybe f (runCtxT mkHtml ctx)

-- Accum

instance (Semigroup acc, TellAccum acc html) => TellAccum acc (CtxT ctx html) where
  tellAccum acc (CtxT f) = CtxT \ctx -> Accum.tellAccum acc (f ctx)

instance (Accum acc html) => Accum acc (CtxT ctx html) where
  censorAccum f html = CtxT \ctx -> Accum.censorAccum f (runCtxT html ctx)

-- OutMsg

instance OutMsg out html => OutMsg out (CtxT ctx html) where
  fromOutHtml :: forall msg. CtxT ctx html (These msg out) -> CtxT ctx html msg
  fromOutHtml (CtxT f) = CtxT \ctx ->
    fromOutHtml (f ctx)

instance RunOutMsg out html => RunOutMsg out (CtxT ctx html) where
  runOutMsg (CtxT f) = CtxT \ctx ->
    runOutMsg (f ctx)