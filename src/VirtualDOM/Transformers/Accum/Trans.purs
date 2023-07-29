module VirtualDOM.Transformers.Accum.Trans where

import Prelude

import Control.Monad.Writer (runWriter, tell)
import Data.These (These)
import Data.Traversable (for)
import Data.Tuple (Tuple(..))
import Data.Tuple.Nested (type (/\), (/\))
import VirtualDOM.Class (class Html, class MapMaybe, Key)
import VirtualDOM.Class as C
import VirtualDOM.Transformers.Accum.Class (class Accum, class TellAccum)
import VirtualDOM.Transformers.OutMsg.Class (class OutMsg, class RunOutMsg, fromOutHtml)
import VirtualDOM.Transformers.OutMsg.Class as O

data AccumT :: Type -> (Type -> Type) -> Type -> Type
data AccumT acc html a = AccumT acc (html a)

derive instance (Functor html) => Functor (AccumT acc html)

runAccumT :: forall acc html a. AccumT acc html a -> Tuple (html a) acc
runAccumT (AccumT acc html) = Tuple html acc

execAccumT :: forall acc html a. AccumT acc html a -> acc
execAccumT (AccumT acc _) = acc

evalAccumT :: forall acc html a. AccumT acc html a -> html a
evalAccumT (AccumT _ html) = html

-- Accum

instance Semigroup acc => TellAccum acc (AccumT acc html) where
  tellAccum acc' html = AccumT (acc <> acc') html'
    where
    Tuple html' acc = runAccumT html

instance Semigroup acc => Accum acc (AccumT acc html) where
  censorAccum f (AccumT acc html) = AccumT (f acc) html

-- Html

instance (Html html, Monoid acc) => Html (AccumT acc html) where
  elem elemName props children = AccumT accum (C.elem elemName props children')
    where

    runChildren :: forall a. Array (AccumT acc html a) -> Array (html a) /\ acc
    runChildren xs = runWriter do
      for xs \(AccumT acc html) -> do
        tell acc
        pure html

    children' /\ accum = runChildren children

  elemKeyed elemName props children = AccumT accum (C.elemKeyed elemName props children')
    where

    runChildren :: forall a. Array (Key /\ AccumT acc html a) -> Array (Key /\ html a) /\ acc
    runChildren xs = runWriter do
      for xs \(key /\ AccumT acc html) -> do
        tell acc
        pure (key /\ html)

    children' /\ accum = runChildren children

  text str = AccumT mempty (C.text str)

-- MapMaybe

instance (MapMaybe html) => MapMaybe (AccumT acc html) where
  mapMaybe f (AccumT acc html) = AccumT acc (C.mapMaybe f html)

-- OutMsg

instance (Monoid acc, OutMsg out html) => OutMsg out (AccumT acc html) where
  fromOutHtml :: forall msg. AccumT acc html (These msg out) -> AccumT acc html msg
  fromOutHtml (AccumT acc html) = (AccumT acc $ fromOutHtml html)

instance (Monoid acc, RunOutMsg out html) => RunOutMsg out (AccumT acc html) where
  runOutMsg (AccumT acc html) = AccumT acc (O.runOutMsg html)