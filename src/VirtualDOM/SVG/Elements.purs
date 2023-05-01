module VirtualDOM.SVG.Elements where

import VirtualDOM (class Html, ElemName(..), Prop, elem)

-- | Creates a hyperlink element
a :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
a props children = elem (ElemName "a") props children

-- | Creates a hyperlink element [No Attributes]
a_ :: forall html ctx a. Html html => Array (html ctx a) -> html ctx a
a_ children = elem (ElemName "a") [] children

-- | Defines an alternative representation of a glyph in a font
altGlyph :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
altGlyph props children = elem (ElemName "altGlyph") props children

-- | Defines an alternative representation of a glyph in a font [No Attributes]
altGlyph_ :: forall html ctx a. Html html => Array (html ctx a) -> html ctx a
altGlyph_ children = elem (ElemName "altGlyph") [] children

-- | Defines a set of glyph substitutions for an altGlyph element
altGlyphDef :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
altGlyphDef props children = elem (ElemName "altGlyphDef") props children

-- | Defines a set of glyph substitutions for an altGlyph element [No Attributes]
altGlyphDef_ :: forall html ctx a. Html html => Array (html ctx a) -> html ctx a
altGlyphDef_ children = elem (ElemName "altGlyphDef") [] children

-- | Defines a substitution for a specific glyph in an altGlyphDef element
altGlyphItem :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
altGlyphItem props children = elem (ElemName "altGlyphItem") props children

-- | Defines a substitution for a specific glyph in an altGlyphDef element [No Attributes]
altGlyphItem_ :: forall html ctx a. Html html => Array (html ctx a) -> html ctx a
altGlyphItem_ children = elem (ElemName "altGlyphItem") [] children

-- | Defines an animation on an SVG element
animate :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
animate props = elem (ElemName "animate") props []

-- | Defines an animation on an SVG element [No Attributes]
animate_ :: forall html ctx a. Html html => html ctx a
animate_ = elem (ElemName "animate") [] []

-- | Defines an animated color change for an SVG element
animateColor :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
animateColor props = elem (ElemName "animateColor") props []

-- | Defines an animated color change for an SVG element [No Attributes]
animateColor_ :: forall html ctx a. Html html => html ctx a
animateColor_ = elem (ElemName "animateColor") [] []

-- | Defines an animated motion path for an SVG element
animateMotion :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
animateMotion props = elem (ElemName "animateMotion") props []

-- | Defines an animated motion path for an SVG element [No Attributes]
animateMotion_ :: forall html ctx a. Html html => html ctx a
animateMotion_ = elem (ElemName "animateMotion") [] []

-- | Defines an animated transformation on an SVG element
animateTransform :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
animateTransform props = elem (ElemName "animateTransform") props []

-- | Defines an animated transformation on an SVG element [No Attributes]
animateTransform_ :: forall html ctx a. Html html => html ctx a
animateTransform_ = elem (ElemName "animateTransform") [] []

-- | Creates a circle element
circle :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
circle props = elem (ElemName "circle") props []

-- | Creates a circle element [No Attributes]
circle_ :: forall html ctx a. Html html => html ctx a
circle_ = elem (ElemName "circle") [] []

-- | Defines a clipping path for an SVG element
clipPath :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
clipPath props children = elem (ElemName "clipPath") props children

-- | Defines a clipping path for an SVG element [No Attributes]
clipPath_ :: forall html ctx a. Html html => Array (html ctx a) -> html ctx a
clipPath_ children = elem (ElemName "clipPath") [] children

-- | Defines a color profile for an SVG document
colorProfile :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
colorProfile props children = elem (ElemName "color-profile") props children

-- | Defines a color profile for an SVG document [No Attributes]
colorProfile_ :: forall html ctx a. Html html => Array (html ctx a) -> html ctx a
colorProfile_ children = elem (ElemName "color-profile") [] children

-- | Defines a cursor for an SVG element
cursor :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
cursor props = elem (ElemName "cursor") props []

-- | Defines a cursor for an SVG element [No Attributes]
cursor_ :: forall html ctx a. Html html => html ctx a
cursor_ = elem (ElemName "cursor") [] []

-- | Defines a set of reusable SVG elements
defs :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
defs props children = elem (ElemName "defs") props children

-- | Defines a set of reusable SVG elements [No Attributes]
defs_ :: forall html ctx a. Html html => Array (html ctx a) -> html ctx a
defs_ children = elem (ElemName "defs") [] children

-- | Defines a description of an SVG element
desc :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
desc props children = elem (ElemName "desc") props children

-- | Defines a description of an SVG element [No Attributes]
desc_ :: forall html ctx a. Html html => Array (html ctx a) -> html ctx a
desc_ children = elem (ElemName "desc") [] children

-- | Creates an ellipse element
ellipse :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
ellipse props = elem (ElemName "ellipse") props []

-- | Creates an ellipse element [No Attributes]
ellipse_ :: forall html ctx a. Html html => html ctx a
ellipse_ = elem (ElemName "ellipse") [] []

-- | Defines a blend mode for two input images in a filter
feBlend :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feBlend props = elem (ElemName "feBlend") props []

-- | Defines a blend mode for two input images in a filter [No Attributes]
feBlend_ :: forall html ctx a. Html html => html ctx a
feBlend_ = elem (ElemName "feBlend") [] []

-- | Applies a color transformation to an input image
feColorMatrix :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feColorMatrix props = elem (ElemName "feColorMatrix") props []

-- | Applies a color transformation to an input image [No Attributes]
feColorMatrix_ :: forall html ctx a. Html html => html ctx a
feColorMatrix_ = elem (ElemName "feColorMatrix") [] []

-- | Allows for component-wise remapping of input image components
feComponentTransfer :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feComponentTransfer props = elem (ElemName "feComponentTransfer") props []

-- | Allows for component-wise remapping of input image components [No Attributes]
feComponentTransfer_ :: forall html ctx a. Html html => html ctx a
feComponentTransfer_ = elem (ElemName "feComponentTransfer") [] []

-- | Combines two input images using a composition operation
feComposite :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feComposite props = elem (ElemName "feComposite") props []

-- | Combines two input images using a composition operation [No Attributes]
feComposite_ :: forall html ctx a. Html html => html ctx a
feComposite_ = elem (ElemName "feComposite") [] []

-- | Applies a matrix convolution filter effect to an input image
feConvolveMatrix :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feConvolveMatrix props = elem (ElemName "feConvolveMatrix") props []

-- | Applies a matrix convolution filter effect to an input image [No Attributes]
feConvolveMatrix_ :: forall html ctx a. Html html => html ctx a
feConvolveMatrix_ = elem (ElemName "feConvolveMatrix") [] []

-- | Creates a lighting effect using the alpha channel as a bump map
feDiffuseLighting :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feDiffuseLighting props = elem (ElemName "feDiffuseLighting") props []

-- | Creates a lighting effect using the alpha channel as a bump map [No Attributes]
feDiffuseLighting_ :: forall html ctx a. Html html => html ctx a
feDiffuseLighting_ = elem (ElemName "feDiffuseLighting") [] []

-- | Displaces the pixels in an input image according to a displacement map image
feDisplacementMap :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feDisplacementMap props = elem (ElemName "feDisplacementMap") props []

-- | Displaces the pixels in an input image according to a displacement map image [No Attributes]
feDisplacementMap_ :: forall html ctx a. Html html => html ctx a
feDisplacementMap_ = elem (ElemName "feDisplacementMap") [] []

-- | Defines a distant light source for use in a lighting filter effect
feDistantLight :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feDistantLight props = elem (ElemName "feDistantLight") props []

-- | Defines a distant light source for use in a lighting filter effect [No Attributes]
feDistantLight_ :: forall html ctx a. Html html => html ctx a
feDistantLight_ = elem (ElemName "feDistantLight") [] []

-- | Fills the filter subregion with a solid color
feFlood :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feFlood props = elem (ElemName "feFlood") props []

-- | Fills the filter subregion with a solid color [No Attributes]
feFlood_ :: forall html ctx a. Html html => html ctx a
feFlood_ = elem (ElemName "feFlood") [] []

-- | Defines the alpha transfer function for a component in a filter
feFuncA :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feFuncA props = elem (ElemName "feFuncA") props []

-- | Defines the alpha transfer function for a component in a filter [No Attributes]
feFuncA_ :: forall html ctx a. Html html => html ctx a
feFuncA_ = elem (ElemName "feFuncA") [] []

-- | Defines the transfer function for a component
feFuncB :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feFuncB props = elem (ElemName "feFuncB") props []

-- | Defines the transfer function for a component [No Attributes]
feFuncB_ :: forall html ctx a. Html html => html ctx a
feFuncB_ = elem (ElemName "feFuncB") [] []

-- | Defines the transfer function for a component
feFuncG :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feFuncG props = elem (ElemName "feFuncG") props []

-- | Defines the transfer function for a component [No Attributes]
feFuncG_ :: forall html ctx a. Html html => html ctx a
feFuncG_ = elem (ElemName "feFuncG") [] []

-- | Defines the transfer function for a component
feFuncR :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feFuncR props = elem (ElemName "feFuncR") props []

-- | Defines the transfer function for a component [No Attributes]
feFuncR_ :: forall html ctx a. Html html => html ctx a
feFuncR_ = elem (ElemName "feFuncR") [] []

-- | Applies a Gaussian blur to an input image
feGaussianBlur :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feGaussianBlur props = elem (ElemName "feGaussianBlur") props []

-- | Applies a Gaussian blur to an input image [No Attributes]
feGaussianBlur_ :: forall html ctx a. Html html => html ctx a
feGaussianBlur_ = elem (ElemName "feGaussianBlur") [] []

-- | Inserts an external image into an SVG element
feImage :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feImage props = elem (ElemName "feImage") props []

-- | Inserts an external image into an SVG element [No Attributes]
feImage_ :: forall html ctx a. Html html => html ctx a
feImage_ = elem (ElemName "feImage") [] []

-- | Merges multiple input images together
feMerge :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
feMerge props children = elem (ElemName "feMerge") props children

-- | Merges multiple input images together [No Attributes]
feMerge_ :: forall html ctx a. Html html => Array (html ctx a) -> html ctx a
feMerge_ children = elem (ElemName "feMerge") [] children

-- | Specifies an input image for use with a feMerge filter
feMergeNode :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feMergeNode props = elem (ElemName "feMergeNode") props []

-- | Specifies an input image for use with a feMerge filter [No Attributes]
feMergeNode_ :: forall html ctx a. Html html => html ctx a
feMergeNode_ = elem (ElemName "feMergeNode") [] []

-- | Expands or contracts the shape of an input image
feMorphology :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feMorphology props = elem (ElemName "feMorphology") props []

-- | Expands or contracts the shape of an input image [No Attributes]
feMorphology_ :: forall html ctx a. Html html => html ctx a
feMorphology_ = elem (ElemName "feMorphology") [] []

-- | Offsets the position of an input image
feOffset :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feOffset props = elem (ElemName "feOffset") props []

-- | Offsets the position of an input image [No Attributes]
feOffset_ :: forall html ctx a. Html html => html ctx a
feOffset_ = elem (ElemName "feOffset") [] []

-- | Defines a point light source for use in a lighting filter effect
fePointLight :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
fePointLight props = elem (ElemName "fePointLight") props []

-- | Defines a point light source for use in a lighting filter effect [No Attributes]
fePointLight_ :: forall html ctx a. Html html => html ctx a
fePointLight_ = elem (ElemName "fePointLight") [] []

-- | Creates a specular lighting effect using the alpha channel as a bump map
feSpecularLighting :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feSpecularLighting props = elem (ElemName "feSpecularLighting") props []

-- | Creates a specular lighting effect using the alpha channel as a bump map [No Attributes]
feSpecularLighting_ :: forall html ctx a. Html html => html ctx a
feSpecularLighting_ = elem (ElemName "feSpecularLighting") [] []

-- | Defines a spotlight source for use in a lighting filter effect
feSpotLight :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feSpotLight props = elem (ElemName "feSpotLight") props []

-- | Defines a spotlight source for use in a lighting filter effect [No Attributes]
feSpotLight_ :: forall html ctx a. Html html => html ctx a
feSpotLight_ = elem (ElemName "feSpotLight") [] []

-- | Repeats an input image to fill a filter subregion
feTile :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feTile props = elem (ElemName "feTile") props []

-- | Repeats an input image to fill a filter subregion [No Attributes]
feTile_ :: forall html ctx a. Html html => html ctx a
feTile_ = elem (ElemName "feTile") [] []

-- | Generates a Perlin noise or turbulence pattern
feTurbulence :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
feTurbulence props = elem (ElemName "feTurbulence") props []

-- | Generates a Perlin noise or turbulence pattern [No Attributes]
feTurbulence_ :: forall html ctx a. Html html => html ctx a
feTurbulence_ = elem (ElemName "feTurbulence") [] []

-- | Defines a filter effect
filter :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
filter props children = elem (ElemName "filter") props children

-- | Defines a filter effect [No Attributes]
filter_ :: forall html ctx a. Html html => Array (html ctx a) -> html ctx a
filter_ children = elem (ElemName "filter") [] children

-- | Inserts a foreign object into an SVG document
foreignObject :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
foreignObject props children = elem (ElemName "foreignObject") props children

-- | Inserts a foreign object into an SVG document [No Attributes]
foreignObject_ :: forall html ctx a. Html html => Array (html ctx a) -> html ctx a
foreignObject_ children = elem (ElemName "foreignObject") [] children

-- | Creates a group of SVG elements
g :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
g props children = elem (ElemName "g") props children

-- | Creates a group of SVG elements [No Attributes]
g_ :: forall html ctx a. Html html => Array (html ctx a) -> html ctx a
g_ children = elem (ElemName "g") [] children

-- | Defines a single glyph in an SVG font
glyph :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
glyph props children = elem (ElemName "glyph") props children

-- | Defines a single glyph in an SVG font [No Attributes]
glyph_ :: forall html ctx a. Html html => Array (html ctx a) -> html ctx a
glyph_ children = elem (ElemName "glyph") [] children

-- | References a glyph in a font
glyphRef :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
glyphRef props = elem (ElemName "glyphRef") props []

-- | References a glyph in a font [No Attributes]
glyphRef_ :: forall html ctx a. Html html => html ctx a
glyphRef_ = elem (ElemName "glyphRef") [] []

-- | Defines a hatching pattern
hatch :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
hatch props children = elem (ElemName "hatch") props children

-- | Defines a hatching pattern [No Attributes]
hatch_ :: forall html ctx a. Html html => Array (html ctx a) -> html ctx a
hatch_ children = elem (ElemName "hatch") [] children

-- | Defines the path of a hatching pattern
hatchpath :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
hatchpath props = elem (ElemName "hatchpath") props []

-- | Defines the path of a hatching pattern [No Attributes]
hatchpath_ :: forall html ctx a. Html html => html ctx a
hatchpath_ = elem (ElemName "hatchpath") [] []

-- | Inserts an external raster image into an SVG document
image :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
image props = elem (ElemName "image") props []

-- | Inserts an external raster image into an SVG document [No Attributes]
image_ :: forall html ctx a. Html html => html ctx a
image_ = elem (ElemName "image") [] []

-- | Creates a line element
line :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
line props = elem (ElemName "line") props []

-- | Creates a line element [No Attributes]
line_ :: forall html ctx a. Html html => html ctx a
line_ = elem (ElemName "line") [] []

-- | Defines a linear gradient for an SVG element
linearGradient :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
linearGradient props children = elem (ElemName "linearGradient") props children

-- | Defines a linear gradient for an SVG element [No Attributes]
linearGradient_ :: forall html ctx a. Html html => Array (html ctx a) -> html ctx a
linearGradient_ children = elem (ElemName "linearGradient") [] children

-- | Defines a marker symbol to be used with a shape or line
marker :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
marker props children = elem (ElemName "marker") props children

-- | Defines a marker symbol to be used with a shape or line [No Attributes]
marker_ :: forall html ctx a. Html html => Array (html ctx a) -> html ctx a
marker_ children = elem (ElemName "marker") [] children

-- | Defines a mask for an SVG element
mask :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
mask props children = elem (ElemName "mask") props children

-- | Defines a mask for an SVG element [No Attributes]
mask_ :: forall html ctx a. Html html => Array (html ctx a) -> html ctx a
mask_ children = elem (ElemName "mask") [] children

-- | The metadata element provides a container for storing non-visual data.
metadata :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
metadata props = elem (ElemName "metadata") props []

-- | The metadata element provides a container for storing non-visual data. [No Attributes]
metadata_ :: forall html ctx a. Html html => html ctx a
metadata_ = elem (ElemName "metadata") [] []

-- | The missing-glyph element provides a fallback for glyphs that are not available in a font.
missingGlyph :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
missingGlyph props = elem (ElemName "missing-glyph") props []

-- | The missing-glyph element provides a fallback for glyphs that are not available in a font. [No Attributes]
missingGlyph_ :: forall html ctx a. Html html => html ctx a
missingGlyph_ = elem (ElemName "missing-glyph") [] []

-- | The mpath element provides a way to animate the motion of an object along a path.
mpath :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
mpath props children = elem (ElemName "mpath") props children

-- | The mpath element provides a way to animate the motion of an object along a path. [No Attributes]
mpath_ :: forall html ctx a. Html html => Array (html ctx a) -> html ctx a
mpath_ children = elem (ElemName "mpath") [] children

-- | The path element defines a path to be drawn.
path :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
path props = elem (ElemName "path") props []

-- | The path element defines a path to be drawn. [No Attributes]
path_ :: forall html ctx a. Html html => html ctx a
path_ = elem (ElemName "path") [] []

-- | The pattern element defines a repeating pattern to be used as a fill or stroke.
pattern :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
pattern props children = elem (ElemName "pattern") props children

-- | The pattern element defines a repeating pattern to be used as a fill or stroke. [No Attributes]
pattern_ :: forall html ctx a. Html html => Array (html ctx a) -> html ctx a
pattern_ children = elem (ElemName "pattern") [] children

-- | The polygon element defines a closed shape consisting of a series of connected straight line segments.
polygon :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
polygon props = elem (ElemName "polygon") props []

-- | The polygon element defines a closed shape consisting of a series of connected straight line segments. [No Attributes]
polygon_ :: forall html ctx a. Html html => html ctx a
polygon_ = elem (ElemName "polygon") [] []

-- | The polyline element defines an open shape consisting of a series of connected straight line segments.
polyline :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
polyline props = elem (ElemName "polyline") props []

-- | The polyline element defines an open shape consisting of a series of connected straight line segments. [No Attributes]
polyline_ :: forall html ctx a. Html html => html ctx a
polyline_ = elem (ElemName "polyline") [] []

-- | The radialGradient element defines a radial gradient to be used as a fill or stroke.
radialGradient :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
radialGradient props children = elem (ElemName "radialGradient") props children

-- | The radialGradient element defines a radial gradient to be used as a fill or stroke. [No Attributes]
radialGradient_ :: forall html ctx a. Html html => Array (html ctx a) -> html ctx a
radialGradient_ children = elem (ElemName "radialGradient") [] children

-- | The rect element defines a rectangle to be drawn.
rect :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
rect props = elem (ElemName "rect") props []

-- | The rect element defines a rectangle to be drawn. [No Attributes]
rect_ :: forall html ctx a. Html html => html ctx a
rect_ = elem (ElemName "rect") [] []

-- | The script element contains script statements.
script :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
script props children = elem (ElemName "script") props children

-- | The script element contains script statements. [No Attributes]
script_ :: forall html ctx a. Html html => Array (html ctx a) -> html ctx a
script_ children = elem (ElemName "script") [] children

-- | The set element provides a way to animate an attribute to a given value.
set :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
set props = elem (ElemName "set") props []

-- | The set element provides a way to animate an attribute to a given value. [No Attributes]
set_ :: forall html ctx a. Html html => html ctx a
set_ = elem (ElemName "set") [] []

-- | The stop element defines a color or gradient stop in a gradient.
stop :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
stop props = elem (ElemName "stop") props []

-- | The stop element defines a color or gradient stop in a gradient. [No Attributes]
stop_ :: forall html ctx a. Html html => html ctx a
stop_ = elem (ElemName "stop") [] []

-- | The style element contains style information for a document or part of a document.
style :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
style props children = elem (ElemName "style") props children

-- | The style element contains style information for a document or part of a document. [No Attributes]
style_ :: forall html ctx a. Html html => Array (html ctx a) -> html ctx a
style_ children = elem (ElemName "style") [] children

-- | The svg element is the root element of an SVG document.
svg :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
svg props children = elem (ElemName "svg") props children

-- | The svg element is the root element of an SVG document. [No Attributes]
svg_ :: forall html ctx a. Html html => Array (html ctx a) -> html ctx a
svg_ children = elem (ElemName "svg") [] children

-- | The switch element allows conditional processing of SVG elements.
switch :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
switch props children = elem (ElemName "switch") props children

-- | The switch element allows conditional processing of SVG elements. [No Attributes]
switch_ :: forall html ctx a. Html html => Array (html ctx a) -> html ctx a
switch_ children = elem (ElemName "switch") [] children

-- | The symbol element defines a reusable graphic element.
symbol :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
symbol props children = elem (ElemName "symbol") props children

-- | The symbol element defines a reusable graphic element. [No Attributes]
symbol_ :: forall html ctx a. Html html => Array (html ctx a) -> html ctx a
symbol_ children = elem (ElemName "symbol") [] children

-- | The text element defines a block of text to be drawn.
text :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
text props children = elem (ElemName "text") props children

-- | The text element defines a block of text to be drawn. [No Attributes]
text_ :: forall html ctx a. Html html => Array (html ctx a) -> html ctx a
text_ children = elem (ElemName "text") [] children

-- | The textPath element provides a way to align text along a path.
textPath :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
textPath props children = elem (ElemName "textPath") props children

-- | The textPath element provides a way to align text along a path. [No Attributes]
textPath_ :: forall html ctx a. Html html => Array (html ctx a) -> html ctx a
textPath_ children = elem (ElemName "textPath") [] children

-- | The title element provides a title for a document or part of a document.
title :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
title props children = elem (ElemName "title") props children

-- | The title element provides a title for a document or part of a document. [No Attributes]
title_ :: forall html ctx a. Html html => Array (html ctx a) -> html ctx a
title_ children = elem (ElemName "title") [] children

-- | The tref element provides a way to reference a portion of text in another element.
tref :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
tref props = elem (ElemName "tref") props []

-- | The tref element provides a way to reference a portion of text in another element. [No Attributes]
tref_ :: forall html ctx a. Html html => html ctx a
tref_ = elem (ElemName "tref") [] []

-- | The tspan element provides a way to group a portion of text within a larger block of text.
tspan :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
tspan props children = elem (ElemName "tspan") props children

-- | The tspan element provides a way to group a portion of text within a larger block of text. [No Attributes]
tspan_ :: forall html ctx a. Html html => Array (html ctx a) -> html ctx a
tspan_ children = elem (ElemName "tspan") [] children

-- | The use element provides a way to reuse a single element and apply transformations to it.
use :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
use props children = elem (ElemName "use") props children

-- | The use element provides a way to reuse a single element and apply transformations to it. [No Attributes]
use_ :: forall html ctx a. Html html => Array (html ctx a) -> html ctx a
use_ children = elem (ElemName "use") [] children

-- | The view element defines a rectangular portion of the SVG canvas that should be displayed.
view :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
view props children = elem (ElemName "view") props children

-- | The view element defines a rectangular portion of the SVG canvas that should be displayed. [No Attributes]
view_ :: forall html ctx a. Html html => Array (html ctx a) -> html ctx a
view_ children = elem (ElemName "view") [] children

-- | Defines vertical kerning for a pair of glyphs in a font.
vkern :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
vkern props = elem (ElemName "vkern") props []

-- | Defines vertical kerning for a pair of glyphs in a font. [No Attributes]
vkern_ :: forall html ctx a. Html html => html ctx a
vkern_ = elem (ElemName "vkern") [] []

