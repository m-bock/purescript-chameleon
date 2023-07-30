module Chameleon.SVG.KeyedElements where

import Data.Tuple.Nested (type (/\))
import Chameleon.Class (class Html, Key, ElemName(..), Prop, elemKeyed)

-- | Creates a hyperlink element
a :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
a props children = elemKeyed (ElemName "a") props children

-- | Creates a hyperlink element [No Attributes]
a_ :: forall html a. Html html => Array (Key /\ html a) -> html a
a_ children = elemKeyed (ElemName "a") [] children

-- | Defines an alternative representation of a glyph in a font
altGlyph :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
altGlyph props children = elemKeyed (ElemName "altGlyph") props children

-- | Defines an alternative representation of a glyph in a font [No Attributes]
altGlyph_ :: forall html a. Html html => Array (Key /\ html a) -> html a
altGlyph_ children = elemKeyed (ElemName "altGlyph") [] children

-- | Defines a set of glyph substitutions for an altGlyph element
altGlyphDef :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
altGlyphDef props children = elemKeyed (ElemName "altGlyphDef") props children

-- | Defines a set of glyph substitutions for an altGlyph element [No Attributes]
altGlyphDef_ :: forall html a. Html html => Array (Key /\ html a) -> html a
altGlyphDef_ children = elemKeyed (ElemName "altGlyphDef") [] children

-- | Defines a substitution for a specific glyph in an altGlyphDef element
altGlyphItem :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
altGlyphItem props children = elemKeyed (ElemName "altGlyphItem") props children

-- | Defines a substitution for a specific glyph in an altGlyphDef element [No Attributes]
altGlyphItem_ :: forall html a. Html html => Array (Key /\ html a) -> html a
altGlyphItem_ children = elemKeyed (ElemName "altGlyphItem") [] children

-- | Defines an animation on an SVG element
animate :: forall html a. Html html => Array (Prop a) -> html a
animate props = elemKeyed (ElemName "animate") props []

-- | Defines an animation on an SVG element [No Attributes]
animate_ :: forall html a. Html html => html a
animate_ = elemKeyed (ElemName "animate") [] []

-- | Defines an animated color change for an SVG element
animateColor :: forall html a. Html html => Array (Prop a) -> html a
animateColor props = elemKeyed (ElemName "animateColor") props []

-- | Defines an animated color change for an SVG element [No Attributes]
animateColor_ :: forall html a. Html html => html a
animateColor_ = elemKeyed (ElemName "animateColor") [] []

-- | Defines an animated motion path for an SVG element
animateMotion :: forall html a. Html html => Array (Prop a) -> html a
animateMotion props = elemKeyed (ElemName "animateMotion") props []

-- | Defines an animated motion path for an SVG element [No Attributes]
animateMotion_ :: forall html a. Html html => html a
animateMotion_ = elemKeyed (ElemName "animateMotion") [] []

-- | Defines an animated transformation on an SVG element
animateTransform :: forall html a. Html html => Array (Prop a) -> html a
animateTransform props = elemKeyed (ElemName "animateTransform") props []

-- | Defines an animated transformation on an SVG element [No Attributes]
animateTransform_ :: forall html a. Html html => html a
animateTransform_ = elemKeyed (ElemName "animateTransform") [] []

-- | Creates a circle element
circle :: forall html a. Html html => Array (Prop a) -> html a
circle props = elemKeyed (ElemName "circle") props []

-- | Creates a circle element [No Attributes]
circle_ :: forall html a. Html html => html a
circle_ = elemKeyed (ElemName "circle") [] []

-- | Defines a clipping path for an SVG element
clipPath :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
clipPath props children = elemKeyed (ElemName "clipPath") props children

-- | Defines a clipping path for an SVG element [No Attributes]
clipPath_ :: forall html a. Html html => Array (Key /\ html a) -> html a
clipPath_ children = elemKeyed (ElemName "clipPath") [] children

-- | Defines a color profile for an SVG document
colorProfile :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
colorProfile props children = elemKeyed (ElemName "color-profile") props children

-- | Defines a color profile for an SVG document [No Attributes]
colorProfile_ :: forall html a. Html html => Array (Key /\ html a) -> html a
colorProfile_ children = elemKeyed (ElemName "color-profile") [] children

-- | Defines a cursor for an SVG element
cursor :: forall html a. Html html => Array (Prop a) -> html a
cursor props = elemKeyed (ElemName "cursor") props []

-- | Defines a cursor for an SVG element [No Attributes]
cursor_ :: forall html a. Html html => html a
cursor_ = elemKeyed (ElemName "cursor") [] []

-- | Defines a set of reusable SVG elements
defs :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
defs props children = elemKeyed (ElemName "defs") props children

-- | Defines a set of reusable SVG elements [No Attributes]
defs_ :: forall html a. Html html => Array (Key /\ html a) -> html a
defs_ children = elemKeyed (ElemName "defs") [] children

-- | Defines a description of an SVG element
desc :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
desc props children = elemKeyed (ElemName "desc") props children

-- | Defines a description of an SVG element [No Attributes]
desc_ :: forall html a. Html html => Array (Key /\ html a) -> html a
desc_ children = elemKeyed (ElemName "desc") [] children

-- | Creates an ellipse element
ellipse :: forall html a. Html html => Array (Prop a) -> html a
ellipse props = elemKeyed (ElemName "ellipse") props []

-- | Creates an ellipse element [No Attributes]
ellipse_ :: forall html a. Html html => html a
ellipse_ = elemKeyed (ElemName "ellipse") [] []

-- | Defines a blend mode for two input images in a filter
feBlend :: forall html a. Html html => Array (Prop a) -> html a
feBlend props = elemKeyed (ElemName "feBlend") props []

-- | Defines a blend mode for two input images in a filter [No Attributes]
feBlend_ :: forall html a. Html html => html a
feBlend_ = elemKeyed (ElemName "feBlend") [] []

-- | Applies a color transformation to an input image
feColorMatrix :: forall html a. Html html => Array (Prop a) -> html a
feColorMatrix props = elemKeyed (ElemName "feColorMatrix") props []

-- | Applies a color transformation to an input image [No Attributes]
feColorMatrix_ :: forall html a. Html html => html a
feColorMatrix_ = elemKeyed (ElemName "feColorMatrix") [] []

-- | Allows for component-wise remapping of input image components
feComponentTransfer :: forall html a. Html html => Array (Prop a) -> html a
feComponentTransfer props = elemKeyed (ElemName "feComponentTransfer") props []

-- | Allows for component-wise remapping of input image components [No Attributes]
feComponentTransfer_ :: forall html a. Html html => html a
feComponentTransfer_ = elemKeyed (ElemName "feComponentTransfer") [] []

-- | Combines two input images using a composition operation
feComposite :: forall html a. Html html => Array (Prop a) -> html a
feComposite props = elemKeyed (ElemName "feComposite") props []

-- | Combines two input images using a composition operation [No Attributes]
feComposite_ :: forall html a. Html html => html a
feComposite_ = elemKeyed (ElemName "feComposite") [] []

-- | Applies a matrix convolution filter effect to an input image
feConvolveMatrix :: forall html a. Html html => Array (Prop a) -> html a
feConvolveMatrix props = elemKeyed (ElemName "feConvolveMatrix") props []

-- | Applies a matrix convolution filter effect to an input image [No Attributes]
feConvolveMatrix_ :: forall html a. Html html => html a
feConvolveMatrix_ = elemKeyed (ElemName "feConvolveMatrix") [] []

-- | Creates a lighting effect using the alpha channel as a bump map
feDiffuseLighting :: forall html a. Html html => Array (Prop a) -> html a
feDiffuseLighting props = elemKeyed (ElemName "feDiffuseLighting") props []

-- | Creates a lighting effect using the alpha channel as a bump map [No Attributes]
feDiffuseLighting_ :: forall html a. Html html => html a
feDiffuseLighting_ = elemKeyed (ElemName "feDiffuseLighting") [] []

-- | Displaces the pixels in an input image according to a displacement map image
feDisplacementMap :: forall html a. Html html => Array (Prop a) -> html a
feDisplacementMap props = elemKeyed (ElemName "feDisplacementMap") props []

-- | Displaces the pixels in an input image according to a displacement map image [No Attributes]
feDisplacementMap_ :: forall html a. Html html => html a
feDisplacementMap_ = elemKeyed (ElemName "feDisplacementMap") [] []

-- | Defines a distant light source for use in a lighting filter effect
feDistantLight :: forall html a. Html html => Array (Prop a) -> html a
feDistantLight props = elemKeyed (ElemName "feDistantLight") props []

-- | Defines a distant light source for use in a lighting filter effect [No Attributes]
feDistantLight_ :: forall html a. Html html => html a
feDistantLight_ = elemKeyed (ElemName "feDistantLight") [] []

-- | Fills the filter subregion with a solid color
feFlood :: forall html a. Html html => Array (Prop a) -> html a
feFlood props = elemKeyed (ElemName "feFlood") props []

-- | Fills the filter subregion with a solid color [No Attributes]
feFlood_ :: forall html a. Html html => html a
feFlood_ = elemKeyed (ElemName "feFlood") [] []

-- | Defines the alpha transfer function for a component in a filter
feFuncA :: forall html a. Html html => Array (Prop a) -> html a
feFuncA props = elemKeyed (ElemName "feFuncA") props []

-- | Defines the alpha transfer function for a component in a filter [No Attributes]
feFuncA_ :: forall html a. Html html => html a
feFuncA_ = elemKeyed (ElemName "feFuncA") [] []

-- | Defines the transfer function for a component
feFuncB :: forall html a. Html html => Array (Prop a) -> html a
feFuncB props = elemKeyed (ElemName "feFuncB") props []

-- | Defines the transfer function for a component [No Attributes]
feFuncB_ :: forall html a. Html html => html a
feFuncB_ = elemKeyed (ElemName "feFuncB") [] []

-- | Defines the transfer function for a component
feFuncG :: forall html a. Html html => Array (Prop a) -> html a
feFuncG props = elemKeyed (ElemName "feFuncG") props []

-- | Defines the transfer function for a component [No Attributes]
feFuncG_ :: forall html a. Html html => html a
feFuncG_ = elemKeyed (ElemName "feFuncG") [] []

-- | Defines the transfer function for a component
feFuncR :: forall html a. Html html => Array (Prop a) -> html a
feFuncR props = elemKeyed (ElemName "feFuncR") props []

-- | Defines the transfer function for a component [No Attributes]
feFuncR_ :: forall html a. Html html => html a
feFuncR_ = elemKeyed (ElemName "feFuncR") [] []

-- | Applies a Gaussian blur to an input image
feGaussianBlur :: forall html a. Html html => Array (Prop a) -> html a
feGaussianBlur props = elemKeyed (ElemName "feGaussianBlur") props []

-- | Applies a Gaussian blur to an input image [No Attributes]
feGaussianBlur_ :: forall html a. Html html => html a
feGaussianBlur_ = elemKeyed (ElemName "feGaussianBlur") [] []

-- | Inserts an external image into an SVG element
feImage :: forall html a. Html html => Array (Prop a) -> html a
feImage props = elemKeyed (ElemName "feImage") props []

-- | Inserts an external image into an SVG element [No Attributes]
feImage_ :: forall html a. Html html => html a
feImage_ = elemKeyed (ElemName "feImage") [] []

-- | Merges multiple input images together
feMerge :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
feMerge props children = elemKeyed (ElemName "feMerge") props children

-- | Merges multiple input images together [No Attributes]
feMerge_ :: forall html a. Html html => Array (Key /\ html a) -> html a
feMerge_ children = elemKeyed (ElemName "feMerge") [] children

-- | Specifies an input image for use with a feMerge filter
feMergeNode :: forall html a. Html html => Array (Prop a) -> html a
feMergeNode props = elemKeyed (ElemName "feMergeNode") props []

-- | Specifies an input image for use with a feMerge filter [No Attributes]
feMergeNode_ :: forall html a. Html html => html a
feMergeNode_ = elemKeyed (ElemName "feMergeNode") [] []

-- | Expands or contracts the shape of an input image
feMorphology :: forall html a. Html html => Array (Prop a) -> html a
feMorphology props = elemKeyed (ElemName "feMorphology") props []

-- | Expands or contracts the shape of an input image [No Attributes]
feMorphology_ :: forall html a. Html html => html a
feMorphology_ = elemKeyed (ElemName "feMorphology") [] []

-- | Offsets the position of an input image
feOffset :: forall html a. Html html => Array (Prop a) -> html a
feOffset props = elemKeyed (ElemName "feOffset") props []

-- | Offsets the position of an input image [No Attributes]
feOffset_ :: forall html a. Html html => html a
feOffset_ = elemKeyed (ElemName "feOffset") [] []

-- | Defines a point light source for use in a lighting filter effect
fePointLight :: forall html a. Html html => Array (Prop a) -> html a
fePointLight props = elemKeyed (ElemName "fePointLight") props []

-- | Defines a point light source for use in a lighting filter effect [No Attributes]
fePointLight_ :: forall html a. Html html => html a
fePointLight_ = elemKeyed (ElemName "fePointLight") [] []

-- | Creates a specular lighting effect using the alpha channel as a bump map
feSpecularLighting :: forall html a. Html html => Array (Prop a) -> html a
feSpecularLighting props = elemKeyed (ElemName "feSpecularLighting") props []

-- | Creates a specular lighting effect using the alpha channel as a bump map [No Attributes]
feSpecularLighting_ :: forall html a. Html html => html a
feSpecularLighting_ = elemKeyed (ElemName "feSpecularLighting") [] []

-- | Defines a spotlight source for use in a lighting filter effect
feSpotLight :: forall html a. Html html => Array (Prop a) -> html a
feSpotLight props = elemKeyed (ElemName "feSpotLight") props []

-- | Defines a spotlight source for use in a lighting filter effect [No Attributes]
feSpotLight_ :: forall html a. Html html => html a
feSpotLight_ = elemKeyed (ElemName "feSpotLight") [] []

-- | Repeats an input image to fill a filter subregion
feTile :: forall html a. Html html => Array (Prop a) -> html a
feTile props = elemKeyed (ElemName "feTile") props []

-- | Repeats an input image to fill a filter subregion [No Attributes]
feTile_ :: forall html a. Html html => html a
feTile_ = elemKeyed (ElemName "feTile") [] []

-- | Generates a Perlin noise or turbulence pattern
feTurbulence :: forall html a. Html html => Array (Prop a) -> html a
feTurbulence props = elemKeyed (ElemName "feTurbulence") props []

-- | Generates a Perlin noise or turbulence pattern [No Attributes]
feTurbulence_ :: forall html a. Html html => html a
feTurbulence_ = elemKeyed (ElemName "feTurbulence") [] []

-- | Defines a filter effect
filter :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
filter props children = elemKeyed (ElemName "filter") props children

-- | Defines a filter effect [No Attributes]
filter_ :: forall html a. Html html => Array (Key /\ html a) -> html a
filter_ children = elemKeyed (ElemName "filter") [] children

-- | Inserts a foreign object into an SVG document
foreignObject :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
foreignObject props children = elemKeyed (ElemName "foreignObject") props children

-- | Inserts a foreign object into an SVG document [No Attributes]
foreignObject_ :: forall html a. Html html => Array (Key /\ html a) -> html a
foreignObject_ children = elemKeyed (ElemName "foreignObject") [] children

-- | Creates a group of SVG elements
g :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
g props children = elemKeyed (ElemName "g") props children

-- | Creates a group of SVG elements [No Attributes]
g_ :: forall html a. Html html => Array (Key /\ html a) -> html a
g_ children = elemKeyed (ElemName "g") [] children

-- | Defines a single glyph in an SVG font
glyph :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
glyph props children = elemKeyed (ElemName "glyph") props children

-- | Defines a single glyph in an SVG font [No Attributes]
glyph_ :: forall html a. Html html => Array (Key /\ html a) -> html a
glyph_ children = elemKeyed (ElemName "glyph") [] children

-- | References a glyph in a font
glyphRef :: forall html a. Html html => Array (Prop a) -> html a
glyphRef props = elemKeyed (ElemName "glyphRef") props []

-- | References a glyph in a font [No Attributes]
glyphRef_ :: forall html a. Html html => html a
glyphRef_ = elemKeyed (ElemName "glyphRef") [] []

-- | Defines a hatching pattern
hatch :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
hatch props children = elemKeyed (ElemName "hatch") props children

-- | Defines a hatching pattern [No Attributes]
hatch_ :: forall html a. Html html => Array (Key /\ html a) -> html a
hatch_ children = elemKeyed (ElemName "hatch") [] children

-- | Defines the path of a hatching pattern
hatchpath :: forall html a. Html html => Array (Prop a) -> html a
hatchpath props = elemKeyed (ElemName "hatchpath") props []

-- | Defines the path of a hatching pattern [No Attributes]
hatchpath_ :: forall html a. Html html => html a
hatchpath_ = elemKeyed (ElemName "hatchpath") [] []

-- | Inserts an external raster image into an SVG document
image :: forall html a. Html html => Array (Prop a) -> html a
image props = elemKeyed (ElemName "image") props []

-- | Inserts an external raster image into an SVG document [No Attributes]
image_ :: forall html a. Html html => html a
image_ = elemKeyed (ElemName "image") [] []

-- | Creates a line element
line :: forall html a. Html html => Array (Prop a) -> html a
line props = elemKeyed (ElemName "line") props []

-- | Creates a line element [No Attributes]
line_ :: forall html a. Html html => html a
line_ = elemKeyed (ElemName "line") [] []

-- | Defines a linear gradient for an SVG element
linearGradient :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
linearGradient props children = elemKeyed (ElemName "linearGradient") props children

-- | Defines a linear gradient for an SVG element [No Attributes]
linearGradient_ :: forall html a. Html html => Array (Key /\ html a) -> html a
linearGradient_ children = elemKeyed (ElemName "linearGradient") [] children

-- | Defines a marker symbol to be used with a shape or line
marker :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
marker props children = elemKeyed (ElemName "marker") props children

-- | Defines a marker symbol to be used with a shape or line [No Attributes]
marker_ :: forall html a. Html html => Array (Key /\ html a) -> html a
marker_ children = elemKeyed (ElemName "marker") [] children

-- | Defines a mask for an SVG element
mask :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
mask props children = elemKeyed (ElemName "mask") props children

-- | Defines a mask for an SVG element [No Attributes]
mask_ :: forall html a. Html html => Array (Key /\ html a) -> html a
mask_ children = elemKeyed (ElemName "mask") [] children

-- | The metadata element provides a container for storing non-visual data.
metadata :: forall html a. Html html => Array (Prop a) -> html a
metadata props = elemKeyed (ElemName "metadata") props []

-- | The metadata element provides a container for storing non-visual data. [No Attributes]
metadata_ :: forall html a. Html html => html a
metadata_ = elemKeyed (ElemName "metadata") [] []

-- | The missing-glyph element provides a fallback for glyphs that are not available in a font.
missingGlyph :: forall html a. Html html => Array (Prop a) -> html a
missingGlyph props = elemKeyed (ElemName "missing-glyph") props []

-- | The missing-glyph element provides a fallback for glyphs that are not available in a font. [No Attributes]
missingGlyph_ :: forall html a. Html html => html a
missingGlyph_ = elemKeyed (ElemName "missing-glyph") [] []

-- | The mpath element provides a way to animate the motion of an object along a path.
mpath :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
mpath props children = elemKeyed (ElemName "mpath") props children

-- | The mpath element provides a way to animate the motion of an object along a path. [No Attributes]
mpath_ :: forall html a. Html html => Array (Key /\ html a) -> html a
mpath_ children = elemKeyed (ElemName "mpath") [] children

-- | The path element defines a path to be drawn.
path :: forall html a. Html html => Array (Prop a) -> html a
path props = elemKeyed (ElemName "path") props []

-- | The path element defines a path to be drawn. [No Attributes]
path_ :: forall html a. Html html => html a
path_ = elemKeyed (ElemName "path") [] []

-- | The pattern element defines a repeating pattern to be used as a fill or stroke.
pattern :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
pattern props children = elemKeyed (ElemName "pattern") props children

-- | The pattern element defines a repeating pattern to be used as a fill or stroke. [No Attributes]
pattern_ :: forall html a. Html html => Array (Key /\ html a) -> html a
pattern_ children = elemKeyed (ElemName "pattern") [] children

-- | The polygon element defines a closed shape consisting of a series of connected straight line segments.
polygon :: forall html a. Html html => Array (Prop a) -> html a
polygon props = elemKeyed (ElemName "polygon") props []

-- | The polygon element defines a closed shape consisting of a series of connected straight line segments. [No Attributes]
polygon_ :: forall html a. Html html => html a
polygon_ = elemKeyed (ElemName "polygon") [] []

-- | The polyline element defines an open shape consisting of a series of connected straight line segments.
polyline :: forall html a. Html html => Array (Prop a) -> html a
polyline props = elemKeyed (ElemName "polyline") props []

-- | The polyline element defines an open shape consisting of a series of connected straight line segments. [No Attributes]
polyline_ :: forall html a. Html html => html a
polyline_ = elemKeyed (ElemName "polyline") [] []

-- | The radialGradient element defines a radial gradient to be used as a fill or stroke.
radialGradient :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
radialGradient props children = elemKeyed (ElemName "radialGradient") props children

-- | The radialGradient element defines a radial gradient to be used as a fill or stroke. [No Attributes]
radialGradient_ :: forall html a. Html html => Array (Key /\ html a) -> html a
radialGradient_ children = elemKeyed (ElemName "radialGradient") [] children

-- | The rect element defines a rectangle to be drawn.
rect :: forall html a. Html html => Array (Prop a) -> html a
rect props = elemKeyed (ElemName "rect") props []

-- | The rect element defines a rectangle to be drawn. [No Attributes]
rect_ :: forall html a. Html html => html a
rect_ = elemKeyed (ElemName "rect") [] []

-- | The script element contains script statements.
script :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
script props children = elemKeyed (ElemName "script") props children

-- | The script element contains script statements. [No Attributes]
script_ :: forall html a. Html html => Array (Key /\ html a) -> html a
script_ children = elemKeyed (ElemName "script") [] children

-- | The set element provides a way to animate an attribute to a given value.
set :: forall html a. Html html => Array (Prop a) -> html a
set props = elemKeyed (ElemName "set") props []

-- | The set element provides a way to animate an attribute to a given value. [No Attributes]
set_ :: forall html a. Html html => html a
set_ = elemKeyed (ElemName "set") [] []

-- | The stop element defines a color or gradient stop in a gradient.
stop :: forall html a. Html html => Array (Prop a) -> html a
stop props = elemKeyed (ElemName "stop") props []

-- | The stop element defines a color or gradient stop in a gradient. [No Attributes]
stop_ :: forall html a. Html html => html a
stop_ = elemKeyed (ElemName "stop") [] []

-- | The style element contains style information for a document or part of a document.
style :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
style props children = elemKeyed (ElemName "style") props children

-- | The style element contains style information for a document or part of a document. [No Attributes]
style_ :: forall html a. Html html => Array (Key /\ html a) -> html a
style_ children = elemKeyed (ElemName "style") [] children

-- | The svg element is the root element of an SVG document.
svg :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
svg props children = elemKeyed (ElemName "svg") props children

-- | The svg element is the root element of an SVG document. [No Attributes]
svg_ :: forall html a. Html html => Array (Key /\ html a) -> html a
svg_ children = elemKeyed (ElemName "svg") [] children

-- | The switch element allows conditional processing of SVG elements.
switch :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
switch props children = elemKeyed (ElemName "switch") props children

-- | The switch element allows conditional processing of SVG elements. [No Attributes]
switch_ :: forall html a. Html html => Array (Key /\ html a) -> html a
switch_ children = elemKeyed (ElemName "switch") [] children

-- | The symbol element defines a reusable graphic element.
symbol :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
symbol props children = elemKeyed (ElemName "symbol") props children

-- | The symbol element defines a reusable graphic element. [No Attributes]
symbol_ :: forall html a. Html html => Array (Key /\ html a) -> html a
symbol_ children = elemKeyed (ElemName "symbol") [] children

-- | The text element defines a block of text to be drawn.
text :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
text props children = elemKeyed (ElemName "text") props children

-- | The text element defines a block of text to be drawn. [No Attributes]
text_ :: forall html a. Html html => Array (Key /\ html a) -> html a
text_ children = elemKeyed (ElemName "text") [] children

-- | The textPath element provides a way to align text along a path.
textPath :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
textPath props children = elemKeyed (ElemName "textPath") props children

-- | The textPath element provides a way to align text along a path. [No Attributes]
textPath_ :: forall html a. Html html => Array (Key /\ html a) -> html a
textPath_ children = elemKeyed (ElemName "textPath") [] children

-- | The title element provides a title for a document or part of a document.
title :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
title props children = elemKeyed (ElemName "title") props children

-- | The title element provides a title for a document or part of a document. [No Attributes]
title_ :: forall html a. Html html => Array (Key /\ html a) -> html a
title_ children = elemKeyed (ElemName "title") [] children

-- | The tref element provides a way to reference a portion of text in another element.
tref :: forall html a. Html html => Array (Prop a) -> html a
tref props = elemKeyed (ElemName "tref") props []

-- | The tref element provides a way to reference a portion of text in another element. [No Attributes]
tref_ :: forall html a. Html html => html a
tref_ = elemKeyed (ElemName "tref") [] []

-- | The tspan element provides a way to group a portion of text within a larger block of text.
tspan :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
tspan props children = elemKeyed (ElemName "tspan") props children

-- | The tspan element provides a way to group a portion of text within a larger block of text. [No Attributes]
tspan_ :: forall html a. Html html => Array (Key /\ html a) -> html a
tspan_ children = elemKeyed (ElemName "tspan") [] children

-- | The use element provides a way to reuse a single element and apply transformations to it.
use :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
use props children = elemKeyed (ElemName "use") props children

-- | The use element provides a way to reuse a single element and apply transformations to it. [No Attributes]
use_ :: forall html a. Html html => Array (Key /\ html a) -> html a
use_ children = elemKeyed (ElemName "use") [] children

-- | The view element defines a rectangular portion of the SVG canvas that should be displayed.
view :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
view props children = elemKeyed (ElemName "view") props children

-- | The view element defines a rectangular portion of the SVG canvas that should be displayed. [No Attributes]
view_ :: forall html a. Html html => Array (Key /\ html a) -> html a
view_ children = elemKeyed (ElemName "view") [] children

-- | Defines vertical kerning for a pair of glyphs in a font.
vkern :: forall html a. Html html => Array (Prop a) -> html a
vkern props = elemKeyed (ElemName "vkern") props []

-- | Defines vertical kerning for a pair of glyphs in a font. [No Attributes]
vkern_ :: forall html a. Html html => html a
vkern_ = elemKeyed (ElemName "vkern") [] []

