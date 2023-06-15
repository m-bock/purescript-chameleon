module VirtualDOM.Transformers.TreeAccum.Trans where

import Prelude

import Control.Monad.Writer (runWriter, tell)
import Data.Maybe (Maybe(..))
import Data.Traversable (for)
import Data.Tuple (Tuple(..))
import Data.Tuple.Nested (type (/\), (/\))
import VirtualDOM (class Html, Key)
import VirtualDOM.Class as C
import VirtualDOM.Transformers.TreeAccum.Class (class IsTree, class TellAccumTree, isEmpty, nodes, setLabel, tryFlatten)

data AccumTreeT :: (Type -> Type) -> Type -> (Type -> Type) -> Type -> Type
data AccumTreeT tree acc html a = AccumTreeT (tree acc) (html a)

derive instance (Functor html) => Functor (AccumTreeT tree acc html)

runAccumTreeT :: forall tree acc html a. AccumTreeT tree acc html a -> Tuple (html a) (tree acc)
runAccumTreeT (AccumTreeT tree html) = Tuple html tree

execAccumTreeT :: forall tree acc html a. AccumTreeT tree acc html a -> tree acc
execAccumTreeT (AccumTreeT tree _) = tree

evalAccumTreeT :: forall tree acc html a. AccumTreeT tree acc html a -> html a
evalAccumTreeT (AccumTreeT _ html) = html

instance IsTree tree => TellAccumTree tree acc (AccumTreeT tree acc html) where
  tellAccumTree x html = AccumTreeT (setLabel x tree) html'
    where
    Tuple html' tree = runAccumTreeT html

instance (Html html, IsTree tree) => Html (AccumTreeT tree acc html) where

  elem elemName props children = AccumTreeT tree (C.elem elemName props children')
    where

    runChildren :: forall a. Array (AccumTreeT tree acc html a) -> Array (html a) /\ Array (tree acc)
    runChildren xs =
      runWriter do
        for xs \(AccumTreeT tree' html) -> do
          unless (isEmpty tree') do
            tell [ tryFlatten tree' ]
          pure html

    children' /\ trees = runChildren children

    tree = nodes trees

  elemKeyed elemName props children = AccumTreeT tree (C.elemKeyed elemName props children')
    where

    runChildren :: forall a. Array (Key /\ AccumTreeT tree acc html a) -> Array (Key /\ html a) /\ Array (tree acc)
    runChildren xs =
      runWriter do
        for xs \(key /\ AccumTreeT tree' html) -> do
          unless (isEmpty tree') do
            tell [ tryFlatten tree' ]
          pure (key /\ html)

    children' /\ trees = runChildren children

    tree = nodes trees

  text str = AccumTreeT (nodes []) (C.text str)

--- 
data Tree a = Tree (Maybe a) (Array (Tree a))

instance IsTree Tree where
  setLabel a (Tree _ xs) = Tree (Just a) xs
  nodes = Tree Nothing
  isEmpty (Tree x xs) = case x, xs of
    Nothing, [] -> true
    _, _ -> false
  tryFlatten t@(Tree x xs) = case x, xs of
    Nothing, [ t1 ] -> t1
    _, _ -> t