
module TaglessVirtualDOM.HTML.Attributes where

import Prelude

import TaglessVirtualDOM (Prop(..))

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


-- | Specifies the types of files that the server accepts (only for type="file")
accept :: forall a. String -> Prop a
accept = Attr "accept"  

-- | Defines a keyboard shortcut to activate or focus on the element
accesskey :: forall a. String -> Prop a
accesskey = Attr "accesskey"  

-- | Specifies an alternative text for images
alt :: forall a. String -> Prop a
alt = Attr "alt"  

-- | Specifies whether the element should have autocomplete enabled
autocomplete :: forall a. String -> Prop a
autocomplete = Attr "autocomplete"  

-- | Specifies that the element should automatically get focus when the page loads
autofocus :: forall a. String -> Prop a
autofocus = Attr "autofocus"  

-- | Specifies that the audio/video should start playing as soon as it is ready
autoplay :: forall a. String -> Prop a
autoplay = Attr "autoplay"  

-- | Returns a TimeRanges object representing the buffered parts of the audio/video
buffered :: forall a. String -> Prop a
buffered = Attr "buffered"  

-- | Specifies a challenge-response test to ensure that the form was filled out by a human and not a computer
challenge :: forall a. String -> Prop a
challenge = Attr "challenge"  

-- | Specifies the character encoding used in the element
charset :: forall a. String -> Prop a
charset = Attr "charset"  

-- | Specifies that an input element should be pre-selected when the page loads (for type="checkbox" or type="radio")
checked :: forall a. String -> Prop a
checked = Attr "checked"  

-- | Specifies a URL which explains the quote/deleted/inserted text
cite :: forall a. String -> Prop a
cite = Attr "cite"  

-- | Specifies one or more class names for an element (refers to a class in a style sheet)
class_ :: forall a. String -> Prop a
class_ = Attr "class_"  

-- | Specifies the visible width of a text area
cols :: forall a. String -> Prop a
cols = Attr "cols"  

-- | Specifies the number of columns a table cell should span
colspan :: forall a. String -> Prop a
colspan = Attr "colspan"  

-- | Gives the value associated with the http-equiv or name attribute
content :: forall a. String -> Prop a
content = Attr "content"  

-- | Specifies whether the content of an element is editable or not
contenteditable :: forall a. String -> Prop a
contenteditable = Attr "contenteditable"  

-- | Specifies that audio/video controls should be displayed (such as a play/pause button etc)
controls :: forall a. String -> Prop a
controls = Attr "controls"  

-- | Specifies the coordinates of the area
coords :: forall a. String -> Prop a
coords = Attr "coords"  

-- | Specifies the URL of the resource to be used by the object
data_ :: forall a. String -> Prop a
data_ = Attr "data_"  

-- | Specifies the date and time
datetime :: forall a. String -> Prop a
datetime = Attr "datetime"  

-- | Specifies that the track is to be enabled if the user's preferences do not indicate that another track would be more appropriate
default :: forall a. String -> Prop a
default = Attr "default"  

-- | Specifies that the script is executed when the page has finished parsing (only for external scripts)
defer :: forall a. String -> Prop a
defer = Attr "defer"  

-- | Sets the text directionality of the content within an element
dir :: forall a. String -> Prop a
dir = Attr "dir"  

-- | Disables an element
disabled :: forall a. String -> Prop a
disabled = Attr "disabled"  

-- | Prompts the user to save the linked URL instead of navigating to it
download :: forall a. String -> Prop a
download = Attr "download"  

-- | Indicates whether an element is draggable
draggable :: forall a. String -> Prop a
draggable = Attr "draggable"  

-- | Specifies whether the dragged data is copied, moved, or linked when dropped
dropzone :: forall a. String -> Prop a
dropzone = Attr "dropzone"  

-- | Specifies how the form data should be encoded when submitting to the server
enctype :: forall a. String -> Prop a
enctype = Attr "enctype"  

-- | Associates a label with a form control
for :: forall a. String -> Prop a
for = Attr "for"  

-- | Indicates the form that an element belongs to
form :: forall a. String -> Prop a
form = Attr "form"  

-- | Specifies the URL to which the form data will be submitted when a form is submitted
formaction :: forall a. String -> Prop a
formaction = Attr "formaction"  

-- | Defines a list of header cells that are associated with a data cell
headers :: forall a. String -> Prop a
headers = Attr "headers"  

-- | Specifies the height of an element
height :: forall a. String -> Prop a
height = Attr "height"  

-- | Hides an element
hidden :: forall a. String -> Prop a
hidden = Attr "hidden"  

-- | Specifies the range that is considered to be a high value
high :: forall a. String -> Prop a
high = Attr "high"  

-- | Specifies the URL of the page the link goes to
href :: forall a. String -> Prop a
href = Attr "href"  

-- | Specifies the language of the linked document
hreflang :: forall a. String -> Prop a
hreflang = Attr "hreflang"  

-- | Provides an HTTP header for the information/value of the content attribute
httpEquiv :: forall a. String -> Prop a
httpEquiv = Attr "http-equiv"  

-- | Specifies a unique id for an element
id :: forall a. String -> Prop a
id = Attr "id"  

-- | Specifies what kind of input mechanism would be most helpful for users entering content into the element
inputmode :: forall a. String -> Prop a
inputmode = Attr "inputmode"  

-- | Specifies the expected cryptographic digest of the resource
integrity :: forall a. String -> Prop a
integrity = Attr "integrity"  

-- | Indicates the tag name of the element it is applied to
is :: forall a. String -> Prop a
is = Attr "is"  

-- | Specifies that an image should be part of a server-side image map
ismap :: forall a. String -> Prop a
ismap = Attr "ismap"  

-- | Specifies a unique identifier for an item
itemid :: forall a. String -> Prop a
itemid = Attr "itemid"  

-- | Specifies the property of an item
itemprop :: forall a. String -> Prop a
itemprop = Attr "itemprop"  

-- | Specifies one or more elements that contain additional information about the item
itemref :: forall a. String -> Prop a
itemref = Attr "itemref"  

-- | Specifies that the element is an item and defines its scope
itemscope :: forall a. String -> Prop a
itemscope = Attr "itemscope"  

-- | Specifies the URL of the vocabulary that describes the item
itemtype :: forall a. String -> Prop a
itemtype = Attr "itemtype"  

-- | Specifies the type of key generated by the keygen element
keytype :: forall a. String -> Prop a
keytype = Attr "keytype"  

-- | Specifies the kind of text track
kind :: forall a. String -> Prop a
kind = Attr "kind"  

-- | Specifies the label for the element
label :: forall a. String -> Prop a
label = Attr "label"  

-- | Specifies the language of the element's content
lang :: forall a. String -> Prop a
lang = Attr "lang"  

-- | Specifies the script language of the element
language :: forall a. String -> Prop a
language = Attr "language"  

-- | Refers to a datalist element that contains pre-defined options for an input element
list :: forall a. String -> Prop a
list = Attr "list"  

-- | Specifies that the audio/video will start over again, every time it is finished
loop :: forall a. String -> Prop a
loop = Attr "loop"  

-- | Specifies the lower bound of the range
low :: forall a. String -> Prop a
low = Attr "low"  

-- | Specifies the address of the document's cache manifest
manifest :: forall a. String -> Prop a
manifest = Attr "manifest"  

-- | Specifies the maximum value for the element
max :: forall a. String -> Prop a
max = Attr "max"  

-- | Specifies the maximum number of characters allowed in the element
maxlength :: forall a. String -> Prop a
maxlength = Attr "maxlength"  

-- | Specifies what media/device the linked document is optimized for
media :: forall a. String -> Prop a
media = Attr "media"  

-- | Specifies the HTTP method used when submitting the form
method :: forall a. String -> Prop a
method = Attr "method"  

-- | Specifies the minimum value for the element
min :: forall a. String -> Prop a
min = Attr "min"  

-- | Specifies the minimum number of characters required in the element
minlength :: forall a. String -> Prop a
minlength = Attr "minlength"  

-- | Specifies that a user can enter more than one value in an input element
multiple :: forall a. String -> Prop a
multiple = Attr "multiple"  

-- | Specifies that the audio output of the video should be muted
muted :: forall a. String -> Prop a
muted = Attr "muted"  

-- | Specifies a name for the element
name :: forall a. String -> Prop a
name = Attr "name"  

-- | Specifies that the form should not be validated when submitted
novalidate :: forall a. String -> Prop a
novalidate = Attr "novalidate"  

-- | Specifies that the details should be visible (open) to the user
open :: forall a. String -> Prop a
open = Attr "open"  

-- | Specifies what value is the optimal value for the gauge
optimum :: forall a. String -> Prop a
optimum = Attr "optimum"  

-- | Specifies a regular expression to check the value of an input element
pattern :: forall a. String -> Prop a
pattern = Attr "pattern"  

-- | Specifies a list of URLs to be notified if a user follows the hyperlink
ping :: forall a. String -> Prop a
ping = Attr "ping"  

-- | Specifies a short hint that describes the expected value of an input element
placeholder :: forall a. String -> Prop a
placeholder = Attr "placeholder"  

-- | Specifies an image to be shown while the video is downloading, or until the user hits the play button
poster :: forall a. String -> Prop a
poster = Attr "poster"  

-- | Specifies if and how the author thinks the audio/video should be loaded when the page loads
preload :: forall a. String -> Prop a
preload = Attr "preload"  

-- | Specifies that the input field is read-only
readonly :: forall a. String -> Prop a
readonly = Attr "readonly"  

-- | Specifies which referrer information to send when fetching the resource
referrerpolicy :: forall a. String -> Prop a
referrerpolicy = Attr "referrerpolicy"  

-- | Specifies the relationship between the current document and the linked document/resource
rel :: forall a. String -> Prop a
rel = Attr "rel"  

-- | Specifies that the input field must be filled out before submitting the form
required :: forall a. String -> Prop a
required = Attr "required"  

-- | Specifies that the list order should be descending (9,8,7...)
reversed :: forall a. String -> Prop a
reversed = Attr "reversed"  

-- | Specifies the visible number of lines in a text area
rows :: forall a. String -> Prop a
rows = Attr "rows"  

-- | Specifies the number of rows a table cell should span
rowspan :: forall a. String -> Prop a
rowspan = Attr "rowspan"  

-- | Enables an extra set of restrictions for the content in an iframe
sandbox :: forall a. String -> Prop a
sandbox = Attr "sandbox"  

-- | Specifies whether a header cell is a header for a column, row, or group of columns or rows
scope :: forall a. String -> Prop a
scope = Attr "scope"  

-- | Indicates whether an option in a <select> element is pre-selected on page load
selected :: forall a. String -> Prop a
selected = Attr "selected"  

-- | Specifies the shape of an <area> element for use with image maps
shape :: forall a. String -> Prop a
shape = Attr "shape"  

-- | Specifies the size of an <input> element (in characters)
size :: forall a. String -> Prop a
size = Attr "size"  

-- | Specifies a set of possible sizes for an icon
sizes :: forall a. String -> Prop a
sizes = Attr "sizes"  

-- | Assigns a slot in a shadow DOM
slot :: forall a. String -> Prop a
slot = Attr "slot"  

-- | Specifies the number of columns a <col> element should span
span :: forall a. String -> Prop a
span = Attr "span"  

-- | Specifies whether the element is to have its spelling and grammar checked or not
spellcheck :: forall a. String -> Prop a
spellcheck = Attr "spellcheck"  

-- | Specifies the URL of the media file
src :: forall a. String -> Prop a
src = Attr "src"  

-- | Specifies the HTML content of the page to show in the <iframe>
srcdoc :: forall a. String -> Prop a
srcdoc = Attr "srcdoc"  

-- | Specifies the language of the track text data (required if kind="subtitles")
srclang :: forall a. String -> Prop a
srclang = Attr "srclang"  

-- | Specifies the URL of the image to use in different situations (e.g. high-resolution displays, small monitors, etc)
srcset :: forall a. String -> Prop a
srcset = Attr "srcset"  

-- | Specifies the start value of a <ol> element
start :: forall a. String -> Prop a
start = Attr "start"  

-- | Specifies the legal number intervals for an <input> element
step :: forall a. String -> Prop a
step = Attr "step"  

-- | Specifies an inline CSS style for an element
style :: forall a. String -> Prop a
style = Attr "style"  

-- | Specifies the tabbing order of an element
tabindex :: forall a. String -> Prop a
tabindex = Attr "tabindex"  

-- | Specifies the target for where to open the linked document or where to submit the form
target :: forall a. String -> Prop a
target = Attr "target"  

-- | Specifies extra information about an element
title :: forall a. String -> Prop a
title = Attr "title"  

-- | Specifies whether the content of an element should be translated or not
translate :: forall a. String -> Prop a
translate = Attr "translate"  

-- | Specifies the type of element
type_ :: forall a. String -> Prop a
type_ = Attr "type_"  

-- | Specifies whether the type attribute and the actual content of the resource must match to be displayed
typemustmatch :: forall a. String -> Prop a
typemustmatch = Attr "typemustmatch"  

-- | Specifies an image as a client-side image map
usemap :: forall a. String -> Prop a
usemap = Attr "usemap"  

-- | Specifies the value of an element
value :: forall a. String -> Prop a
value = Attr "value"  

-- | Specifies the width of an element
width :: forall a. String -> Prop a
width = Attr "width"  

-- | Specifies how the text in a text area is to be wrapped when submitted in a form
wrap :: forall a. String -> Prop a
wrap = Attr "wrap"  

