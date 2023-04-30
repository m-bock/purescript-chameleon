module TaglessVirtualDOM.SVG.Attributes where

import Prelude

import Data.String as Str
import Data.Symbol (class IsSymbol, reflectSymbol)
import Data.Variant (Variant)
import Data.Variant as V
import Prim.Row as Row
import Prim.RowList (class RowToList, RowList)
import Prim.RowList as RL
import TaglessVirtualDOM (Prop(..))
import Type.Proxy (Proxy(..))

class IsAttrib a where
  toAttrib :: a -> String

instance IsAttrib String where
  toAttrib = identity

instance IsAttrib Boolean where
  toAttrib = if _ then "true" else "false"

instance IsAttrib Number where
  toAttrib = show

instance IsAttrib Int where
  toAttrib = show

instance IsAttrib (Array String) where
  toAttrib = Str.joinWith " "

instance (RowToList r rl, IsAttribVariantRL rl r) => IsAttrib (Variant r) where
  toAttrib = toAttribVariantRL (Proxy :: Proxy rl)

class IsAttribVariantRL :: RowList Type -> Row Type -> Constraint
class IsAttribVariantRL rl r where
  toAttribVariantRL :: Proxy rl -> Variant r -> String

instance IsAttribVariantRL RL.Nil r where
  toAttribVariantRL _ _ = ""

instance
  ( IsAttribVariantRL rl r'
  , Row.Cons sym Unit r' r
  , IsSymbol sym
  ) =>
  IsAttribVariantRL (RL.Cons sym Unit rl) r where
  toAttribVariantRL _ =
    toAttribVariantRL (Proxy :: _ rl)
      # V.on prxSym (const $ reflectSymbol prxSym)
    where
    prxSym = Proxy :: _ sym

-- | Specifies the x coordinate of the center of a circle
cx :: forall a. String -> Prop a
cx val = Attr "cx" (toAttrib val)

-- | Specifies the y coordinate of the center of a circle
cy :: forall a. String -> Prop a
cy val = Attr "cy" (toAttrib val)

-- | Defines a path to be drawn
d :: forall a. String -> Prop a
d val = Attr "d" (toAttrib val)

-- | Specifies the fill color of a graphic
fill :: forall a. String -> Prop a
fill val = Attr "fill" (toAttrib val)

-- | Specifies the height of an element
height :: forall a. String -> Prop a
height val = Attr "height" (toAttrib val)

-- | Specifies the URL of the linked resource
href :: forall a. String -> Prop a
href val = Attr "href" (toAttrib val)

-- | Specifies the opacity of an element
opacity :: forall a. String -> Prop a
opacity val = Attr "opacity" (toAttrib val)

-- | Specifies the radius of a circle
r :: forall a. String -> Prop a
r val = Attr "r" (toAttrib val)

-- | Specifies the stroke color of a graphic
stroke :: forall a. String -> Prop a
stroke val = Attr "stroke" (toAttrib val)

-- | Specifies the width of the stroke
strokeWidth :: forall a. String -> Prop a
strokeWidth val = Attr "stroke-width" (toAttrib val)

-- | Specifies a list of transformations
transform :: forall a. String -> Prop a
transform val = Attr "transform" (toAttrib val)

-- | Defines the position and size of the viewport
viewBox :: forall a. String -> Prop a
viewBox val = Attr "viewBox" (toAttrib val)

-- | Specifies the width of an element
width :: forall a. String -> Prop a
width val = Attr "width" (toAttrib val)

-- | Specifies the x coordinate of an element
x :: forall a. String -> Prop a
x val = Attr "x" (toAttrib val)

-- | Specifies the y coordinate of an element
y :: forall a. String -> Prop a
y val = Attr "y" (toAttrib val)

-- | Specifies the position of the element along the z-axis
z :: forall a. String -> Prop a
z val = Attr "z" (toAttrib val)

-- | Specifies one or more classnames for an element
class_ :: forall a. String -> Prop a
class_ val = Attr "class_" (toAttrib val)

-- | Specifies a clipping path
clipPath :: forall a. String -> Prop a
clipPath val = Attr "clip-path" (toAttrib val)

-- | Specifies a unique ID for an element
id :: forall a. String -> Prop a
id val = Attr "id" (toAttrib val)

-- | Specifies a mask for an element
mask :: forall a. String -> Prop a
mask val = Attr "mask" (toAttrib val)

-- | Defines how an element's viewBox will be scaled and positioned
preserveAspectRatio :: forall a. String -> Prop a
preserveAspectRatio val = Attr "preserveAspectRatio" (toAttrib val)

-- | Specifies an inline style for an element
style :: forall a. String -> Prop a
style val = Attr "style" (toAttrib val)

-- | Specifies the horizontal alignment of text
textAnchor :: forall a. String -> Prop a
textAnchor val = Attr "text-anchor" (toAttrib val)

-- | Specifies the decoration added to text
textDecoration :: forall a. String -> Prop a
textDecoration val = Attr "text-decoration" (toAttrib val)

-- | Specifies the target of a hyperlink in a 'view' element
viewTarget :: forall a. String -> Prop a
viewTarget val = Attr "viewTarget" (toAttrib val)

-- | Specifies whether or not an element is visible
visibility :: forall a. String -> Prop a
visibility val = Attr "visibility" (toAttrib val)

