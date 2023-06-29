module VirtualDOM.Styled where

import Prelude

import Data.Array as Array
import Data.Maybe (Maybe(..), isJust)
import Data.Newtype (class Newtype, unwrap)
import Data.String as Str
import Data.Tuple.Nested (type (/\), (/\))
import VirtualDOM (class Html, Prop(..))
import VirtualDOM.HTML.Attributes as VP
import VirtualDOM.Types (ElemKeyedNode, ElemLeaf, ElemNode, ElemKeyedLeaf)

class IsStyle a where
  toStyle :: a -> Style

newtype InlineStyle = InlineStyle String

newtype ClassName = ClassName String

data Style = Style
  { inline :: InlineStyle
  , classes :: Array ClassName
  }

-------------------------------------------------------------------------------
-- Styled
-------------------------------------------------------------------------------

styleNode
  :: forall html style a
   . Html html
  => IsStyle style
  => ElemNode html a
  -> style
  -> ElemNode html a
styleNode elem style props children = elem
  (addStyle (toStyle style) props)
  children

styleLeaf
  :: forall html style a
   . Html html
  => IsStyle style
  => ElemLeaf html a
  -> style
  -> ElemLeaf html a
styleLeaf elem style props = elem
  (addStyle (toStyle style) props)

styleKeyedNode
  :: forall html style a
   . Html html
  => IsStyle style
  => ElemKeyedNode html a
  -> style
  -> ElemKeyedNode html a
styleKeyedNode elem style props children = elem
  (addStyle (toStyle style) props)
  children

styleKeyedLeaf
  :: forall html style a
   . Html html
  => IsStyle style
  => ElemKeyedLeaf html a
  -> style
  -> ElemKeyedLeaf html a
styleKeyedLeaf elem style props = elem
  (addStyle (toStyle style) props)

-------------------------------------------------------------------------------
-- Instances
-------------------------------------------------------------------------------

derive instance Newtype InlineStyle _

derive instance Newtype ClassName _

instance Semigroup Style where
  append (Style style1) (Style style2) =
    Style
      { inline: style1.inline <> style2.inline
      , classes: style1.classes <> style2.classes
      }

derive newtype instance Semigroup ClassName

instance Semigroup InlineStyle where
  append (InlineStyle s1) (InlineStyle s2) =
    InlineStyle (s1 <> ";" <> s2)

instance IsStyle Style where
  toStyle = identity

instance IsStyle String where
  toStyle str = Style
    { inline: InlineStyle str
    , classes: []
    }

instance IsStyle Unit where
  toStyle _ = Style
    { inline: InlineStyle ""
    , classes: []
    }

instance IsStyle (Array String) where
  toStyle xs = Style
    { inline: InlineStyle (Str.joinWith ";" xs)
    , classes: []
    }

instance IsStyle ClassName where
  toStyle c = Style
    { inline: InlineStyle ""
    , classes: [ c ]
    }

instance (IsStyle a, IsStyle b) => IsStyle (a /\ b) where
  toStyle (s1 /\ s2) = toStyle s1 <> toStyle s2

-------------------------------------------------------------------------------
-- Utils
-------------------------------------------------------------------------------

inlineToProp :: forall a. InlineStyle -> Prop a
inlineToProp inline = VP.style (unwrap inline)

classesToProp :: forall a. Array ClassName -> Prop a
classesToProp classes = VP.className (Str.joinWith " " $ unwrap <$> classes)

insertProp :: forall a. String -> (Maybe (Prop a) -> Prop a) -> Array (Prop a) -> Array (Prop a)
insertProp key fn props =
  if isJust $ Array.find isKey props then
    map (\x -> if isKey x then fn (Just x) else x) props
  else
    props <> [ fn Nothing ]
  where
  isKey = case _ of
    Attr key' _ -> key' == key
    Event key' _ -> key' == key

addStyle :: forall a. Style -> Array (Prop a) -> Array (Prop a)
addStyle style props =
  ( props
      # insertProp "style" mapStyle
      # insertProp "className" mapClassName
  )
  where
  Style { inline, classes } = toStyle style

  mapStyle = case _ of
    Just (Attr "style" s) -> inlineToProp (inline <> InlineStyle s)
    _ -> VP.style (unwrap inline)

  mapClassName = case _ of
    Just (Attr "className" cs) -> classesToProp (classes <> [ ClassName cs ])
    _ -> VP.className (Str.joinWith " " $ unwrap <$> classes)
