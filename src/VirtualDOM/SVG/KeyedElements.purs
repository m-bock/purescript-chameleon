module VirtualDOM.SVG.KeyedElements where

import Data.Tuple.Nested (type (/\))
import VirtualDOM (class Html, Key, ElemName(..), Prop, elemKeyed)

-- | Creates a hyperlink element
a :: forall html ctx a. Html html => Array (Prop a) -> Array (Key /\ html ctx a) -> html ctx a
a props children = elemKeyed (ElemName "a") props children

-- | Defines an alternative representation of a glyph in a font
altGlyph
  :: forall html ctx a. Html html => Array (Prop a) -> Array (Key /\ html ctx a) -> html ctx a
altGlyph props children = elemKeyed (ElemName "altGlyph") props children

-- | Defines a set of glyph substitutions for an altGlyph element
altGlyphDef
  :: forall html ctx a. Html html => Array (Prop a) -> Array (Key /\ html ctx a) -> html ctx a
altGlyphDef props children = elemKeyed (ElemName "altGlyphDef") props children

-- | Defines a substitution for a specific glyph in an altGlyphDef element
altGlyphItem
  :: forall html ctx a. Html html => Array (Prop a) -> Array (Key /\ html ctx a) -> html ctx a
altGlyphItem props children = elemKeyed (ElemName "altGlyphItem") props children

-- | Defines an animation on an SVG element
animate :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
animate props = elemKeyed (ElemName "animate") props []

-- | Defines an animated color change for an SVG element
animateColor :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
animateColor props = elemKeyed (ElemName "animateColor") props []

-- | Defines an animated motion path for an SVG element
animateMotion :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
animateMotion props = elemKeyed (ElemName "animateMotion") props []

-- | Defines an animated transformation on an SVG element
animateTransform :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
animateTransform props = elemKeyed (ElemName "animateTransform") props []

-- | Creates a circle element
circle :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
circle props = elemKeyed (ElemName "circle") props []

-- | Defines a clipping path for an SVG element
clipPath
  :: forall html ctx a. Html html => Array (Prop a) -> Array (Key /\ html ctx a) -> html ctx a
clipPath props children = elemKeyed (ElemName "clipPath") props children

-- | Defines a color profile for an SVG document
colorProfile
  :: forall html ctx a. Html html => Array (Prop a) -> Array (Key /\ html ctx a) -> html ctx a
colorProfile props children = elemKeyed (ElemName "color-profile") props children

-- | Defines a cursor for an SVG element
cursor :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
cursor props = elemKeyed (ElemName "cursor") props []

-- | Defines a set of reusable SVG elements
defs :: forall html ctx a. Html html => Array (Prop a) -> Array (Key /\ html ctx a) -> html ctx a
defs props children = elemKeyed (ElemName "defs") props children

-- | Defines a description of an SVG element
desc :: forall html ctx a. Html html => Array (Prop a) -> Array (Key /\ html ctx a) -> html ctx a
desc props children = elemKeyed (ElemName "desc") props children

-- | Creates an ellipse element
ellipse :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
ellipse props = elemKeyed (ElemName "ellipse") props []

-- | Defines a blend mode for two input images in a filter
feBlend :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feBlend props = elemKeyed (ElemName "feBlend") props []

-- | Applies a color transformation to an input image
feColorMatrix :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feColorMatrix props = elemKeyed (ElemName "feColorMatrix") props []

-- | Allows for component-wise remapping of input image components
feComponentTransfer :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feComponentTransfer props = elemKeyed (ElemName "feComponentTransfer") props []

-- | Combines two input images using a composition operation
feComposite :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feComposite props = elemKeyed (ElemName "feComposite") props []

-- | Applies a matrix convolution filter effect to an input image
feConvolveMatrix :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feConvolveMatrix props = elemKeyed (ElemName "feConvolveMatrix") props []

-- | Creates a lighting effect using the alpha channel as a bump map
feDiffuseLighting :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feDiffuseLighting props = elemKeyed (ElemName "feDiffuseLighting") props []

-- | Displaces the pixels in an input image according to a displacement map image
feDisplacementMap :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feDisplacementMap props = elemKeyed (ElemName "feDisplacementMap") props []

-- | Defines a distant light source for use in a lighting filter effect
feDistantLight :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feDistantLight props = elemKeyed (ElemName "feDistantLight") props []

-- | Fills the filter subregion with a solid color
feFlood :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feFlood props = elemKeyed (ElemName "feFlood") props []

-- | Defines the alpha transfer function for a component in a filter
feFuncA :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feFuncA props = elemKeyed (ElemName "feFuncA") props []

-- | Defines the transfer function for a component
feFuncB :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feFuncB props = elemKeyed (ElemName "feFuncB") props []

-- | Defines the transfer function for a component
feFuncG :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feFuncG props = elemKeyed (ElemName "feFuncG") props []

-- | Defines the transfer function for a component
feFuncR :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feFuncR props = elemKeyed (ElemName "feFuncR") props []

-- | Applies a Gaussian blur to an input image
feGaussianBlur :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feGaussianBlur props = elemKeyed (ElemName "feGaussianBlur") props []

-- | Inserts an external image into an SVG element
feImage :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feImage props = elemKeyed (ElemName "feImage") props []

-- | Merges multiple input images together
feMerge :: forall html ctx a. Html html => Array (Prop a) -> Array (Key /\ html ctx a) -> html ctx a
feMerge props children = elemKeyed (ElemName "feMerge") props children

-- | Specifies an input image for use with a feMerge filter
feMergeNode :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feMergeNode props = elemKeyed (ElemName "feMergeNode") props []

-- | Expands or contracts the shape of an input image
feMorphology :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feMorphology props = elemKeyed (ElemName "feMorphology") props []

-- | Offsets the position of an input image
feOffset :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feOffset props = elemKeyed (ElemName "feOffset") props []

-- | Defines a point light source for use in a lighting filter effect
fePointLight :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
fePointLight props = elemKeyed (ElemName "fePointLight") props []

-- | Creates a specular lighting effect using the alpha channel as a bump map
feSpecularLighting :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feSpecularLighting props = elemKeyed (ElemName "feSpecularLighting") props []

-- | Defines a spotlight source for use in a lighting filter effect
feSpotLight :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feSpotLight props = elemKeyed (ElemName "feSpotLight") props []

-- | Repeats an input image to fill a filter subregion
feTile :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feTile props = elemKeyed (ElemName "feTile") props []

-- | Generates a Perlin noise or turbulence pattern
feTurbulence :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feTurbulence props = elemKeyed (ElemName "feTurbulence") props []

-- | Defines a filter effect
filter :: forall html ctx a. Html html => Array (Prop a) -> Array (Key /\ html ctx a) -> html ctx a
filter props children = elemKeyed (ElemName "filter") props children

-- | Inserts a foreign object into an SVG document
foreignObject
  :: forall html ctx a. Html html => Array (Prop a) -> Array (Key /\ html ctx a) -> html ctx a
foreignObject props children = elemKeyed (ElemName "foreignObject") props children

-- | Creates a group of SVG elements
g :: forall html ctx a. Html html => Array (Prop a) -> Array (Key /\ html ctx a) -> html ctx a
g props children = elemKeyed (ElemName "g") props children

-- | Defines a single glyph in an SVG font
glyph :: forall html ctx a. Html html => Array (Prop a) -> Array (Key /\ html ctx a) -> html ctx a
glyph props children = elemKeyed (ElemName "glyph") props children

-- | References a glyph in a font
glyphRef :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
glyphRef props = elemKeyed (ElemName "glyphRef") props []

-- | Defines a hatching pattern
hatch :: forall html ctx a. Html html => Array (Prop a) -> Array (Key /\ html ctx a) -> html ctx a
hatch props children = elemKeyed (ElemName "hatch") props children

-- | Defines the path of a hatching pattern
hatchpath :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
hatchpath props = elemKeyed (ElemName "hatchpath") props []

-- | Inserts an external raster image into an SVG document
image :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
image props = elemKeyed (ElemName "image") props []

-- | Creates a line element
line :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
line props = elemKeyed (ElemName "line") props []

-- | Defines a linear gradient for an SVG element
linearGradient
  :: forall html ctx a. Html html => Array (Prop a) -> Array (Key /\ html ctx a) -> html ctx a
linearGradient props children = elemKeyed (ElemName "linearGradient") props children

-- | Defines a marker symbol to be used with a shape or line
marker :: forall html ctx a. Html html => Array (Prop a) -> Array (Key /\ html ctx a) -> html ctx a
marker props children = elemKeyed (ElemName "marker") props children

-- | Defines a mask for an SVG element
mask :: forall html ctx a. Html html => Array (Prop a) -> Array (Key /\ html ctx a) -> html ctx a
mask props children = elemKeyed (ElemName "mask") props children

-- | The metadata element provides a container for storing non-visual data.
metadata :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
metadata props = elemKeyed (ElemName "metadata") props []

-- | The missing-glyph element provides a fallback for glyphs that are not available in a font.
missingGlyph :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
missingGlyph props = elemKeyed (ElemName "missing-glyph") props []

-- | The mpath element provides a way to animate the motion of an object along a path.
mpath :: forall html ctx a. Html html => Array (Prop a) -> Array (Key /\ html ctx a) -> html ctx a
mpath props children = elemKeyed (ElemName "mpath") props children

-- | The path element defines a path to be drawn.
path :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
path props = elemKeyed (ElemName "path") props []

-- | The pattern element defines a repeating pattern to be used as a fill or stroke.
pattern :: forall html ctx a. Html html => Array (Prop a) -> Array (Key /\ html ctx a) -> html ctx a
pattern props children = elemKeyed (ElemName "pattern") props children

-- | The polygon element defines a closed shape consisting of a series of connected straight line segments.
polygon :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
polygon props = elemKeyed (ElemName "polygon") props []

-- | The polyline element defines an open shape consisting of a series of connected straight line segments.
polyline :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
polyline props = elemKeyed (ElemName "polyline") props []

-- | The radialGradient element defines a radial gradient to be used as a fill or stroke.
radialGradient
  :: forall html ctx a. Html html => Array (Prop a) -> Array (Key /\ html ctx a) -> html ctx a
radialGradient props children = elemKeyed (ElemName "radialGradient") props children

-- | The rect element defines a rectangle to be drawn.
rect :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
rect props = elemKeyed (ElemName "rect") props []

-- | The script element contains script statements.
script :: forall html ctx a. Html html => Array (Prop a) -> Array (Key /\ html ctx a) -> html ctx a
script props children = elemKeyed (ElemName "script") props children

-- | The set element provides a way to animate an attribute to a given value.
set :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
set props = elemKeyed (ElemName "set") props []

-- | The stop element defines a color or gradient stop in a gradient.
stop :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
stop props = elemKeyed (ElemName "stop") props []

-- | The style element contains style information for a document or part of a document.
style :: forall html ctx a. Html html => Array (Prop a) -> Array (Key /\ html ctx a) -> html ctx a
style props children = elemKeyed (ElemName "style") props children

-- | The svg element is the root element of an SVG document.
svg :: forall html ctx a. Html html => Array (Prop a) -> Array (Key /\ html ctx a) -> html ctx a
svg props children = elemKeyed (ElemName "svg") props children

-- | The switch element allows conditional processing of SVG elements.
switch :: forall html ctx a. Html html => Array (Prop a) -> Array (Key /\ html ctx a) -> html ctx a
switch props children = elemKeyed (ElemName "switch") props children

-- | The symbol element defines a reusable graphic element.
symbol :: forall html ctx a. Html html => Array (Prop a) -> Array (Key /\ html ctx a) -> html ctx a
symbol props children = elemKeyed (ElemName "symbol") props children

-- | The text element defines a block of text to be drawn.
text :: forall html ctx a. Html html => Array (Prop a) -> Array (Key /\ html ctx a) -> html ctx a
text props children = elemKeyed (ElemName "text") props children

-- | The textPath element provides a way to align text along a path.
textPath
  :: forall html ctx a. Html html => Array (Prop a) -> Array (Key /\ html ctx a) -> html ctx a
textPath props children = elemKeyed (ElemName "textPath") props children

-- | The title element provides a title for a document or part of a document.
title :: forall html ctx a. Html html => Array (Prop a) -> Array (Key /\ html ctx a) -> html ctx a
title props children = elemKeyed (ElemName "title") props children

-- | The tref element provides a way to reference a portion of text in another element.
tref :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
tref props = elemKeyed (ElemName "tref") props []

-- | The tspan element provides a way to group a portion of text within a larger block of text.
tspan :: forall html ctx a. Html html => Array (Prop a) -> Array (Key /\ html ctx a) -> html ctx a
tspan props children = elemKeyed (ElemName "tspan") props children

-- | The use element provides a way to reuse a single element and apply transformations to it.
use :: forall html ctx a. Html html => Array (Prop a) -> Array (Key /\ html ctx a) -> html ctx a
use props children = elemKeyed (ElemName "use") props children

-- | The view element defines a rectangular portion of the SVG canvas that should be displayed.
view :: forall html ctx a. Html html => Array (Prop a) -> Array (Key /\ html ctx a) -> html ctx a
view props children = elemKeyed (ElemName "view") props children

-- | Defines vertical kerning for a pair of glyphs in a font.
vkern :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
vkern props = elemKeyed (ElemName "vkern") props []

