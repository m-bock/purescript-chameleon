module VirtualDOM.Transformers.Accum.Trans where

import Prelude

import Data.Array as Array
import Data.Tuple (Tuple(..))
import Data.Tuple.Nested (type (/\), (/\))
import VirtualDOM.Class (class Html, Key)
import VirtualDOM.Class as C
import VirtualDOM.Transformers.Accum.Class (class Accum, class TellAccum)

data AccumT :: forall k. Type -> (k -> Type) -> k -> Type
data AccumT acc html a = AccumT acc (html a)

derive instance (Functor html) => Functor (AccumT acc html)

runAccumT :: forall acc html a. AccumT acc html a -> Tuple acc (html a)
runAccumT (AccumT acc html) = Tuple acc html

execAccumT :: forall acc html a. AccumT acc html a -> acc
execAccumT (AccumT acc _) = acc

evalAccumT :: forall acc html a. AccumT acc html a -> html a
evalAccumT (AccumT _ html) = html

instance Semigroup acc => TellAccum acc (AccumT acc html) where
  tellAccum acc' html = AccumT (acc <> acc') html'
    where
    Tuple acc html' = runAccumT html

instance Semigroup acc => Accum acc (AccumT acc html) where
  censorAccum f (AccumT acc html) = AccumT (f acc) html

instance (Html html, Monoid acc) => Html (AccumT acc html) where
  elem elemName props children = AccumT accum (C.elem elemName props children')
    where

    runChildren :: forall a. Array (AccumT acc html a) -> acc /\ Array (html a)
    runChildren = Array.foldl next (mempty /\ [])

    next :: forall a. Tuple acc (Array (html a)) -> AccumT acc html a -> Tuple acc (Array (html a))
    next (Tuple acc1 htmls) (AccumT acc2 html) = Tuple (acc1 <> acc2) (htmls <> [ html ])

    accum /\ children' = runChildren children

  elemKeyed elemName props children = AccumT accum (C.elemKeyed elemName props children')
    where

    runChildren :: forall a. Array (Key /\ (AccumT acc html a)) -> acc /\ Array (Key /\ html a)
    runChildren = Array.foldl next (mempty /\ [])

    next :: forall a. Tuple acc (Array (Key /\ html a)) -> Tuple Key (AccumT acc html a) -> Tuple acc (Array (Key /\ html a))
    next (Tuple acc1 htmls) (key /\ AccumT acc2 html) = Tuple (acc1 <> acc2) (htmls <> [ key /\ html ])

    accum /\ children' = runChildren children

  text str = AccumT mempty (C.text str)

