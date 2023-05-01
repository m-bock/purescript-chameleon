module VirtualDOM.SVG.Elements where

import VirtualDOM (class Html, ElemName(..), Prop, elem)

-- | Creates a hyperlink element
a :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
a props children = elem (ElemName "a") props children

-- | Defines an alternative representation of a glyph in a font
altGlyph :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
altGlyph props children = elem (ElemName "altGlyph") props children

-- | Defines a set of glyph substitutions for an altGlyph element
altGlyphDef :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
altGlyphDef props children = elem (ElemName "altGlyphDef") props children

-- | Defines a substitution for a specific glyph in an altGlyphDef element
altGlyphItem :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
altGlyphItem props children = elem (ElemName "altGlyphItem") props children

-- | Defines an animation on an SVG element
animate :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
animate props = elem (ElemName "animate") props []

-- | Defines an animated color change for an SVG element
animateColor :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
animateColor props = elem (ElemName "animateColor") props []

-- | Defines an animated motion path for an SVG element
animateMotion :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
animateMotion props = elem (ElemName "animateMotion") props []

-- | Defines an animated transformation on an SVG element
animateTransform :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
animateTransform props = elem (ElemName "animateTransform") props []

-- | Creates a circle element
circle :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
circle props = elem (ElemName "circle") props []

-- | Defines a clipping path for an SVG element
clipPath :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
clipPath props children = elem (ElemName "clipPath") props children

-- | Defines a color profile for an SVG document
colorProfile :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
colorProfile props children = elem (ElemName "color-profile") props children

-- | Defines a cursor for an SVG element
cursor :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
cursor props = elem (ElemName "cursor") props []

-- | Defines a set of reusable SVG elements
defs :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
defs props children = elem (ElemName "defs") props children

-- | Defines a description of an SVG element
desc :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
desc props children = elem (ElemName "desc") props children

-- | Creates an ellipse element
ellipse :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
ellipse props = elem (ElemName "ellipse") props []

-- | Defines a blend mode for two input images in a filter
feBlend :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feBlend props = elem (ElemName "feBlend") props []

-- | Applies a color transformation to an input image
feColorMatrix :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feColorMatrix props = elem (ElemName "feColorMatrix") props []

-- | Allows for component-wise remapping of input image components
feComponentTransfer :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feComponentTransfer props = elem (ElemName "feComponentTransfer") props []

-- | Combines two input images using a composition operation
feComposite :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feComposite props = elem (ElemName "feComposite") props []

-- | Applies a matrix convolution filter effect to an input image
feConvolveMatrix :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feConvolveMatrix props = elem (ElemName "feConvolveMatrix") props []

-- | Creates a lighting effect using the alpha channel as a bump map
feDiffuseLighting :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feDiffuseLighting props = elem (ElemName "feDiffuseLighting") props []

-- | Displaces the pixels in an input image according to a displacement map image
feDisplacementMap :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feDisplacementMap props = elem (ElemName "feDisplacementMap") props []

-- | Defines a distant light source for use in a lighting filter effect
feDistantLight :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feDistantLight props = elem (ElemName "feDistantLight") props []

-- | Fills the filter subregion with a solid color
feFlood :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feFlood props = elem (ElemName "feFlood") props []

-- | Defines the alpha transfer function for a component in a filter
feFuncA :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feFuncA props = elem (ElemName "feFuncA") props []

-- | Defines the transfer function for a component
feFuncB :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feFuncB props = elem (ElemName "feFuncB") props []

-- | Defines the transfer function for a component
feFuncG :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feFuncG props = elem (ElemName "feFuncG") props []

-- | Defines the transfer function for a component
feFuncR :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feFuncR props = elem (ElemName "feFuncR") props []

-- | Applies a Gaussian blur to an input image
feGaussianBlur :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feGaussianBlur props = elem (ElemName "feGaussianBlur") props []

-- | Inserts an external image into an SVG element
feImage :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feImage props = elem (ElemName "feImage") props []

-- | Merges multiple input images together
feMerge :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
feMerge props children = elem (ElemName "feMerge") props children

-- | Specifies an input image for use with a feMerge filter
feMergeNode :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feMergeNode props = elem (ElemName "feMergeNode") props []

-- | Expands or contracts the shape of an input image
feMorphology :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feMorphology props = elem (ElemName "feMorphology") props []

-- | Offsets the position of an input image
feOffset :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feOffset props = elem (ElemName "feOffset") props []

-- | Defines a point light source for use in a lighting filter effect
fePointLight :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
fePointLight props = elem (ElemName "fePointLight") props []

-- | Creates a specular lighting effect using the alpha channel as a bump map
feSpecularLighting :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feSpecularLighting props = elem (ElemName "feSpecularLighting") props []

-- | Defines a spotlight source for use in a lighting filter effect
feSpotLight :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feSpotLight props = elem (ElemName "feSpotLight") props []

-- | Repeats an input image to fill a filter subregion
feTile :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feTile props = elem (ElemName "feTile") props []

-- | Generates a Perlin noise or turbulence pattern
feTurbulence :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feTurbulence props = elem (ElemName "feTurbulence") props []

-- | Defines a filter effect
filter :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
filter props children = elem (ElemName "filter") props children

-- | Inserts a foreign object into an SVG document
foreignObject :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
foreignObject props children = elem (ElemName "foreignObject") props children

-- | Creates a group of SVG elements
g :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
g props children = elem (ElemName "g") props children

-- | Defines a single glyph in an SVG font
glyph :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
glyph props children = elem (ElemName "glyph") props children

-- | References a glyph in a font
glyphRef :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
glyphRef props = elem (ElemName "glyphRef") props []

-- | Defines a hatching pattern
hatch :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
hatch props children = elem (ElemName "hatch") props children

-- | Defines the path of a hatching pattern
hatchpath :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
hatchpath props = elem (ElemName "hatchpath") props []

-- | Inserts an external raster image into an SVG document
image :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
image props = elem (ElemName "image") props []

-- | Creates a line element
line :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
line props = elem (ElemName "line") props []

-- | Defines a linear gradient for an SVG element
linearGradient :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
linearGradient props children = elem (ElemName "linearGradient") props children

-- | Defines a marker symbol to be used with a shape or line
marker :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
marker props children = elem (ElemName "marker") props children

-- | Defines a mask for an SVG element
mask :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
mask props children = elem (ElemName "mask") props children

-- | The metadata element provides a container for storing non-visual data.
metadata :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
metadata props = elem (ElemName "metadata") props []

-- | The missing-glyph element provides a fallback for glyphs that are not available in a font.
missingGlyph :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
missingGlyph props = elem (ElemName "missing-glyph") props []

-- | The mpath element provides a way to animate the motion of an object along a path.
mpath :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
mpath props children = elem (ElemName "mpath") props children

-- | The path element defines a path to be drawn.
path :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
path props = elem (ElemName "path") props []

-- | The pattern element defines a repeating pattern to be used as a fill or stroke.
pattern :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
pattern props children = elem (ElemName "pattern") props children

-- | The polygon element defines a closed shape consisting of a series of connected straight line segments.
polygon :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
polygon props = elem (ElemName "polygon") props []

-- | The polyline element defines an open shape consisting of a series of connected straight line segments.
polyline :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
polyline props = elem (ElemName "polyline") props []

-- | The radialGradient element defines a radial gradient to be used as a fill or stroke.
radialGradient :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
radialGradient props children = elem (ElemName "radialGradient") props children

-- | The rect element defines a rectangle to be drawn.
rect :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
rect props = elem (ElemName "rect") props []

-- | The script element contains script statements.
script :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
script props children = elem (ElemName "script") props children

-- | The set element provides a way to animate an attribute to a given value.
set :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
set props = elem (ElemName "set") props []

-- | The stop element defines a color or gradient stop in a gradient.
stop :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
stop props = elem (ElemName "stop") props []

-- | The style element contains style information for a document or part of a document.
style :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
style props children = elem (ElemName "style") props children

-- | The svg element is the root element of an SVG document.
svg :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
svg props children = elem (ElemName "svg") props children

-- | The switch element allows conditional processing of SVG elements.
switch :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
switch props children = elem (ElemName "switch") props children

-- | The symbol element defines a reusable graphic element.
symbol :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
symbol props children = elem (ElemName "symbol") props children

-- | The text element defines a block of text to be drawn.
text :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
text props children = elem (ElemName "text") props children

-- | The textPath element provides a way to align text along a path.
textPath :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
textPath props children = elem (ElemName "textPath") props children

-- | The title element provides a title for a document or part of a document.
title :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
title props children = elem (ElemName "title") props children

-- | The tref element provides a way to reference a portion of text in another element.
tref :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
tref props = elem (ElemName "tref") props []

-- | The tspan element provides a way to group a portion of text within a larger block of text.
tspan :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
tspan props children = elem (ElemName "tspan") props children

-- | The use element provides a way to reuse a single element and apply transformations to it.
use :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
use props children = elem (ElemName "use") props children

-- | The view element defines a rectangular portion of the SVG canvas that should be displayed.
view :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
view props children = elem (ElemName "view") props children

-- | Defines vertical kerning for a pair of glyphs in a font.
vkern :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
vkern props = elem (ElemName "vkern") props []

