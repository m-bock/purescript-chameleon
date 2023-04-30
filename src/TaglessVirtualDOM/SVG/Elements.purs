module TaglessVirtualDOM.SVG.Elements where

import TaglessVirtualDOM (class Html, Prop, elem)

-- | Creates a hyperlink element
a :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
a props children = elem "a" props children

-- | Defines an alternative representation of a glyph in a font
altGlyph :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
altGlyph props children = elem "altGlyph" props children

-- | Defines a set of glyph substitutions for an altGlyph element
altGlyphDef :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
altGlyphDef props children = elem "altGlyphDef" props children

-- | Defines a substitution for a specific glyph in an altGlyphDef element
altGlyphItem :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
altGlyphItem props children = elem "altGlyphItem" props children

-- | Defines an animation on an SVG element
animate :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
animate props = elem "animate" props []

-- | Defines an animated color change for an SVG element
animateColor :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
animateColor props = elem "animateColor" props []

-- | Defines an animated motion path for an SVG element
animateMotion :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
animateMotion props = elem "animateMotion" props []

-- | Defines an animated transformation on an SVG element
animateTransform :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
animateTransform props = elem "animateTransform" props []

-- | Creates a circle element
circle :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
circle props = elem "circle" props []

-- | Defines a clipping path for an SVG element
clipPath :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
clipPath props children = elem "clipPath" props children

-- | Defines a color profile for an SVG document
colorProfile :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
colorProfile props children = elem "color-profile" props children

-- | Defines a cursor for an SVG element
cursor :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
cursor props = elem "cursor" props []

-- | Defines a set of reusable SVG elements
defs :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
defs props children = elem "defs" props children

-- | Defines a description of an SVG element
desc :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
desc props children = elem "desc" props children

-- | Creates an ellipse element
ellipse :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
ellipse props = elem "ellipse" props []

-- | Defines a blend mode for two input images in a filter
feBlend :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feBlend props = elem "feBlend" props []

-- | Applies a color transformation to an input image
feColorMatrix :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feColorMatrix props = elem "feColorMatrix" props []

-- | Allows for component-wise remapping of input image components
feComponentTransfer :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feComponentTransfer props = elem "feComponentTransfer" props []

-- | Combines two input images using a composition operation
feComposite :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feComposite props = elem "feComposite" props []

-- | Applies a matrix convolution filter effect to an input image
feConvolveMatrix :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feConvolveMatrix props = elem "feConvolveMatrix" props []

-- | Creates a lighting effect using the alpha channel as a bump map
feDiffuseLighting :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feDiffuseLighting props = elem "feDiffuseLighting" props []

-- | Displaces the pixels in an input image according to a displacement map image
feDisplacementMap :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feDisplacementMap props = elem "feDisplacementMap" props []

-- | Defines a distant light source for use in a lighting filter effect
feDistantLight :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feDistantLight props = elem "feDistantLight" props []

-- | Fills the filter subregion with a solid color
feFlood :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feFlood props = elem "feFlood" props []

-- | Defines the alpha transfer function for a component in a filter
feFuncA :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feFuncA props = elem "feFuncA" props []

-- | Defines the transfer function for a component
feFuncB :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feFuncB props = elem "feFuncB" props []

-- | Defines the transfer function for a component
feFuncG :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feFuncG props = elem "feFuncG" props []

-- | Defines the transfer function for a component
feFuncR :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feFuncR props = elem "feFuncR" props []

-- | Applies a Gaussian blur to an input image
feGaussianBlur :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feGaussianBlur props = elem "feGaussianBlur" props []

-- | Inserts an external image into an SVG element
feImage :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feImage props = elem "feImage" props []

-- | Merges multiple input images together
feMerge :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
feMerge props children = elem "feMerge" props children

-- | Specifies an input image for use with a feMerge filter
feMergeNode :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feMergeNode props = elem "feMergeNode" props []

-- | Expands or contracts the shape of an input image
feMorphology :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feMorphology props = elem "feMorphology" props []

-- | Offsets the position of an input image
feOffset :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feOffset props = elem "feOffset" props []

-- | Defines a point light source for use in a lighting filter effect
fePointLight :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
fePointLight props = elem "fePointLight" props []

-- | Creates a specular lighting effect using the alpha channel as a bump map
feSpecularLighting :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feSpecularLighting props = elem "feSpecularLighting" props []

-- | Defines a spotlight source for use in a lighting filter effect
feSpotLight :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feSpotLight props = elem "feSpotLight" props []

-- | Repeats an input image to fill a filter subregion
feTile :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feTile props = elem "feTile" props []

-- | Generates a Perlin noise or turbulence pattern
feTurbulence :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feTurbulence props = elem "feTurbulence" props []

-- | Defines a filter effect
filter :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
filter props children = elem "filter" props children

-- | Inserts a foreign object into an SVG document
foreignObject :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
foreignObject props children = elem "foreignObject" props children

-- | Creates a group of SVG elements
g :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
g props children = elem "g" props children

-- | Defines a single glyph in an SVG font
glyph :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
glyph props children = elem "glyph" props children

-- | References a glyph in a font
glyphRef :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
glyphRef props = elem "glyphRef" props []

-- | Defines a hatching pattern
hatch :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
hatch props children = elem "hatch" props children

-- | Defines the path of a hatching pattern
hatchpath :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
hatchpath props = elem "hatchpath" props []

-- | Inserts an external raster image into an SVG document
image :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
image props = elem "image" props []

-- | Creates a line element
line :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
line props = elem "line" props []

-- | Defines a linear gradient for an SVG element
linearGradient :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
linearGradient props children = elem "linearGradient" props children

-- | Defines a marker symbol to be used with a shape or line
marker :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
marker props children = elem "marker" props children

-- | Defines a mask for an SVG element
mask :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
mask props children = elem "mask" props children

-- | The metadata element provides a container for storing non-visual data.
metadata :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
metadata props = elem "metadata" props []

-- | The missing-glyph element provides a fallback for glyphs that are not available in a font.
missingGlyph :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
missingGlyph props = elem "missing-glyph" props []

-- | The mpath element provides a way to animate the motion of an object along a path.
mpath :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
mpath props children = elem "mpath" props children

-- | The path element defines a path to be drawn.
path :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
path props = elem "path" props []

-- | The pattern element defines a repeating pattern to be used as a fill or stroke.
pattern :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
pattern props children = elem "pattern" props children

-- | The polygon element defines a closed shape consisting of a series of connected straight line segments.
polygon :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
polygon props = elem "polygon" props []

-- | The polyline element defines an open shape consisting of a series of connected straight line segments.
polyline :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
polyline props = elem "polyline" props []

-- | The radialGradient element defines a radial gradient to be used as a fill or stroke.
radialGradient :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
radialGradient props children = elem "radialGradient" props children

-- | The rect element defines a rectangle to be drawn.
rect :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
rect props = elem "rect" props []

-- | The script element contains script statements.
script :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
script props children = elem "script" props children

-- | The set element provides a way to animate an attribute to a given value.
set :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
set props = elem "set" props []

-- | The stop element defines a color or gradient stop in a gradient.
stop :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
stop props = elem "stop" props []

-- | The style element contains style information for a document or part of a document.
style :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
style props children = elem "style" props children

-- | The svg element is the root element of an SVG document.
svg :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
svg props children = elem "svg" props children

-- | The switch element allows conditional processing of SVG elements.
switch :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
switch props children = elem "switch" props children

-- | The symbol element defines a reusable graphic element.
symbol :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
symbol props children = elem "symbol" props children

-- | The text element defines a block of text to be drawn.
text :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
text props children = elem "text" props children

-- | The textPath element provides a way to align text along a path.
textPath :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
textPath props children = elem "textPath" props children

-- | The title element provides a title for a document or part of a document.
title :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
title props children = elem "title" props children

-- | The tref element provides a way to reference a portion of text in another element.
tref :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
tref props = elem "tref" props []

-- | The tspan element provides a way to group a portion of text within a larger block of text.
tspan :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
tspan props children = elem "tspan" props children

-- | The use element provides a way to reuse a single element and apply transformations to it.
use :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
use props children = elem "use" props children

-- | The view element defines a rectangular portion of the SVG canvas that should be displayed.
view :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
view props children = elem "view" props children

-- | Defines vertical kerning for a pair of glyphs in a font.
vkern :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
vkern props = elem "vkern" props []

