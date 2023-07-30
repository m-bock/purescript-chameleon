module Chameleon.SVG.Elements where

import Chameleon.Class (class Html, ElemName(..), Prop, elem)

-- | Creates a hyperlink element
a :: forall html a. Html html => Array (Prop a) -> Array (html a) -> html a
a props children = elem (ElemName "a") props children

-- | Creates a hyperlink element [No Attributes]
a_ :: forall html a. Html html => Array (html a) -> html a
a_ children = elem (ElemName "a") [] children

-- | Defines an alternative representation of a glyph in a font
altGlyph :: forall html a. Html html => Array (Prop a) -> Array (html a) -> html a
altGlyph props children = elem (ElemName "altGlyph") props children

-- | Defines an alternative representation of a glyph in a font [No Attributes]
altGlyph_ :: forall html a. Html html => Array (html a) -> html a
altGlyph_ children = elem (ElemName "altGlyph") [] children

-- | Defines a set of glyph substitutions for an altGlyph element
altGlyphDef :: forall html a. Html html => Array (Prop a) -> Array (html a) -> html a
altGlyphDef props children = elem (ElemName "altGlyphDef") props children

-- | Defines a set of glyph substitutions for an altGlyph element [No Attributes]
altGlyphDef_ :: forall html a. Html html => Array (html a) -> html a
altGlyphDef_ children = elem (ElemName "altGlyphDef") [] children

-- | Defines a substitution for a specific glyph in an altGlyphDef element
altGlyphItem :: forall html a. Html html => Array (Prop a) -> Array (html a) -> html a
altGlyphItem props children = elem (ElemName "altGlyphItem") props children

-- | Defines a substitution for a specific glyph in an altGlyphDef element [No Attributes]
altGlyphItem_ :: forall html a. Html html => Array (html a) -> html a
altGlyphItem_ children = elem (ElemName "altGlyphItem") [] children

-- | Defines an animation on an SVG element
animate :: forall html a. Html html => Array (Prop a) -> html a
animate props = elem (ElemName "animate") props []

-- | Defines an animation on an SVG element [No Attributes]
animate_ :: forall html a. Html html => html a
animate_ = elem (ElemName "animate") [] []

-- | Defines an animated color change for an SVG element
animateColor :: forall html a. Html html => Array (Prop a) -> html a
animateColor props = elem (ElemName "animateColor") props []

-- | Defines an animated color change for an SVG element [No Attributes]
animateColor_ :: forall html a. Html html => html a
animateColor_ = elem (ElemName "animateColor") [] []

-- | Defines an animated motion path for an SVG element
animateMotion :: forall html a. Html html => Array (Prop a) -> html a
animateMotion props = elem (ElemName "animateMotion") props []

-- | Defines an animated motion path for an SVG element [No Attributes]
animateMotion_ :: forall html a. Html html => html a
animateMotion_ = elem (ElemName "animateMotion") [] []

-- | Defines an animated transformation on an SVG element
animateTransform :: forall html a. Html html => Array (Prop a) -> html a
animateTransform props = elem (ElemName "animateTransform") props []

-- | Defines an animated transformation on an SVG element [No Attributes]
animateTransform_ :: forall html a. Html html => html a
animateTransform_ = elem (ElemName "animateTransform") [] []

-- | Creates a circle element
circle :: forall html a. Html html => Array (Prop a) -> html a
circle props = elem (ElemName "circle") props []

-- | Creates a circle element [No Attributes]
circle_ :: forall html a. Html html => html a
circle_ = elem (ElemName "circle") [] []

-- | Defines a clipping path for an SVG element
clipPath :: forall html a. Html html => Array (Prop a) -> Array (html a) -> html a
clipPath props children = elem (ElemName "clipPath") props children

-- | Defines a clipping path for an SVG element [No Attributes]
clipPath_ :: forall html a. Html html => Array (html a) -> html a
clipPath_ children = elem (ElemName "clipPath") [] children

-- | Defines a color profile for an SVG document
colorProfile :: forall html a. Html html => Array (Prop a) -> Array (html a) -> html a
colorProfile props children = elem (ElemName "color-profile") props children

-- | Defines a color profile for an SVG document [No Attributes]
colorProfile_ :: forall html a. Html html => Array (html a) -> html a
colorProfile_ children = elem (ElemName "color-profile") [] children

-- | Defines a cursor for an SVG element
cursor :: forall html a. Html html => Array (Prop a) -> html a
cursor props = elem (ElemName "cursor") props []

-- | Defines a cursor for an SVG element [No Attributes]
cursor_ :: forall html a. Html html => html a
cursor_ = elem (ElemName "cursor") [] []

-- | Defines a set of reusable SVG elements
defs :: forall html a. Html html => Array (Prop a) -> Array (html a) -> html a
defs props children = elem (ElemName "defs") props children

-- | Defines a set of reusable SVG elements [No Attributes]
defs_ :: forall html a. Html html => Array (html a) -> html a
defs_ children = elem (ElemName "defs") [] children

-- | Defines a description of an SVG element
desc :: forall html a. Html html => Array (Prop a) -> Array (html a) -> html a
desc props children = elem (ElemName "desc") props children

-- | Defines a description of an SVG element [No Attributes]
desc_ :: forall html a. Html html => Array (html a) -> html a
desc_ children = elem (ElemName "desc") [] children

-- | Creates an ellipse element
ellipse :: forall html a. Html html => Array (Prop a) -> html a
ellipse props = elem (ElemName "ellipse") props []

-- | Creates an ellipse element [No Attributes]
ellipse_ :: forall html a. Html html => html a
ellipse_ = elem (ElemName "ellipse") [] []

-- | Defines a blend mode for two input images in a filter
feBlend :: forall html a. Html html => Array (Prop a) -> html a
feBlend props = elem (ElemName "feBlend") props []

-- | Defines a blend mode for two input images in a filter [No Attributes]
feBlend_ :: forall html a. Html html => html a
feBlend_ = elem (ElemName "feBlend") [] []

-- | Applies a color transformation to an input image
feColorMatrix :: forall html a. Html html => Array (Prop a) -> html a
feColorMatrix props = elem (ElemName "feColorMatrix") props []

-- | Applies a color transformation to an input image [No Attributes]
feColorMatrix_ :: forall html a. Html html => html a
feColorMatrix_ = elem (ElemName "feColorMatrix") [] []

-- | Allows for component-wise remapping of input image components
feComponentTransfer :: forall html a. Html html => Array (Prop a) -> html a
feComponentTransfer props = elem (ElemName "feComponentTransfer") props []

-- | Allows for component-wise remapping of input image components [No Attributes]
feComponentTransfer_ :: forall html a. Html html => html a
feComponentTransfer_ = elem (ElemName "feComponentTransfer") [] []

-- | Combines two input images using a composition operation
feComposite :: forall html a. Html html => Array (Prop a) -> html a
feComposite props = elem (ElemName "feComposite") props []

-- | Combines two input images using a composition operation [No Attributes]
feComposite_ :: forall html a. Html html => html a
feComposite_ = elem (ElemName "feComposite") [] []

-- | Applies a matrix convolution filter effect to an input image
feConvolveMatrix :: forall html a. Html html => Array (Prop a) -> html a
feConvolveMatrix props = elem (ElemName "feConvolveMatrix") props []

-- | Applies a matrix convolution filter effect to an input image [No Attributes]
feConvolveMatrix_ :: forall html a. Html html => html a
feConvolveMatrix_ = elem (ElemName "feConvolveMatrix") [] []

-- | Creates a lighting effect using the alpha channel as a bump map
feDiffuseLighting :: forall html a. Html html => Array (Prop a) -> html a
feDiffuseLighting props = elem (ElemName "feDiffuseLighting") props []

-- | Creates a lighting effect using the alpha channel as a bump map [No Attributes]
feDiffuseLighting_ :: forall html a. Html html => html a
feDiffuseLighting_ = elem (ElemName "feDiffuseLighting") [] []

-- | Displaces the pixels in an input image according to a displacement map image
feDisplacementMap :: forall html a. Html html => Array (Prop a) -> html a
feDisplacementMap props = elem (ElemName "feDisplacementMap") props []

-- | Displaces the pixels in an input image according to a displacement map image [No Attributes]
feDisplacementMap_ :: forall html a. Html html => html a
feDisplacementMap_ = elem (ElemName "feDisplacementMap") [] []

-- | Defines a distant light source for use in a lighting filter effect
feDistantLight :: forall html a. Html html => Array (Prop a) -> html a
feDistantLight props = elem (ElemName "feDistantLight") props []

-- | Defines a distant light source for use in a lighting filter effect [No Attributes]
feDistantLight_ :: forall html a. Html html => html a
feDistantLight_ = elem (ElemName "feDistantLight") [] []

-- | Fills the filter subregion with a solid color
feFlood :: forall html a. Html html => Array (Prop a) -> html a
feFlood props = elem (ElemName "feFlood") props []

-- | Fills the filter subregion with a solid color [No Attributes]
feFlood_ :: forall html a. Html html => html a
feFlood_ = elem (ElemName "feFlood") [] []

-- | Defines the alpha transfer function for a component in a filter
feFuncA :: forall html a. Html html => Array (Prop a) -> html a
feFuncA props = elem (ElemName "feFuncA") props []

-- | Defines the alpha transfer function for a component in a filter [No Attributes]
feFuncA_ :: forall html a. Html html => html a
feFuncA_ = elem (ElemName "feFuncA") [] []

-- | Defines the transfer function for a component
feFuncB :: forall html a. Html html => Array (Prop a) -> html a
feFuncB props = elem (ElemName "feFuncB") props []

-- | Defines the transfer function for a component [No Attributes]
feFuncB_ :: forall html a. Html html => html a
feFuncB_ = elem (ElemName "feFuncB") [] []

-- | Defines the transfer function for a component
feFuncG :: forall html a. Html html => Array (Prop a) -> html a
feFuncG props = elem (ElemName "feFuncG") props []

-- | Defines the transfer function for a component [No Attributes]
feFuncG_ :: forall html a. Html html => html a
feFuncG_ = elem (ElemName "feFuncG") [] []

-- | Defines the transfer function for a component
feFuncR :: forall html a. Html html => Array (Prop a) -> html a
feFuncR props = elem (ElemName "feFuncR") props []

-- | Defines the transfer function for a component [No Attributes]
feFuncR_ :: forall html a. Html html => html a
feFuncR_ = elem (ElemName "feFuncR") [] []

-- | Applies a Gaussian blur to an input image
feGaussianBlur :: forall html a. Html html => Array (Prop a) -> html a
feGaussianBlur props = elem (ElemName "feGaussianBlur") props []

-- | Applies a Gaussian blur to an input image [No Attributes]
feGaussianBlur_ :: forall html a. Html html => html a
feGaussianBlur_ = elem (ElemName "feGaussianBlur") [] []

-- | Inserts an external image into an SVG element
feImage :: forall html a. Html html => Array (Prop a) -> html a
feImage props = elem (ElemName "feImage") props []

-- | Inserts an external image into an SVG element [No Attributes]
feImage_ :: forall html a. Html html => html a
feImage_ = elem (ElemName "feImage") [] []

-- | Merges multiple input images together
feMerge :: forall html a. Html html => Array (Prop a) -> Array (html a) -> html a
feMerge props children = elem (ElemName "feMerge") props children

-- | Merges multiple input images together [No Attributes]
feMerge_ :: forall html a. Html html => Array (html a) -> html a
feMerge_ children = elem (ElemName "feMerge") [] children

-- | Specifies an input image for use with a feMerge filter
feMergeNode :: forall html a. Html html => Array (Prop a) -> html a
feMergeNode props = elem (ElemName "feMergeNode") props []

-- | Specifies an input image for use with a feMerge filter [No Attributes]
feMergeNode_ :: forall html a. Html html => html a
feMergeNode_ = elem (ElemName "feMergeNode") [] []

-- | Expands or contracts the shape of an input image
feMorphology :: forall html a. Html html => Array (Prop a) -> html a
feMorphology props = elem (ElemName "feMorphology") props []

-- | Expands or contracts the shape of an input image [No Attributes]
feMorphology_ :: forall html a. Html html => html a
feMorphology_ = elem (ElemName "feMorphology") [] []

-- | Offsets the position of an input image
feOffset :: forall html a. Html html => Array (Prop a) -> html a
feOffset props = elem (ElemName "feOffset") props []

-- | Offsets the position of an input image [No Attributes]
feOffset_ :: forall html a. Html html => html a
feOffset_ = elem (ElemName "feOffset") [] []

-- | Defines a point light source for use in a lighting filter effect
fePointLight :: forall html a. Html html => Array (Prop a) -> html a
fePointLight props = elem (ElemName "fePointLight") props []

-- | Defines a point light source for use in a lighting filter effect [No Attributes]
fePointLight_ :: forall html a. Html html => html a
fePointLight_ = elem (ElemName "fePointLight") [] []

-- | Creates a specular lighting effect using the alpha channel as a bump map
feSpecularLighting :: forall html a. Html html => Array (Prop a) -> html a
feSpecularLighting props = elem (ElemName "feSpecularLighting") props []

-- | Creates a specular lighting effect using the alpha channel as a bump map [No Attributes]
feSpecularLighting_ :: forall html a. Html html => html a
feSpecularLighting_ = elem (ElemName "feSpecularLighting") [] []

-- | Defines a spotlight source for use in a lighting filter effect
feSpotLight :: forall html a. Html html => Array (Prop a) -> html a
feSpotLight props = elem (ElemName "feSpotLight") props []

-- | Defines a spotlight source for use in a lighting filter effect [No Attributes]
feSpotLight_ :: forall html a. Html html => html a
feSpotLight_ = elem (ElemName "feSpotLight") [] []

-- | Repeats an input image to fill a filter subregion
feTile :: forall html a. Html html => Array (Prop a) -> html a
feTile props = elem (ElemName "feTile") props []

-- | Repeats an input image to fill a filter subregion [No Attributes]
feTile_ :: forall html a. Html html => html a
feTile_ = elem (ElemName "feTile") [] []

-- | Generates a Perlin noise or turbulence pattern
feTurbulence :: forall html a. Html html => Array (Prop a) -> html a
feTurbulence props = elem (ElemName "feTurbulence") props []

-- | Generates a Perlin noise or turbulence pattern [No Attributes]
feTurbulence_ :: forall html a. Html html => html a
feTurbulence_ = elem (ElemName "feTurbulence") [] []

-- | Defines a filter effect
filter :: forall html a. Html html => Array (Prop a) -> Array (html a) -> html a
filter props children = elem (ElemName "filter") props children

-- | Defines a filter effect [No Attributes]
filter_ :: forall html a. Html html => Array (html a) -> html a
filter_ children = elem (ElemName "filter") [] children

-- | Inserts a foreign object into an SVG document
foreignObject :: forall html a. Html html => Array (Prop a) -> Array (html a) -> html a
foreignObject props children = elem (ElemName "foreignObject") props children

-- | Inserts a foreign object into an SVG document [No Attributes]
foreignObject_ :: forall html a. Html html => Array (html a) -> html a
foreignObject_ children = elem (ElemName "foreignObject") [] children

-- | Creates a group of SVG elements
g :: forall html a. Html html => Array (Prop a) -> Array (html a) -> html a
g props children = elem (ElemName "g") props children

-- | Creates a group of SVG elements [No Attributes]
g_ :: forall html a. Html html => Array (html a) -> html a
g_ children = elem (ElemName "g") [] children

-- | Defines a single glyph in an SVG font
glyph :: forall html a. Html html => Array (Prop a) -> Array (html a) -> html a
glyph props children = elem (ElemName "glyph") props children

-- | Defines a single glyph in an SVG font [No Attributes]
glyph_ :: forall html a. Html html => Array (html a) -> html a
glyph_ children = elem (ElemName "glyph") [] children

-- | References a glyph in a font
glyphRef :: forall html a. Html html => Array (Prop a) -> html a
glyphRef props = elem (ElemName "glyphRef") props []

-- | References a glyph in a font [No Attributes]
glyphRef_ :: forall html a. Html html => html a
glyphRef_ = elem (ElemName "glyphRef") [] []

-- | Defines a hatching pattern
hatch :: forall html a. Html html => Array (Prop a) -> Array (html a) -> html a
hatch props children = elem (ElemName "hatch") props children

-- | Defines a hatching pattern [No Attributes]
hatch_ :: forall html a. Html html => Array (html a) -> html a
hatch_ children = elem (ElemName "hatch") [] children

-- | Defines the path of a hatching pattern
hatchpath :: forall html a. Html html => Array (Prop a) -> html a
hatchpath props = elem (ElemName "hatchpath") props []

-- | Defines the path of a hatching pattern [No Attributes]
hatchpath_ :: forall html a. Html html => html a
hatchpath_ = elem (ElemName "hatchpath") [] []

-- | Inserts an external raster image into an SVG document
image :: forall html a. Html html => Array (Prop a) -> html a
image props = elem (ElemName "image") props []

-- | Inserts an external raster image into an SVG document [No Attributes]
image_ :: forall html a. Html html => html a
image_ = elem (ElemName "image") [] []

-- | Creates a line element
line :: forall html a. Html html => Array (Prop a) -> html a
line props = elem (ElemName "line") props []

-- | Creates a line element [No Attributes]
line_ :: forall html a. Html html => html a
line_ = elem (ElemName "line") [] []

-- | Defines a linear gradient for an SVG element
linearGradient :: forall html a. Html html => Array (Prop a) -> Array (html a) -> html a
linearGradient props children = elem (ElemName "linearGradient") props children

-- | Defines a linear gradient for an SVG element [No Attributes]
linearGradient_ :: forall html a. Html html => Array (html a) -> html a
linearGradient_ children = elem (ElemName "linearGradient") [] children

-- | Defines a marker symbol to be used with a shape or line
marker :: forall html a. Html html => Array (Prop a) -> Array (html a) -> html a
marker props children = elem (ElemName "marker") props children

-- | Defines a marker symbol to be used with a shape or line [No Attributes]
marker_ :: forall html a. Html html => Array (html a) -> html a
marker_ children = elem (ElemName "marker") [] children

-- | Defines a mask for an SVG element
mask :: forall html a. Html html => Array (Prop a) -> Array (html a) -> html a
mask props children = elem (ElemName "mask") props children

-- | Defines a mask for an SVG element [No Attributes]
mask_ :: forall html a. Html html => Array (html a) -> html a
mask_ children = elem (ElemName "mask") [] children

-- | The metadata element provides a container for storing non-visual data.
metadata :: forall html a. Html html => Array (Prop a) -> html a
metadata props = elem (ElemName "metadata") props []

-- | The metadata element provides a container for storing non-visual data. [No Attributes]
metadata_ :: forall html a. Html html => html a
metadata_ = elem (ElemName "metadata") [] []

-- | The missing-glyph element provides a fallback for glyphs that are not available in a font.
missingGlyph :: forall html a. Html html => Array (Prop a) -> html a
missingGlyph props = elem (ElemName "missing-glyph") props []

-- | The missing-glyph element provides a fallback for glyphs that are not available in a font. [No Attributes]
missingGlyph_ :: forall html a. Html html => html a
missingGlyph_ = elem (ElemName "missing-glyph") [] []

-- | The mpath element provides a way to animate the motion of an object along a path.
mpath :: forall html a. Html html => Array (Prop a) -> Array (html a) -> html a
mpath props children = elem (ElemName "mpath") props children

-- | The mpath element provides a way to animate the motion of an object along a path. [No Attributes]
mpath_ :: forall html a. Html html => Array (html a) -> html a
mpath_ children = elem (ElemName "mpath") [] children

-- | The path element defines a path to be drawn.
path :: forall html a. Html html => Array (Prop a) -> html a
path props = elem (ElemName "path") props []

-- | The path element defines a path to be drawn. [No Attributes]
path_ :: forall html a. Html html => html a
path_ = elem (ElemName "path") [] []

-- | The pattern element defines a repeating pattern to be used as a fill or stroke.
pattern :: forall html a. Html html => Array (Prop a) -> Array (html a) -> html a
pattern props children = elem (ElemName "pattern") props children

-- | The pattern element defines a repeating pattern to be used as a fill or stroke. [No Attributes]
pattern_ :: forall html a. Html html => Array (html a) -> html a
pattern_ children = elem (ElemName "pattern") [] children

-- | The polygon element defines a closed shape consisting of a series of connected straight line segments.
polygon :: forall html a. Html html => Array (Prop a) -> html a
polygon props = elem (ElemName "polygon") props []

-- | The polygon element defines a closed shape consisting of a series of connected straight line segments. [No Attributes]
polygon_ :: forall html a. Html html => html a
polygon_ = elem (ElemName "polygon") [] []

-- | The polyline element defines an open shape consisting of a series of connected straight line segments.
polyline :: forall html a. Html html => Array (Prop a) -> html a
polyline props = elem (ElemName "polyline") props []

-- | The polyline element defines an open shape consisting of a series of connected straight line segments. [No Attributes]
polyline_ :: forall html a. Html html => html a
polyline_ = elem (ElemName "polyline") [] []

-- | The radialGradient element defines a radial gradient to be used as a fill or stroke.
radialGradient :: forall html a. Html html => Array (Prop a) -> Array (html a) -> html a
radialGradient props children = elem (ElemName "radialGradient") props children

-- | The radialGradient element defines a radial gradient to be used as a fill or stroke. [No Attributes]
radialGradient_ :: forall html a. Html html => Array (html a) -> html a
radialGradient_ children = elem (ElemName "radialGradient") [] children

-- | The rect element defines a rectangle to be drawn.
rect :: forall html a. Html html => Array (Prop a) -> html a
rect props = elem (ElemName "rect") props []

-- | The rect element defines a rectangle to be drawn. [No Attributes]
rect_ :: forall html a. Html html => html a
rect_ = elem (ElemName "rect") [] []

-- | The script element contains script statements.
script :: forall html a. Html html => Array (Prop a) -> Array (html a) -> html a
script props children = elem (ElemName "script") props children

-- | The script element contains script statements. [No Attributes]
script_ :: forall html a. Html html => Array (html a) -> html a
script_ children = elem (ElemName "script") [] children

-- | The set element provides a way to animate an attribute to a given value.
set :: forall html a. Html html => Array (Prop a) -> html a
set props = elem (ElemName "set") props []

-- | The set element provides a way to animate an attribute to a given value. [No Attributes]
set_ :: forall html a. Html html => html a
set_ = elem (ElemName "set") [] []

-- | The stop element defines a color or gradient stop in a gradient.
stop :: forall html a. Html html => Array (Prop a) -> html a
stop props = elem (ElemName "stop") props []

-- | The stop element defines a color or gradient stop in a gradient. [No Attributes]
stop_ :: forall html a. Html html => html a
stop_ = elem (ElemName "stop") [] []

-- | The style element contains style information for a document or part of a document.
style :: forall html a. Html html => Array (Prop a) -> Array (html a) -> html a
style props children = elem (ElemName "style") props children

-- | The style element contains style information for a document or part of a document. [No Attributes]
style_ :: forall html a. Html html => Array (html a) -> html a
style_ children = elem (ElemName "style") [] children

-- | The svg element is the root element of an SVG document.
svg :: forall html a. Html html => Array (Prop a) -> Array (html a) -> html a
svg props children = elem (ElemName "svg") props children

-- | The svg element is the root element of an SVG document. [No Attributes]
svg_ :: forall html a. Html html => Array (html a) -> html a
svg_ children = elem (ElemName "svg") [] children

-- | The switch element allows conditional processing of SVG elements.
switch :: forall html a. Html html => Array (Prop a) -> Array (html a) -> html a
switch props children = elem (ElemName "switch") props children

-- | The switch element allows conditional processing of SVG elements. [No Attributes]
switch_ :: forall html a. Html html => Array (html a) -> html a
switch_ children = elem (ElemName "switch") [] children

-- | The symbol element defines a reusable graphic element.
symbol :: forall html a. Html html => Array (Prop a) -> Array (html a) -> html a
symbol props children = elem (ElemName "symbol") props children

-- | The symbol element defines a reusable graphic element. [No Attributes]
symbol_ :: forall html a. Html html => Array (html a) -> html a
symbol_ children = elem (ElemName "symbol") [] children

-- | The text element defines a block of text to be drawn.
text :: forall html a. Html html => Array (Prop a) -> Array (html a) -> html a
text props children = elem (ElemName "text") props children

-- | The text element defines a block of text to be drawn. [No Attributes]
text_ :: forall html a. Html html => Array (html a) -> html a
text_ children = elem (ElemName "text") [] children

-- | The textPath element provides a way to align text along a path.
textPath :: forall html a. Html html => Array (Prop a) -> Array (html a) -> html a
textPath props children = elem (ElemName "textPath") props children

-- | The textPath element provides a way to align text along a path. [No Attributes]
textPath_ :: forall html a. Html html => Array (html a) -> html a
textPath_ children = elem (ElemName "textPath") [] children

-- | The title element provides a title for a document or part of a document.
title :: forall html a. Html html => Array (Prop a) -> Array (html a) -> html a
title props children = elem (ElemName "title") props children

-- | The title element provides a title for a document or part of a document. [No Attributes]
title_ :: forall html a. Html html => Array (html a) -> html a
title_ children = elem (ElemName "title") [] children

-- | The tref element provides a way to reference a portion of text in another element.
tref :: forall html a. Html html => Array (Prop a) -> html a
tref props = elem (ElemName "tref") props []

-- | The tref element provides a way to reference a portion of text in another element. [No Attributes]
tref_ :: forall html a. Html html => html a
tref_ = elem (ElemName "tref") [] []

-- | The tspan element provides a way to group a portion of text within a larger block of text.
tspan :: forall html a. Html html => Array (Prop a) -> Array (html a) -> html a
tspan props children = elem (ElemName "tspan") props children

-- | The tspan element provides a way to group a portion of text within a larger block of text. [No Attributes]
tspan_ :: forall html a. Html html => Array (html a) -> html a
tspan_ children = elem (ElemName "tspan") [] children

-- | The use element provides a way to reuse a single element and apply transformations to it.
use :: forall html a. Html html => Array (Prop a) -> Array (html a) -> html a
use props children = elem (ElemName "use") props children

-- | The use element provides a way to reuse a single element and apply transformations to it. [No Attributes]
use_ :: forall html a. Html html => Array (html a) -> html a
use_ children = elem (ElemName "use") [] children

-- | The view element defines a rectangular portion of the SVG canvas that should be displayed.
view :: forall html a. Html html => Array (Prop a) -> Array (html a) -> html a
view props children = elem (ElemName "view") props children

-- | The view element defines a rectangular portion of the SVG canvas that should be displayed. [No Attributes]
view_ :: forall html a. Html html => Array (html a) -> html a
view_ children = elem (ElemName "view") [] children

-- | Defines vertical kerning for a pair of glyphs in a font.
vkern :: forall html a. Html html => Array (Prop a) -> html a
vkern props = elem (ElemName "vkern") props []

-- | Defines vertical kerning for a pair of glyphs in a font. [No Attributes]
vkern_ :: forall html a. Html html => html a
vkern_ = elem (ElemName "vkern") [] []

