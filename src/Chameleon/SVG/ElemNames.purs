module Chameleon.SVG.ElemNames where

import Chameleon.Class (ElemName(..))

-- | Creates a hyperlink element
a :: ElemName
a = ElemName "a"

-- | Defines an alternative representation of a glyph in a font
altGlyph :: ElemName
altGlyph = ElemName "altGlyph"

-- | Defines a set of glyph substitutions for an altGlyph element
altGlyphDef :: ElemName
altGlyphDef = ElemName "altGlyphDef"

-- | Defines a substitution for a specific glyph in an altGlyphDef element
altGlyphItem :: ElemName
altGlyphItem = ElemName "altGlyphItem"

-- | Defines an animation on an SVG element
animate :: ElemName
animate = ElemName "animate"

-- | Defines an animated color change for an SVG element
animateColor :: ElemName
animateColor = ElemName "animateColor"

-- | Defines an animated motion path for an SVG element
animateMotion :: ElemName
animateMotion = ElemName "animateMotion"

-- | Defines an animated transformation on an SVG element
animateTransform :: ElemName
animateTransform = ElemName "animateTransform"

-- | Creates a circle element
circle :: ElemName
circle = ElemName "circle"

-- | Defines a clipping path for an SVG element
clipPath :: ElemName
clipPath = ElemName "clipPath"

-- | Defines a color profile for an SVG document
colorProfile :: ElemName
colorProfile = ElemName "color-profile"

-- | Defines a cursor for an SVG element
cursor :: ElemName
cursor = ElemName "cursor"

-- | Defines a set of reusable SVG elements
defs :: ElemName
defs = ElemName "defs"

-- | Defines a description of an SVG element
desc :: ElemName
desc = ElemName "desc"

-- | Creates an ellipse element
ellipse :: ElemName
ellipse = ElemName "ellipse"

-- | Defines a blend mode for two input images in a filter
feBlend :: ElemName
feBlend = ElemName "feBlend"

-- | Applies a color transformation to an input image
feColorMatrix :: ElemName
feColorMatrix = ElemName "feColorMatrix"

-- | Allows for component-wise remapping of input image components
feComponentTransfer :: ElemName
feComponentTransfer = ElemName "feComponentTransfer"

-- | Combines two input images using a composition operation
feComposite :: ElemName
feComposite = ElemName "feComposite"

-- | Applies a matrix convolution filter effect to an input image
feConvolveMatrix :: ElemName
feConvolveMatrix = ElemName "feConvolveMatrix"

-- | Creates a lighting effect using the alpha channel as a bump map
feDiffuseLighting :: ElemName
feDiffuseLighting = ElemName "feDiffuseLighting"

-- | Displaces the pixels in an input image according to a displacement map image
feDisplacementMap :: ElemName
feDisplacementMap = ElemName "feDisplacementMap"

-- | Defines a distant light source for use in a lighting filter effect
feDistantLight :: ElemName
feDistantLight = ElemName "feDistantLight"

-- | Fills the filter subregion with a solid color
feFlood :: ElemName
feFlood = ElemName "feFlood"

-- | Defines the alpha transfer function for a component in a filter
feFuncA :: ElemName
feFuncA = ElemName "feFuncA"

-- | Defines the transfer function for a component
feFuncB :: ElemName
feFuncB = ElemName "feFuncB"

-- | Defines the transfer function for a component
feFuncG :: ElemName
feFuncG = ElemName "feFuncG"

-- | Defines the transfer function for a component
feFuncR :: ElemName
feFuncR = ElemName "feFuncR"

-- | Applies a Gaussian blur to an input image
feGaussianBlur :: ElemName
feGaussianBlur = ElemName "feGaussianBlur"

-- | Inserts an external image into an SVG element
feImage :: ElemName
feImage = ElemName "feImage"

-- | Merges multiple input images together
feMerge :: ElemName
feMerge = ElemName "feMerge"

-- | Specifies an input image for use with a feMerge filter
feMergeNode :: ElemName
feMergeNode = ElemName "feMergeNode"

-- | Expands or contracts the shape of an input image
feMorphology :: ElemName
feMorphology = ElemName "feMorphology"

-- | Offsets the position of an input image
feOffset :: ElemName
feOffset = ElemName "feOffset"

-- | Defines a point light source for use in a lighting filter effect
fePointLight :: ElemName
fePointLight = ElemName "fePointLight"

-- | Creates a specular lighting effect using the alpha channel as a bump map
feSpecularLighting :: ElemName
feSpecularLighting = ElemName "feSpecularLighting"

-- | Defines a spotlight source for use in a lighting filter effect
feSpotLight :: ElemName
feSpotLight = ElemName "feSpotLight"

-- | Repeats an input image to fill a filter subregion
feTile :: ElemName
feTile = ElemName "feTile"

-- | Generates a Perlin noise or turbulence pattern
feTurbulence :: ElemName
feTurbulence = ElemName "feTurbulence"

-- | Defines a filter effect
filter :: ElemName
filter = ElemName "filter"

-- | Inserts a foreign object into an SVG document
foreignObject :: ElemName
foreignObject = ElemName "foreignObject"

-- | Creates a group of SVG elements
g :: ElemName
g = ElemName "g"

-- | Defines a single glyph in an SVG font
glyph :: ElemName
glyph = ElemName "glyph"

-- | References a glyph in a font
glyphRef :: ElemName
glyphRef = ElemName "glyphRef"

-- | Defines a hatching pattern
hatch :: ElemName
hatch = ElemName "hatch"

-- | Defines the path of a hatching pattern
hatchpath :: ElemName
hatchpath = ElemName "hatchpath"

-- | Inserts an external raster image into an SVG document
image :: ElemName
image = ElemName "image"

-- | Creates a line element
line :: ElemName
line = ElemName "line"

-- | Defines a linear gradient for an SVG element
linearGradient :: ElemName
linearGradient = ElemName "linearGradient"

-- | Defines a marker symbol to be used with a shape or line
marker :: ElemName
marker = ElemName "marker"

-- | Defines a mask for an SVG element
mask :: ElemName
mask = ElemName "mask"

-- | The metadata element provides a container for storing non-visual data.
metadata :: ElemName
metadata = ElemName "metadata"

-- | The missing-glyph element provides a fallback for glyphs that are not available in a font.
missingGlyph :: ElemName
missingGlyph = ElemName "missing-glyph"

-- | The mpath element provides a way to animate the motion of an object along a path.
mpath :: ElemName
mpath = ElemName "mpath"

-- | The path element defines a path to be drawn.
path :: ElemName
path = ElemName "path"

-- | The pattern element defines a repeating pattern to be used as a fill or stroke.
pattern :: ElemName
pattern = ElemName "pattern"

-- | The polygon element defines a closed shape consisting of a series of connected straight line segments.
polygon :: ElemName
polygon = ElemName "polygon"

-- | The polyline element defines an open shape consisting of a series of connected straight line segments.
polyline :: ElemName
polyline = ElemName "polyline"

-- | The radialGradient element defines a radial gradient to be used as a fill or stroke.
radialGradient :: ElemName
radialGradient = ElemName "radialGradient"

-- | The rect element defines a rectangle to be drawn.
rect :: ElemName
rect = ElemName "rect"

-- | The script element contains script statements.
script :: ElemName
script = ElemName "script"

-- | The set element provides a way to animate an attribute to a given value.
set :: ElemName
set = ElemName "set"

-- | The stop element defines a color or gradient stop in a gradient.
stop :: ElemName
stop = ElemName "stop"

-- | The style element contains style information for a document or part of a document.
style :: ElemName
style = ElemName "style"

-- | The svg element is the root element of an SVG document.
svg :: ElemName
svg = ElemName "svg"

-- | The switch element allows conditional processing of SVG elements.
switch :: ElemName
switch = ElemName "switch"

-- | The symbol element defines a reusable graphic element.
symbol :: ElemName
symbol = ElemName "symbol"

-- | The text element defines a block of text to be drawn.
text :: ElemName
text = ElemName "text"

-- | The textPath element provides a way to align text along a path.
textPath :: ElemName
textPath = ElemName "textPath"

-- | The title element provides a title for a document or part of a document.
title :: ElemName
title = ElemName "title"

-- | The tref element provides a way to reference a portion of text in another element.
tref :: ElemName
tref = ElemName "tref"

-- | The tspan element provides a way to group a portion of text within a larger block of text.
tspan :: ElemName
tspan = ElemName "tspan"

-- | The use element provides a way to reuse a single element and apply transformations to it.
use :: ElemName
use = ElemName "use"

-- | The view element defines a rectangular portion of the SVG canvas that should be displayed.
view :: ElemName
view = ElemName "view"

-- | Defines vertical kerning for a pair of glyphs in a font.
vkern :: ElemName
vkern = ElemName "vkern"

