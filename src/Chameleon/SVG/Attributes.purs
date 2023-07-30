module Chameleon.SVG.Attributes where

import Prelude

import Data.String as Str
import Data.Symbol (class IsSymbol, reflectSymbol)
import Data.Variant (Variant)
import Data.Variant as V
import Prim.Row as Row
import Prim.RowList (class RowToList, RowList)
import Prim.RowList as RL
import Chameleon.Class (Prop(..))
import Type.Proxy (Proxy(..))

------------------------------------------------------------------------------- 
--- class IsAttrib
-------------------------------------------------------------------------------

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

------------------------------------------------------------------------------- 
--- class IsAttribVariantRL
-------------------------------------------------------------------------------

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

else instance
  ( IsAttribVariantRL rl r'
  , Row.Cons sym a r' r
  , IsSymbol sym
  , IsAttrib a
  ) =>
  IsAttribVariantRL (RL.Cons sym a rl) r where
  toAttribVariantRL _ =
    toAttribVariantRL (Proxy :: _ rl)
      # V.on prxSym toAttrib
    where
    prxSym = Proxy :: _ sym

------------------------------------------------------------------------------- 
--- Attributes
-------------------------------------------------------------------------------

-- | The 'accent-height' attribute controls the vertical position of an accent glyph on a text glyph (usually a vowel, like 'a', 'e', 'i', 'o', 'u') in a text element.
accentHeight :: forall a. String -> Prop a
accentHeight val = Attr "accent-height" (toAttrib val)

-- | The 'accumulate' attribute controls whether or not the animation will accumulate values over time. If specified, it indicates that the animation will preserve the previous value of the attribute being animated and add the current value to it.
accumulate :: forall a. String -> Prop a
accumulate val = Attr "accumulate" (toAttrib val)

-- | The 'additive' attribute controls whether or not the animation will override or add to the base value of the animated attribute. If specified, it indicates that the animation will add its values to the base value of the attribute being animated. If not specified, the animation will replace the base value of the attribute being animated with its own values.
additive :: forall a. String -> Prop a
additive val = Attr "additive" (toAttrib val)

-- | The 'alignment-baseline' attribute specifies how an element is aligned with respect to its parent baseline.
alignmentBaseline :: forall a. String -> Prop a
alignmentBaseline val = Attr "alignment-baseline" (toAttrib val)

-- | The 'alphabetic' attribute defines the vertical position of the text within the 'line-height' of the text element.
alphabetic :: forall a. String -> Prop a
alphabetic val = Attr "alphabetic" (toAttrib val)

-- | The 'amplitude' attribute specifies the amplitude of the wave function used to distort the filter primitive.
amplitude :: forall a. String -> Prop a
amplitude val = Attr "amplitude" (toAttrib val)

-- | The 'arabic-form' attribute controls the rendering of numbers within an SVG document. It is used to specify whether numbers should be rendered in the standard Arabic (Western) or Hindi (Eastern) numeric format.
arabicForm :: forall a. String -> Prop a
arabicForm val = Attr "arabic-form" (toAttrib val)

-- | The 'ascent' attribute defines the distance from the top of the tallest glyph in the font to the baseline of the text.
ascent :: forall a. String -> Prop a
ascent val = Attr "ascent" (toAttrib val)

-- | The 'attributeName' attribute specifies the name of the attribute being animated.
attributeName :: forall a. String -> Prop a
attributeName val = Attr "attributeName" (toAttrib val)

-- | The 'attributeType' attribute specifies the namespace in which the attribute being animated is defined. It can be either 'CSS' or 'XML'.
attributeType :: forall a. String -> Prop a
attributeType val = Attr "attributeType" (toAttrib val)

-- | The 'azimuth' attribute specifies the direction of the light source in a lighting filter.
azimuth :: forall a. String -> Prop a
azimuth val = Attr "azimuth" (toAttrib val)

-- | The 'baseFrequency' attribute specifies the base frequency parameter for the noise function of the 'feTurbulence' filter primitive.
baseFrequency :: forall a. String -> Prop a
baseFrequency val = Attr "baseFrequency" (toAttrib val)

-- | The 'baseline-shift' attribute specifies how much an element is shifted up or down from its baseline position.
baselineShift :: forall a. String -> Prop a
baselineShift val = Attr "baseline-shift" (toAttrib val)

-- | The 'baseProfile' attribute specifies the version of SVG that the document conforms to.
baseProfile :: forall a. String -> Prop a
baseProfile val = Attr "baseProfile" (toAttrib val)

-- | The 'bbox' attribute indicates the tight bounding box of the current object. It's used for layout.
bbox :: forall a. String -> Prop a
bbox val = Attr "bbox" (toAttrib val)

-- | The 'begin' attribute specifies the begin time for the element, when it becomes active in the animation timeline.
begin :: forall a. String -> Prop a
begin val = Attr "begin" (toAttrib val)

-- | The 'bias' attribute indicates the slope bias for the light filter kernel.
bias :: forall a. String -> Prop a
bias val = Attr "bias" (toAttrib val)

-- | The 'by' attribute specifies the offset from the initial value to the final value of the animation.
by :: forall a. String -> Prop a
by val = Attr "by" (toAttrib val)

-- | The 'calcMode' attribute specifies the calculation mode for the animation function.
calcMode :: forall a. String -> Prop a
calcMode val = Attr "calcMode" (toAttrib val)

-- | The 'cap-height' attribute specifies the height of the capital letters in the font.
capHeight :: forall a. String -> Prop a
capHeight val = Attr "cap-height" (toAttrib val)

-- | The 'class' attribute specifies the class(es) for an element.
class_ :: forall a. String -> Prop a
class_ val = Attr "class" (toAttrib val)

-- | The 'clip' attribute specifies the clipping region for an element.
clip :: forall a. String -> Prop a
clip val = Attr "clip" (toAttrib val)

-- | The 'clip-path' attribute specifies the clipping path for an element.
clipPath :: forall a. String -> Prop a
clipPath val = Attr "clip-path" (toAttrib val)

-- | The 'clip-rule' attribute only applies to graphics elements that are contained within a 'clipPath' element. The 'clip-rule' attribute basically works as the 'fill-rule' attribute, except that it applies to 'clipPath' definitions.
clipRule :: forall a. String -> Prop a
clipRule val = Attr "clip-rule" (toAttrib val)

-- | The 'clipPathUnits' attribute defines the coordinate system for the contents of the 'clipPath' element.
clipPathUnits :: forall a. String -> Prop a
clipPathUnits val = Attr "clipPathUnits" (toAttrib val)

-- | The 'color' attribute specifies the color of the text.
color :: forall a. String -> Prop a
color val = Attr "color" (toAttrib val)

-- | The 'color-interpolation' attribute specifies the color space for gradient interpolations, color animations, and alpha compositing.
colorInterpolation :: forall a. String -> Prop a
colorInterpolation val = Attr "color-interpolation" (toAttrib val)

-- | The 'color-interpolation-filters' attribute specifies the color space for imaging operations performed via filter effects.
colorInterpolationFilters :: forall a. String -> Prop a
colorInterpolationFilters val = Attr "color-interpolation-filters" (toAttrib val)

-- | The 'color-profile' attribute specifies the name of the color profile to use when performing color correction operations within a filter primitive.
colorProfile :: forall a. String -> Prop a
colorProfile val = Attr "color-profile" (toAttrib val)

-- | The 'color-rendering' attribute provides a hint to the SVG user agent about how to optimize its color interpolation and compositing operations.
colorRendering :: forall a. String -> Prop a
colorRendering val = Attr "color-rendering" (toAttrib val)

-- | The 'contentScriptType' attribute specifies the default scripting language for the given document fragment.
contentScriptType :: forall a. String -> Prop a
contentScriptType val = Attr "contentScriptType" (toAttrib val)

-- | The 'contentStyleType' attribute specifies the default style sheet language for the given document fragment.
contentStyleType :: forall a. String -> Prop a
contentStyleType val = Attr "contentStyleType" (toAttrib val)

-- | The 'cursor' attribute specifies the mouse cursor displayed when the mouse pointer is over an element.
cursor :: forall a. String -> Prop a
cursor val = Attr "cursor" (toAttrib val)

-- | The 'cx' attribute defines the x-axis coordinate of the center of the circle.
cx :: forall a. String -> Prop a
cx val = Attr "cx" (toAttrib val)

-- | The 'cy' attribute defines the y-axis coordinate of the center of the circle.
cy :: forall a. String -> Prop a
cy val = Attr "cy" (toAttrib val)

-- | The 'd' attribute defines a path to be drawn.
d :: forall a. String -> Prop a
d val = Attr "d" (toAttrib val)

-- | The 'descent' attribute specifies the suggested distance that the author recommends between the baselines of adjacent rows.
descent :: forall a. String -> Prop a
descent val = Attr "descent" (toAttrib val)

-- | The 'diffuseConstant' attribute specifies the diffuse constant of the light source for the light filter kernel.
diffuseConstant :: forall a. String -> Prop a
diffuseConstant val = Attr "diffuseConstant" (toAttrib val)

-- | The 'direction' attribute specifies the base direction of directionally neutral text and the directionality of tables.
direction :: forall a. String -> Prop a
direction val = Attr "direction" (toAttrib val)

-- | The 'display' attribute specifies whether or not the given element is rendered.
display :: forall a. String -> Prop a
display val = Attr "display" (toAttrib val)

-- | The 'divisor' attribute specifies the divisor for the light filter kernel.
divisor :: forall a. String -> Prop a
divisor val = Attr "divisor" (toAttrib val)

-- | The 'dominant-baseline' attribute specifies a baseline shift that should be applied to the dominant-baseline of all of the glyphs corresponding to a particular graphics element.
dominantBaseline :: forall a. String -> Prop a
dominantBaseline val = Attr "dominant-baseline" (toAttrib val)

-- | The 'dur' attribute specifies the simple duration of the animation.
dur :: forall a. String -> Prop a
dur val = Attr "dur" (toAttrib val)

-- | The 'dx' attribute specifies a shift along the x-axis on the position of an element's text or the position of a 'tspan' element's text.
dx :: forall a. String -> Prop a
dx val = Attr "dx" (toAttrib val)

-- | The 'dy' attribute specifies a shift along the y-axis on the position of an element's text or the position of a 'tspan' element's text.
dy :: forall a. String -> Prop a
dy val = Attr "dy" (toAttrib val)

-- | The 'edgeMode' attribute specifies which edge condition is to be used to determine the values of pixels that lie outside the filter region.
edgeMode :: forall a. String -> Prop a
edgeMode val = Attr "edgeMode" (toAttrib val)

-- | The 'elevation' attribute specifies the light source elevation angle in the light filter kernel.
elevation :: forall a. String -> Prop a
elevation val = Attr "elevation" (toAttrib val)

-- | The 'enable-background' attribute specifies the color space for imaging operations performed via filter effects.
enableBackground :: forall a. String -> Prop a
enableBackground val = Attr "enable-background" (toAttrib val)

-- | The 'end' attribute specifies the end time for the element, when it becomes inactive in the animation timeline.
end :: forall a. String -> Prop a
end val = Attr "end" (toAttrib val)

-- | The 'exponent' attribute specifies the exponent value for the light filter kernel.
exponent :: forall a. String -> Prop a
exponent val = Attr "exponent" (toAttrib val)

-- | The 'externalResourcesRequired' attribute specifies whether or not to force various resource attributes to take into account external resource references.
externalResourcesRequired :: forall a. String -> Prop a
externalResourcesRequired val = Attr "externalResourcesRequired" (toAttrib val)

-- | The 'fill' attribute specifies the color used to paint the element.
fill :: forall a. String -> Prop a
fill val = Attr "fill" (toAttrib val)

-- | The 'fill-opacity' attribute specifies the opacity of the painting operation used to paint the interior the current object.
fillOpacity :: forall a. String -> Prop a
fillOpacity val = Attr "fill-opacity" (toAttrib val)

-- | The 'fill-rule' attribute specifies the algorithm which is to be used to determine what parts of the canvas are included inside the shape.
fillRule :: forall a. String -> Prop a
fillRule val = Attr "fill-rule" (toAttrib val)

-- | The 'filter' attribute specifies the filter effects defined by the 'filter' element.
filter :: forall a. String -> Prop a
filter val = Attr "filter" (toAttrib val)

-- | The 'filterRes' attribute specifies the width and height on the intermediate images in a filter chain.
filterRes :: forall a. String -> Prop a
filterRes val = Attr "filterRes" (toAttrib val)

-- | The 'filterUnits' attribute specifies the coordinate system for attributes 'x', 'y', 'width' and 'height'.
filterUnits :: forall a. String -> Prop a
filterUnits val = Attr "filterUnits" (toAttrib val)

-- | The 'flood-color' attribute specifies the color to use when applying the 'flood' filter primitive.
floodColor :: forall a. String -> Prop a
floodColor val = Attr "flood-color" (toAttrib val)

-- | The 'flood-opacity' attribute specifies the opacity value to use across the current filter primitive subregion.
floodOpacity :: forall a. String -> Prop a
floodOpacity val = Attr "flood-opacity" (toAttrib val)

-- | The 'font-family' attribute specifies a prioritized list of font family names or generic family names.
fontFamily :: forall a. String -> Prop a
fontFamily val = Attr "font-family" (toAttrib val)

-- | The 'font-size' attribute specifies the size of glyphs from the font specified by 'font-family'.
fontSize :: forall a. String -> Prop a
fontSize val = Attr "font-size" (toAttrib val)

-- | The 'font-size-adjust' attribute specifies the aspect value of the glyphs in the font specified via 'font-family' relative to the font size.
fontSizeAdjust :: forall a. String -> Prop a
fontSizeAdjust val = Attr "font-size-adjust" (toAttrib val)

-- | The 'font-stretch' attribute selects a normal, condensed, or expanded face from a font family.
fontStretch :: forall a. String -> Prop a
fontStretch val = Attr "font-stretch" (toAttrib val)

-- | The 'font-style' attribute specifies whether the text is to be rendered using a normal, italic or oblique face.
fontStyle :: forall a. String -> Prop a
fontStyle val = Attr "font-style" (toAttrib val)

-- | The 'font-variant' attribute selects a normal or small-caps face from a font family.
fontVariant :: forall a. String -> Prop a
fontVariant val = Attr "font-variant" (toAttrib val)

-- | The 'font-weight' attribute specifies the boldness or lightness of the glyphs in the font.
fontWeight :: forall a. String -> Prop a
fontWeight val = Attr "font-weight" (toAttrib val)

-- | The 'format' attribute indicates the image format of the referenced resource.
format :: forall a. String -> Prop a
format val = Attr "format" (toAttrib val)

-- | The 'from' attribute specifies the initial value of the animation.
from :: forall a. String -> Prop a
from val = Attr "from" (toAttrib val)

-- | The 'fx' attribute specifies the x-coordinate on the starting bounding box of the filter primitive subregion.
fx :: forall a. String -> Prop a
fx val = Attr "fx" (toAttrib val)

-- | The 'fy' attribute specifies the y-coordinate on the starting bounding box of the filter primitive subregion.
fy :: forall a. String -> Prop a
fy val = Attr "fy" (toAttrib val)

-- | The 'g1' attribute specifies the first gradient transform which is applied to the gradient coordinate system.
g1 :: forall a. String -> Prop a
g1 val = Attr "g1" (toAttrib val)

-- | The 'g2' attribute specifies the second gradient transform which is applied to the gradient coordinate system.
g2 :: forall a. String -> Prop a
g2 val = Attr "g2" (toAttrib val)

-- | The 'glyph-name' attribute specifies the name of the glyph within the font.
glyphName :: forall a. String -> Prop a
glyphName val = Attr "glyph-name" (toAttrib val)

-- | The 'glyph-orientation-horizontal' attribute specifies the orientation of the dominant baseline of the glyph.
glyphOrientationHorizontal :: forall a. String -> Prop a
glyphOrientationHorizontal val = Attr "glyph-orientation-horizontal" (toAttrib val)

-- | The 'glyph-orientation-vertical' attribute specifies the orientation of the dominant baseline of the glyph.
glyphOrientationVertical :: forall a. String -> Prop a
glyphOrientationVertical val = Attr "glyph-orientation-vertical" (toAttrib val)

-- | The 'glyphRef' attribute references a 'glyph' element by name.
glyphRef :: forall a. String -> Prop a
glyphRef val = Attr "glyphRef" (toAttrib val)

-- | The 'gradientTransform' attribute specifies an additional transformation from the gradient coordinate system onto the target coordinate system.
gradientTransform :: forall a. String -> Prop a
gradientTransform val = Attr "gradientTransform" (toAttrib val)

-- | The 'gradientUnits' attribute specifies the coordinate system for attributes 'x1', 'y1', 'x2', 'y2'.
gradientUnits :: forall a. String -> Prop a
gradientUnits val = Attr "gradientUnits" (toAttrib val)

-- | The 'hanging' attribute specifies the amount of the overhang required for glyph shaping for this font.
hanging :: forall a. String -> Prop a
hanging val = Attr "hanging" (toAttrib val)

-- | The 'height' attribute specifies the height of the rectangle.
height :: forall a. String -> Prop a
height val = Attr "height" (toAttrib val)

-- | The 'horiz-adv-x' attribute specifies the horizontal advance after rendering the glyph.
horizAdvX :: forall a. String -> Prop a
horizAdvX val = Attr "horiz-adv-x" (toAttrib val)

-- | The 'horiz-origin-x' attribute specifies the X coordinate in the font coordinate system of the horizontal origin of the glyph.
horizOriginX :: forall a. String -> Prop a
horizOriginX val = Attr "horiz-origin-x" (toAttrib val)

-- | The 'horiz-origin-y' attribute specifies the Y coordinate in the font coordinate system of the horizontal origin of the glyph.
horizOriginY :: forall a. String -> Prop a
horizOriginY val = Attr "horiz-origin-y" (toAttrib val)

-- | The 'id' attribute specifies a unique id for an element.
id :: forall a. String -> Prop a
id val = Attr "id" (toAttrib val)

-- | The 'ideographic' attribute specifies the amount of the overhang required for glyph shaping for this font.
ideographic :: forall a. String -> Prop a
ideographic val = Attr "ideographic" (toAttrib val)

-- | The 'image-rendering' attribute provides a hint to the browser about how to make speed vs. quality tradeoffs as it performs image processing.
imageRendering :: forall a. String -> Prop a
imageRendering val = Attr "image-rendering" (toAttrib val)

-- | The 'in' attribute identifies input for the given filter primitive.
in_ :: forall a. String -> Prop a
in_ val = Attr "in" (toAttrib val)

-- | The 'in2' attribute identifies input for the given filter primitive.
in2 :: forall a. String -> Prop a
in2 val = Attr "in2" (toAttrib val)

-- | The 'intercept' attribute specifies the intercept of the linear function.
intercept :: forall a. String -> Prop a
intercept val = Attr "intercept" (toAttrib val)

-- | The 'k' attribute specifies the slope of the linear function.
k :: forall a. String -> Prop a
k val = Attr "k" (toAttrib val)

-- | The 'k1' attribute specifies the slope of the linear function.
k1 :: forall a. String -> Prop a
k1 val = Attr "k1" (toAttrib val)

-- | The 'k2' attribute specifies the slope of the linear function.
k2 :: forall a. String -> Prop a
k2 val = Attr "k2" (toAttrib val)

-- | The 'k3' attribute specifies the slope of the linear function.
k3 :: forall a. String -> Prop a
k3 val = Attr "k3" (toAttrib val)

-- | The 'k4' attribute specifies the slope of the linear function.
k4 :: forall a. String -> Prop a
k4 val = Attr "k4" (toAttrib val)

-- | The 'kernelMatrix' attribute contains the list of numbers that make up the kernel matrix for the convolution.
kernelMatrix :: forall a. String -> Prop a
kernelMatrix val = Attr "kernelMatrix" (toAttrib val)

-- | The 'kernelUnitLength' attribute specifies the intended distance in current filter units (i.e., units as determined by the value of attribute 'primitiveUnits') between successive columns and rows, respectively, in the 'kernelMatrix'.
kernelUnitLength :: forall a. String -> Prop a
kernelUnitLength val = Attr "kernelUnitLength" (toAttrib val)

-- | The 'kerning' attribute specifies whether the browser should adjust inter-glyph spacing based on kerning tables that are included in the relevant font.
kerning :: forall a. String -> Prop a
kerning val = Attr "kerning" (toAttrib val)

-- | The 'keyPoints' attribute specifies a list of points at which keyTimes for the animation element occur.
keyPoints :: forall a. String -> Prop a
keyPoints val = Attr "keyPoints" (toAttrib val)

-- | The 'keySplines' attribute specifies a set of Bézier control points associated with the keyTimes list, defining a cubic Bézier function that controls interval pacing.
keySplines :: forall a. String -> Prop a
keySplines val = Attr "keySplines" (toAttrib val)

-- | The 'keyTimes' attribute specifies a list of time values used to control the pacing of the animation.
keyTimes :: forall a. String -> Prop a
keyTimes val = Attr "keyTimes" (toAttrib val)

-- | The 'lang' attribute specifies the primary language(s) for the element's contents and for any of the element's attributes that contain text.
lang :: forall a. String -> Prop a
lang val = Attr "lang" (toAttrib val)

-- | The 'lengthAdjust' attribute specifies a hint for vertical font size scaling.
lengthAdjust :: forall a. String -> Prop a
lengthAdjust val = Attr "lengthAdjust" (toAttrib val)

-- | The 'letter-spacing' attribute specifies spacing behavior between text characters.
letterSpacing :: forall a. String -> Prop a
letterSpacing val = Attr "letter-spacing" (toAttrib val)

-- | The 'lighting-color' attribute defines the color of the light source for filter primitives 'feDiffuseLighting' and 'feSpecularLighting'.
lightingColor :: forall a. String -> Prop a
lightingColor val = Attr "lighting-color" (toAttrib val)

-- | The 'limitingConeAngle' attribute specifies the angle in degrees between the spot light axis and the spot light cone.
limitingConeAngle :: forall a. String -> Prop a
limitingConeAngle val = Attr "limitingConeAngle" (toAttrib val)

-- | The 'local' attribute specifies the transformation applied to the geometry within the 'feDisplacementMap' element.
local :: forall a. String -> Prop a
local val = Attr "local" (toAttrib val)

-- | The 'marker-end' attribute defines the arrowhead or polymarker that will be drawn at the final vertex of the given shape.
markerEnd :: forall a. String -> Prop a
markerEnd val = Attr "marker-end" (toAttrib val)

-- | The 'marker-mid' attribute defines the arrowhead or polymarker that shall be drawn at every vertex other than the first and last vertex of the given shape.
markerMid :: forall a. String -> Prop a
markerMid val = Attr "marker-mid" (toAttrib val)

-- | The 'marker-start' attribute defines the arrowhead or polymarker that will be drawn at the first vertex of the given shape.
markerStart :: forall a. String -> Prop a
markerStart val = Attr "marker-start" (toAttrib val)

-- | The 'markerHeight' attribute defines the height of the viewport into which the marker is to be fitted when it is rendered.
markerHeight :: forall a. String -> Prop a
markerHeight val = Attr "markerHeight" (toAttrib val)

-- | The 'markerUnits' attribute specifies the coordinate system for the various length values within the marker.
markerUnits :: forall a. String -> Prop a
markerUnits val = Attr "markerUnits" (toAttrib val)

-- | The 'markerWidth' attribute defines the width of the viewport into which the marker is to be fitted when it is rendered.
markerWidth :: forall a. String -> Prop a
markerWidth val = Attr "markerWidth" (toAttrib val)

-- | The 'mask' attribute specifies an IRI reference to a mask element that defines the mask image.
mask :: forall a. String -> Prop a
mask val = Attr "mask" (toAttrib val)

-- | The 'maskContentUnits' attribute defines the coordinate system for the contents of the mask.
maskContentUnits :: forall a. String -> Prop a
maskContentUnits val = Attr "maskContentUnits" (toAttrib val)

-- | The 'maskUnits' attribute defines the coordinate system for attributes 'x', 'y', 'width' and 'height' on the mask element.
maskUnits :: forall a. String -> Prop a
maskUnits val = Attr "maskUnits" (toAttrib val)

-- | The 'mathematical' attribute specifies whether the font is to be treated as a mathematical font.
mathematical :: forall a. String -> Prop a
mathematical val = Attr "mathematical" (toAttrib val)

-- | The 'max' attribute specifies the maximum value allowed.
max :: forall a. String -> Prop a
max val = Attr "max" (toAttrib val)

-- | The 'media' attribute specifies the intended medium of the style information.
media :: forall a. String -> Prop a
media val = Attr "media" (toAttrib val)

-- | The 'method' attribute defines what color interpolation method to use when the gradient stops are not evenly spaced.
method :: forall a. String -> Prop a
method val = Attr "method" (toAttrib val)

-- | The 'min' attribute specifies the minimum value allowed.
min :: forall a. String -> Prop a
min val = Attr "min" (toAttrib val)

-- | The 'mode' attribute specifies the blending mode used to compose the source graphic and destination images.
mode :: forall a. String -> Prop a
mode val = Attr "mode" (toAttrib val)

-- | The 'name' attribute specifies the name of the given element.
name :: forall a. String -> Prop a
name val = Attr "name" (toAttrib val)

-- | The 'numOctaves' attribute specifies the number of octaves for the noise function of the 'feTurbulence' element.
numOctaves :: forall a. String -> Prop a
numOctaves val = Attr "numOctaves" (toAttrib val)

-- | The 'offset' attribute specifies the offset distance of the end of the filter primitive from its nominal position along the x-axis.
offset :: forall a. String -> Prop a
offset val = Attr "offset" (toAttrib val)

-- | The 'opacity' attribute specifies the transparency of an object or of a group of objects, that is, the degree to which the background behind the element is overlaid.
opacity :: forall a. String -> Prop a
opacity val = Attr "opacity" (toAttrib val)

-- | The 'operator' attribute defines the compositing operator that is applied when processing the given filter primitive.
operator :: forall a. String -> Prop a
operator val = Attr "operator" (toAttrib val)

-- | The 'order' attribute specifies the number of times to iterate the 'feConvolveMatrix' operation.
order :: forall a. String -> Prop a
order val = Attr "order" (toAttrib val)

-- | The 'orient' attribute specifies how the marker is rotated when it is placed at its position on the shape.
orient :: forall a. String -> Prop a
orient val = Attr "orient" (toAttrib val)

-- | The 'orientation' attribute specifies the orientation of the gradient vector for the x-axis direction.
orientation :: forall a. String -> Prop a
orientation val = Attr "orientation" (toAttrib val)

-- | The 'origin' attribute specifies the location of the SVG viewport for the referenced content.
origin :: forall a. String -> Prop a
origin val = Attr "origin" (toAttrib val)

-- | The 'overflow' attribute specifies what to do with elements that render outside the viewport area.
overflow :: forall a. String -> Prop a
overflow val = Attr "overflow" (toAttrib val)

-- | The 'overline-position' attribute specifies the position of the overline in the font.
overlinePosition :: forall a. String -> Prop a
overlinePosition val = Attr "overline-position" (toAttrib val)

-- | The 'overline-thickness' attribute specifies the thickness of the overline in the font.
overlineThickness :: forall a. String -> Prop a
overlineThickness val = Attr "overline-thickness" (toAttrib val)

-- | The 'paint-order' attribute specifies the order that the fill, stroke and markers of a given shape or text element are painted.
paintOrder :: forall a. String -> Prop a
paintOrder val = Attr "paint-order" (toAttrib val)

-- | The 'panose-1' attribute specifies the PANOSE-1 classification number for the font.
panose_1 :: forall a. String -> Prop a
panose_1 val = Attr "panose-1" (toAttrib val)

-- | The 'path' attribute defines the outline of the glyph.
path :: forall a. String -> Prop a
path val = Attr "path" (toAttrib val)

-- | The 'pathLength' attribute lets authors specify the total length for the path, in user units.
pathLength :: forall a. String -> Prop a
pathLength val = Attr "pathLength" (toAttrib val)

-- | The 'patternContentUnits' attribute defines the coordinate system for the contents of the 'pattern' element.
patternContentUnits :: forall a. String -> Prop a
patternContentUnits val = Attr "patternContentUnits" (toAttrib val)

-- | The 'patternTransform' attribute contains the definition of an optional additional transformation from the pattern coordinate system onto the target coordinate system.
patternTransform :: forall a. String -> Prop a
patternTransform val = Attr "patternTransform" (toAttrib val)

-- | The 'patternUnits' attribute defines the coordinate system for attributes 'x', 'y', 'width' and 'height' on the 'pattern' element.
patternUnits :: forall a. String -> Prop a
patternUnits val = Attr "patternUnits" (toAttrib val)

-- | The 'pointer-events' attribute determines whether or not the given element reacts to pointer events.
pointerEvents :: forall a. String -> Prop a
pointerEvents val = Attr "pointer-events" (toAttrib val)

-- | The 'points' attribute defines the list of points defining the polyline.
points :: forall a. String -> Prop a
points val = Attr "points" (toAttrib val)

-- | The 'pointsAtX' attribute specifies the x location in the coordinate system established by attribute 'primitiveUnits' on the 'filter' element of the point at which the light source is pointing.
pointsAtX :: forall a. String -> Prop a
pointsAtX val = Attr "pointsAtX" (toAttrib val)

-- | The 'pointsAtY' attribute specifies the y location in the coordinate system established by attribute 'primitiveUnits' on the 'filter' element of the point at which the light source is pointing.
pointsAtY :: forall a. String -> Prop a
pointsAtY val = Attr "pointsAtY" (toAttrib val)

-- | The 'pointsAtZ' attribute specifies the z location in the coordinate system established by attribute 'primitiveUnits' on the 'filter' element of the point at which the light source is pointing.
pointsAtZ :: forall a. String -> Prop a
pointsAtZ val = Attr "pointsAtZ" (toAttrib val)

-- | The 'preserveAlpha' attribute specifies whether or not to allow the alpha channel of the input image to be used for compositing.
preserveAlpha :: forall a. String -> Prop a
preserveAlpha val = Attr "preserveAlpha" (toAttrib val)

-- | The 'preserveAspectRatio' attribute indicates whether or not to force uniform scaling.
preserveAspectRatio :: forall a. String -> Prop a
preserveAspectRatio val = Attr "preserveAspectRatio" (toAttrib val)

-- | The 'primitiveUnits' attribute defines the coordinate system for the various length values within the filter primitives and for the attributes that define the filter primitive subregion.
primitiveUnits :: forall a. String -> Prop a
primitiveUnits val = Attr "primitiveUnits" (toAttrib val)

-- | The 'r' attribute defines a radius on an elliptical arc.
r :: forall a. String -> Prop a
r val = Attr "r" (toAttrib val)

-- | The 'radius' attribute defines the radius of the circle.
radius :: forall a. String -> Prop a
radius val = Attr "radius" (toAttrib val)

-- | The 'refX' attribute specifies the x-coordinate of an additional point on the marker which is used to align the marker with its reference point.
refX :: forall a. String -> Prop a
refX val = Attr "refX" (toAttrib val)

-- | The 'refY' attribute specifies the y-coordinate of an additional point on the marker which is used to align the marker with its reference point.
refY :: forall a. String -> Prop a
refY val = Attr "refY" (toAttrib val)

-- | The 'rendering-intent' attribute specifies the color rendering intent.
renderingIntent :: forall a. String -> Prop a
renderingIntent val = Attr "rendering-intent" (toAttrib val)

-- | The 'repeatCount' attribute specifies the number of times an animation will take place.
repeatCount :: forall a. String -> Prop a
repeatCount val = Attr "repeatCount" (toAttrib val)

-- | The 'repeatDur' attribute specifies the total duration for repeating an animation.
repeatDur :: forall a. String -> Prop a
repeatDur val = Attr "repeatDur" (toAttrib val)

-- | The 'requiredExtensions' attribute indicates that the given element requires a set of features to be present in the implementation.
requiredExtensions :: forall a. String -> Prop a
requiredExtensions val = Attr "requiredExtensions" (toAttrib val)

-- | The 'requiredFeatures' attribute indicates that the given element requires a set of features to be present in the implementation.
requiredFeatures :: forall a. String -> Prop a
requiredFeatures val = Attr "requiredFeatures" (toAttrib val)

-- | The 'restart' attribute specifies the conditions under which an animation element is restarted.
restart :: forall a. String -> Prop a
restart val = Attr "restart" (toAttrib val)

-- | The 'result' attribute specifies the name of the result of processing the 'feImage' filter primitive.
result :: forall a. String -> Prop a
result val = Attr "result" (toAttrib val)

-- | The 'rotate' attribute indicates the rotation angle about the origin of the current user coordinate system to be applied to the element.
rotate :: forall a. String -> Prop a
rotate val = Attr "rotate" (toAttrib val)

-- | The 'rx' attribute defines a radius on the x-axis of an ellipse.
rx :: forall a. String -> Prop a
rx val = Attr "rx" (toAttrib val)

-- | The 'ry' attribute defines a radius on the y-axis of an ellipse.
ry :: forall a. String -> Prop a
ry val = Attr "ry" (toAttrib val)

-- | The 'scale' attribute specifies a scale factor by which the current user coordinate system is scaled relative to the initial user coordinate system.
scale :: forall a. String -> Prop a
scale val = Attr "scale" (toAttrib val)

-- | The 'seed' attribute specifies the seed for the pseudo random number generator of the 'feTurbulence' filter primitive.
seed :: forall a. String -> Prop a
seed val = Attr "seed" (toAttrib val)

-- | The 'shape-rendering' attribute provides hints to the renderer about what tradeoffs to make as it renders vector graphics elements such as paths and basic shapes such as circles and rectangles.
shapeRendering :: forall a. String -> Prop a
shapeRendering val = Attr "shape-rendering" (toAttrib val)

-- | The 'slope' attribute indicates the slope of the linear function used to remap pixel values.
slope :: forall a. String -> Prop a
slope val = Attr "slope" (toAttrib val)

-- | The 'spacing' attribute specifies the spacing behavior between text characters.
spacing :: forall a. String -> Prop a
spacing val = Attr "spacing" (toAttrib val)

-- | The 'specularConstant' attribute indicates the ks value in the Phong lighting model.
specularConstant :: forall a. String -> Prop a
specularConstant val = Attr "specularConstant" (toAttrib val)

-- | The 'specularExponent' attribute indicates the specular exponent in the Phong lighting model.
specularExponent :: forall a. String -> Prop a
specularExponent val = Attr "specularExponent" (toAttrib val)

-- | The 'spreadMethod' attribute specifies the type of spread method which shall be used to define how the color from the gradient vector spreads outside the gradient bounds.
spreadMethod :: forall a. String -> Prop a
spreadMethod val = Attr "spreadMethod" (toAttrib val)

-- | The 'startOffset' attribute specifies an offset from the start of the path for the initial current text position along the path.
startOffset :: forall a. String -> Prop a
startOffset val = Attr "startOffset" (toAttrib val)

-- | The 'stdDeviation' attribute specifies the standard deviation for the blur operation.
stdDeviation :: forall a. String -> Prop a
stdDeviation val = Attr "stdDeviation" (toAttrib val)

-- | The 'stemh' attribute specifies the dominant height of the font.
stemh :: forall a. String -> Prop a
stemh val = Attr "stemh" (toAttrib val)

-- | The 'stemv' attribute specifies the dominant vertical stem width of the font.
stemv :: forall a. String -> Prop a
stemv val = Attr "stemv" (toAttrib val)

-- | The 'stitchTiles' attribute specifies whether to force edge pixels to be repeated.
stitchTiles :: forall a. String -> Prop a
stitchTiles val = Attr "stitchTiles" (toAttrib val)

-- | The 'stop-color' attribute indicates what color to use at that gradient stop.
stopColor :: forall a. String -> Prop a
stopColor val = Attr "stop-color" (toAttrib val)

-- | The 'stop-opacity' attribute indicates the opacity of a given gradient stop.
stopOpacity :: forall a. String -> Prop a
stopOpacity val = Attr "stop-opacity" (toAttrib val)

-- | The 'strikethrough-position' attribute specifies the position of the strikethrough stroke relative to the dominant baseline.
strikethroughPosition :: forall a. String -> Prop a
strikethroughPosition val = Attr "strikethrough-position" (toAttrib val)

-- | The 'strikethrough-thickness' attribute specifies the thickness of the strikethrough stroke relative to the thickness of the text.
strikethroughThickness :: forall a. String -> Prop a
strikethroughThickness val = Attr "strikethrough-thickness" (toAttrib val)

-- | The 'string' attribute specifies the string to be rendered.
string :: forall a. String -> Prop a
string val = Attr "string" (toAttrib val)

-- | The 'stroke' attribute specifies paint to be applied to the outline of the shape.
stroke :: forall a. String -> Prop a
stroke val = Attr "stroke" (toAttrib val)

-- | The 'stroke-dasharray' attribute controls the pattern of dashes and gaps used to stroke paths.
strokeDasharray :: forall a. String -> Prop a
strokeDasharray val = Attr "stroke-dasharray" (toAttrib val)

-- | The 'stroke-dashoffset' attribute specifies the distance into the dash pattern to start the dash.
strokeDashoffset :: forall a. String -> Prop a
strokeDashoffset val = Attr "stroke-dashoffset" (toAttrib val)

-- | The 'stroke-linecap' attribute specifies the shape to be used at the end of open subpaths when they are stroked.
strokeLinecap :: forall a. String -> Prop a
strokeLinecap val = Attr "stroke-linecap" (toAttrib val)

-- | The 'stroke-linejoin' attribute specifies the shape to be used at the corners of paths or basic shapes when they are stroked.
strokeLinejoin :: forall a. String -> Prop a
strokeLinejoin val = Attr "stroke-linejoin" (toAttrib val)

-- | The 'stroke-miterlimit' attribute specifies the limit on the ratio of the miter length to the 'stroke-width'.
strokeMiterlimit :: forall a. String -> Prop a
strokeMiterlimit val = Attr "stroke-miterlimit" (toAttrib val)

-- | The 'stroke-opacity' attribute specifies the opacity of the painting operation used to stroke the current object.
strokeOpacity :: forall a. String -> Prop a
strokeOpacity val = Attr "stroke-opacity" (toAttrib val)

-- | The 'stroke-width' attribute specifies the width of the stroke on the current object.
strokeWidth :: forall a. String -> Prop a
strokeWidth val = Attr "stroke-width" (toAttrib val)

-- | The 'surfaceScale' attribute specifies a scale factor that determines the size of the light's rendering surface relative to the filter primitive's bounding box.
surfaceScale :: forall a. String -> Prop a
surfaceScale val = Attr "surfaceScale" (toAttrib val)

-- | The 'systemLanguage' attribute specifies a comma-separated list of language codes that represent the user's preferred languages.
systemLanguage :: forall a. String -> Prop a
systemLanguage val = Attr "systemLanguage" (toAttrib val)

-- | The 'tableValues' attribute specifies the lookup table values.
tableValues :: forall a. String -> Prop a
tableValues val = Attr "tableValues" (toAttrib val)

-- | The 'target' attribute specifies the target element on which the animation is applied.
target :: forall a. String -> Prop a
target val = Attr "target" (toAttrib val)

-- | The 'targetX' attribute specifies the x-axis component of the target vector.
targetX :: forall a. String -> Prop a
targetX val = Attr "targetX" (toAttrib val)

-- | The 'targetY' attribute specifies the y-axis component of the target vector.
targetY :: forall a. String -> Prop a
targetY val = Attr "targetY" (toAttrib val)

-- | The 'text-anchor' attribute specifies the alignment of the text relative to the current text position.
textAnchor :: forall a. String -> Prop a
textAnchor val = Attr "text-anchor" (toAttrib val)

-- | The 'text-decoration' attribute specifies decorations that are added to the text of an element.
textDecoration :: forall a. String -> Prop a
textDecoration val = Attr "text-decoration" (toAttrib val)

-- | The 'text-rendering' attribute provides a hint to the SVG user agent about how to optimize its rendering for speed and legibility.
textRendering :: forall a. String -> Prop a
textRendering val = Attr "text-rendering" (toAttrib val)

-- | The 'textLength' attribute specifies the desired width of the entire text span.
textLength :: forall a. String -> Prop a
textLength val = Attr "textLength" (toAttrib val)

-- | The 'title' attribute specifies advisory information about the element.
title :: forall a. String -> Prop a
title val = Attr "title" (toAttrib val)

-- | The 'to' attribute specifies the ending value of the animation.
to :: forall a. String -> Prop a
to val = Attr "to" (toAttrib val)

-- | The 'transform' attribute specifies a list of transformations that are applied to an element and the types of coordinate systems.
transform :: forall a. String -> Prop a
transform val = Attr "transform" (toAttrib val)

-- | The 'type' attribute specifies the type of filter primitive.
type_ :: forall a. String -> Prop a
type_ val = Attr "type" (toAttrib val)

-- | The 'u1' attribute specifies the x-axis coordinate of the first control point.
u1 :: forall a. String -> Prop a
u1 val = Attr "u1" (toAttrib val)

-- | The 'u2' attribute specifies the x-axis coordinate of the second control point.
u2 :: forall a. String -> Prop a
u2 val = Attr "u2" (toAttrib val)

-- | The 'underline-position' attribute specifies the position of the underline decoration on text.
underlinePosition :: forall a. String -> Prop a
underlinePosition val = Attr "underline-position" (toAttrib val)

-- | The 'underline-thickness' attribute specifies the thickness of the underline decoration on text.
underlineThickness :: forall a. String -> Prop a
underlineThickness val = Attr "underline-thickness" (toAttrib val)

-- | The 'unicode' attribute specifies the Unicode value of the text to be rendered.
unicode :: forall a. String -> Prop a
unicode val = Attr "unicode" (toAttrib val)

-- | The 'unicode-bidi' attribute specifies the level of embedding with respect to the bidirectional algorithm.
unicodeBidi :: forall a. String -> Prop a
unicodeBidi val = Attr "unicode-bidi" (toAttrib val)

-- | The 'unicode-range' attribute specifies the range of Unicode code points that are supported by the font-face.
unicodeRange :: forall a. String -> Prop a
unicodeRange val = Attr "unicode-range" (toAttrib val)

-- | The 'units-per-em' attribute specifies the number of coordinate units on the x-axis and the y-axis that correspond to the height of the em square.
unitsPerEm :: forall a. String -> Prop a
unitsPerEm val = Attr "units-per-em" (toAttrib val)

-- | The 'v-alphabetic' attribute specifies the vertical position of the 'alphabetic' baseline of the glyph.
vAlphabetic :: forall a. String -> Prop a
vAlphabetic val = Attr "v-alphabetic" (toAttrib val)

-- | The 'v-hanging' attribute specifies the vertical position of the 'hanging' baseline of the glyph.
vHanging :: forall a. String -> Prop a
vHanging val = Attr "v-hanging" (toAttrib val)

-- | The 'v-ideographic' attribute specifies the vertical position of the 'ideographic' baseline of the glyph.
vIdeographic :: forall a. String -> Prop a
vIdeographic val = Attr "v-ideographic" (toAttrib val)

-- | The 'v-mathematical' attribute specifies the vertical position of the 'mathematical' baseline of the glyph.
vMathematical :: forall a. String -> Prop a
vMathematical val = Attr "v-mathematical" (toAttrib val)

-- | The 'values' attribute specifies the set of values to interpolate between.
values :: forall a. String -> Prop a
values val = Attr "values" (toAttrib val)

-- | The 'version' attribute specifies the version number of the SVG specification that the document fragment conforms to.
version :: forall a. String -> Prop a
version val = Attr "version" (toAttrib val)

-- | The 'vert-adv-y' attribute specifies the vertical distance from the origin of a glyph in a horizontal font to the advance point of the next glyph.
vertAdvY :: forall a. String -> Prop a
vertAdvY val = Attr "vert-adv-y" (toAttrib val)

-- | The 'vert-origin-x' attribute specifies the x-coordinate in the font coordinate system of the origin of a glyph.
vertOriginX :: forall a. String -> Prop a
vertOriginX val = Attr "vert-origin-x" (toAttrib val)

-- | The 'vert-origin-y' attribute specifies the y-coordinate in the font coordinate system of the origin of a glyph.
vertOriginY :: forall a. String -> Prop a
vertOriginY val = Attr "vert-origin-y" (toAttrib val)

-- | The 'viewBox' attribute specifies the position and size, in user space, of an SVG viewport.
viewBox :: forall a. String -> Prop a
viewBox val = Attr "viewBox" (toAttrib val)

-- | The 'viewTarget' attribute specifies the name of a view that should be used when processing the element.
viewTarget :: forall a. String -> Prop a
viewTarget val = Attr "viewTarget" (toAttrib val)

-- | The 'visibility' attribute specifies whether the given graphics element is visible.
visibility :: forall a. String -> Prop a
visibility val = Attr "visibility" (toAttrib val)

-- | The 'width' attribute specifies the width of the element.
width :: forall a. String -> Prop a
width val = Attr "width" (toAttrib val)

-- | The 'widths' attribute specifies the widths of the glyphs in the font.
widths :: forall a. String -> Prop a
widths val = Attr "widths" (toAttrib val)

-- | The 'word-spacing' attribute specifies the spacing behavior between words.
wordSpacing :: forall a. String -> Prop a
wordSpacing val = Attr "word-spacing" (toAttrib val)

-- | The 'writing-mode' attribute specifies whether the initial inline-progression-direction for a text element is horizontal or vertical.
writingMode :: forall a. String -> Prop a
writingMode val = Attr "writing-mode" (toAttrib val)

-- | The 'x' attribute specifies the x-axis coordinate of the top-left corner of the element.
x :: forall a. String -> Prop a
x val = Attr "x" (toAttrib val)

-- | The 'x-height' attribute specifies the height of lowercase letters in the font.
xHeight :: forall a. String -> Prop a
xHeight val = Attr "x-height" (toAttrib val)

-- | The 'x1' attribute specifies the x-axis coordinate of the first control point.
x1 :: forall a. String -> Prop a
x1 val = Attr "x1" (toAttrib val)

-- | The 'x2' attribute specifies the x-axis coordinate of the second control point.
x2 :: forall a. String -> Prop a
x2 val = Attr "x2" (toAttrib val)

-- | The 'xChannelSelector' attribute specifies which color channel (R, G, or B) that the 'x' attribute will affect.
xChannelSelector :: forall a. String -> Prop a
xChannelSelector val = Attr "xChannelSelector" (toAttrib val)

-- | The 'xlink:actuate' attribute specifies the timing of the element's activation.
xlink_actuate :: forall a. String -> Prop a
xlink_actuate val = Attr "xlink:actuate" (toAttrib val)

-- | The 'xlink:arcrole' attribute defines the meaning of the link based on the application context.
xlink_arcrole :: forall a. String -> Prop a
xlink_arcrole val = Attr "xlink:arcrole" (toAttrib val)

-- | The 'xlink:href' attribute defines a link to a resource as a reference IRI.
xlink_href :: forall a. String -> Prop a
xlink_href val = Attr "xlink:href" (toAttrib val)

-- | The 'xlink:role' attribute defines the meaning of the link based on the application context.
xlink_role :: forall a. String -> Prop a
xlink_role val = Attr "xlink:role" (toAttrib val)

-- | The 'xlink:show' attribute specifies whether or not to show the referenced resource in a new view.
xlink_show :: forall a. String -> Prop a
xlink_show val = Attr "xlink:show" (toAttrib val)

-- | The 'xlink:title' attribute provides a title for the resource described by the link.
xlink_title :: forall a. String -> Prop a
xlink_title val = Attr "xlink:title" (toAttrib val)

-- | The 'xlink:type' attribute defines the type of the link based on the application context.
xlink_type :: forall a. String -> Prop a
xlink_type val = Attr "xlink:type" (toAttrib val)

-- | The 'xml:base' attribute specifies the base URI for resolving any relative URI's within the scope of the element on which it appears.
xml_base :: forall a. String -> Prop a
xml_base val = Attr "xml:base" (toAttrib val)

-- | The 'xml:lang' attribute specifies the natural or formal language in which the document is written.
xml_lang :: forall a. String -> Prop a
xml_lang val = Attr "xml:lang" (toAttrib val)

-- | The 'xml:space' attribute specifies whether whitespace is preserved.
xml_space :: forall a. String -> Prop a
xml_space val = Attr "xml:space" (toAttrib val)

-- | The 'y' attribute specifies the y-axis coordinate of the top-left corner of the element.
y :: forall a. String -> Prop a
y val = Attr "y" (toAttrib val)

-- | The 'y1' attribute specifies the y-axis coordinate of the first control point.
y1 :: forall a. String -> Prop a
y1 val = Attr "y1" (toAttrib val)

-- | The 'y2' attribute specifies the y-axis coordinate of the second control point.
y2 :: forall a. String -> Prop a
y2 val = Attr "y2" (toAttrib val)

-- | The 'yChannelSelector' attribute specifies which color channel (R, G, or B) that the 'y' attribute will affect.
yChannelSelector :: forall a. String -> Prop a
yChannelSelector val = Attr "yChannelSelector" (toAttrib val)

-- | The 'z' attribute specifies the z-axis coordinate of the top-left corner of the element.
z :: forall a. String -> Prop a
z val = Attr "z" (toAttrib val)

-- | The 'zoomAndPan' attribute specifies whether magnification is allowed for the current SVG document fragment.
zoomAndPan :: forall a. String -> Prop a
zoomAndPan val = Attr "zoomAndPan" (toAttrib val)

------------------------------------------------------------------------------- 
--- Variant Constructors
-------------------------------------------------------------------------------

