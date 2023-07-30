module Chameleon.Types where

import Data.Tuple.Nested (type (/\))
import Chameleon.Class (Key, Prop)

type ElemNode :: (Type -> Type) -> Type -> Type
type ElemNode html a = Array (Prop a) -> Array (html a) -> html a

type ElemNode_ :: (Type -> Type) -> Type -> Type
type ElemNode_ html a = Array (html a) -> html a

type ElemLeaf :: (Type -> Type) -> Type -> Type
type ElemLeaf html a = Array (Prop a) -> html a

type ElemLeaf_ :: (Type -> Type) -> Type -> Type
type ElemLeaf_ html a = html a

---

type ElemKeyedNode :: (Type -> Type) -> Type -> Type
type ElemKeyedNode html a = Array (Prop a) -> Array (Key /\ html a) -> html a

type ElemKeyedNode_ :: (Type -> Type) -> Type -> Type
type ElemKeyedNode_ html a = Array (Key /\ html a) -> html a

type ElemKeyedLeaf :: (Type -> Type) -> Type -> Type
type ElemKeyedLeaf html a = Array (Prop a) -> html a

type ElemKeyedLeaf_ :: (Type -> Type) -> Type -> Type
type ElemKeyedLeaf_ html a = html a
