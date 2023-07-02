module VirtualDOM.Styled where

import Prelude

import Data.Array as Array
import Data.Foldable (fold)
import Data.HashMap (HashMap)
import Data.HashMap as HashMap
import Data.Hashable (class Hashable, hash)
import Data.Maybe (Maybe(..), isJust)
import Data.Newtype (class Newtype, unwrap)
import Data.String as Str
import Data.Tuple.Nested (type (/\), (/\))
import VirtualDOM (class Html, Prop(..))
import VirtualDOM.Class as VDC
import VirtualDOM.HTML.Attributes as VP
import VirtualDOM.HTML.Elements as VDE
import VirtualDOM.Types (ElemKeyedNode, ElemLeaf, ElemNode, ElemKeyedLeaf)

class IsStyle a where
  toStyle :: a -> Style

newtype InlineStyle = InlineStyle String

newtype ClassName = ClassName String

newtype StyleDecl = StyleDecl String

newtype Style = Style
  { inline :: Array InlineStyle
  , classes :: Array ClassName
  , declarations :: Array StyleDecl
  }

-------------------------------------------------------------------------------
-- StyleMap
-------------------------------------------------------------------------------

getStyleMap :: Style -> StyleMap /\ Style
getStyleMap style@(Style { declarations }) =
  styleMap /\ newStyle
  where
  styleMap :: StyleMap
  styleMap = HashMap.fromArrayBy mkClassName identity declarations

  mkClassName :: StyleDecl -> ClassName
  mkClassName styleDecl = ClassName (prefix <> show (hash styleDecl))

  newStyle :: Style
  newStyle = style
    # \(Style rec) -> Style $ rec
        { declarations = []
        , classes = HashMap.keys styleMap
        }

  prefix = "hashed-"

type StyleMap = HashMap ClassName StyleDecl

class RegisterStyleMap (html :: Type -> Type) where
  registerStyleMap :: forall msg. StyleMap -> html msg -> html msg

printStyleMap :: StyleMap -> String
printStyleMap styleMap =
  HashMap.toArrayBy printEntry styleMap
    # Str.joinWith "\n"
  where
  printEntry :: ClassName -> StyleDecl -> String
  printEntry (ClassName className) (StyleDecl styleDecl) =
    "." <> className <> " {\n" <> styleDecl <> "\n}"

viewStylemap :: forall html msg. Html html => StyleMap -> html msg
viewStylemap styleMap = VDE.style_ [ VDC.text $ printStyleMap styleMap ]

-------------------------------------------------------------------------------
-- Style Elements
-------------------------------------------------------------------------------

styleNode
  :: forall html style a
   . Html html
  => RegisterStyleMap html
  => IsStyle style
  => ElemNode html a
  -> style
  -> ElemNode html a
styleNode elem someStyle props children =
  registerStyleMap styleMap $
    elem
      (addStyle newStyle props)
      children
  where
  oldStyle = toStyle someStyle
  styleMap /\ newStyle = getStyleMap oldStyle

styleLeaf
  :: forall html style a
   . Html html
  => RegisterStyleMap html
  => IsStyle style
  => ElemLeaf html a
  -> style
  -> ElemLeaf html a
styleLeaf elem someStyle props =
  registerStyleMap styleMap $
    elem
      (addStyle newStyle props)
  where
  oldStyle = toStyle someStyle
  styleMap /\ newStyle = getStyleMap oldStyle

styleKeyedNode
  :: forall html style a
   . Html html
  => RegisterStyleMap html
  => IsStyle style
  => ElemKeyedNode html a
  -> style
  -> ElemKeyedNode html a
styleKeyedNode elem someStyle props children =
  registerStyleMap styleMap $
    elem
      (addStyle newStyle props)
      children
  where
  oldStyle = toStyle someStyle
  styleMap /\ newStyle = getStyleMap oldStyle

styleKeyedLeaf
  :: forall html style a
   . Html html
  => RegisterStyleMap html
  => IsStyle style
  => ElemKeyedLeaf html a
  -> style
  -> ElemKeyedLeaf html a
styleKeyedLeaf elem someStyle props =
  registerStyleMap styleMap $
    elem
      (addStyle newStyle props)
  where
  oldStyle = toStyle someStyle
  styleMap /\ newStyle = getStyleMap oldStyle

-------------------------------------------------------------------------------
-- Instances
-------------------------------------------------------------------------------

derive instance Newtype InlineStyle _

derive instance Newtype ClassName _

derive newtype instance Semigroup Style

derive newtype instance Monoid Style

derive newtype instance Hashable ClassName
derive instance Eq ClassName

derive newtype instance Hashable StyleDecl
derive instance Eq StyleDecl

instance IsStyle Style where
  toStyle = identity

instance IsStyle String where
  toStyle str = mempty
    # \(Style rec) -> Style $ rec { inline = [ InlineStyle str ] }

instance IsStyle Unit where
  toStyle _ = mempty

instance IsStyle a => IsStyle (Array a) where
  toStyle xs = fold (toStyle <$> xs)

instance IsStyle ClassName where
  toStyle c = mempty
    # \(Style rec) -> Style $ rec { classes = [ c ] }

instance IsStyle StyleDecl where
  toStyle c = mempty
    # \(Style rec) -> Style $ rec { declarations = [ c ] }

instance (IsStyle a, IsStyle b) => IsStyle (a /\ b) where
  toStyle (s1 /\ s2) = toStyle s1 <> toStyle s2

-------------------------------------------------------------------------------
-- Utils
-------------------------------------------------------------------------------

inlineToProp :: forall a. Array InlineStyle -> Prop a
inlineToProp inlineStyles = VP.style (Str.joinWith ";" $ map unwrap inlineStyles)

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
    Just (Attr "style" s) -> inlineToProp (inline <> [ InlineStyle s ])
    _ -> inlineToProp inline

  mapClassName = case _ of
    Just (Attr "className" cs) -> classesToProp (classes <> [ ClassName cs ])
    _ -> classesToProp classes
