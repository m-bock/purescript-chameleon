module VirtualDOM.HTML.Attributes where

import Prelude

import Data.String as Str
import Data.Symbol (class IsSymbol, reflectSymbol)
import Data.Variant (Variant)
import Data.Variant as V
import Prim.Row as Row
import Prim.RowList (class RowToList, RowList)
import Prim.RowList as RL
import VirtualDOM (Prop(..))
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

------------------------------------------------------------------------------- 
--- Attributes
-------------------------------------------------------------------------------

-- | Specifies the types of files that the server accepts (only for type="file")
accept :: forall a. String -> Prop a
accept val = Attr "accept" (toAttrib val)

-- | Defines a keyboard shortcut to activate or focus on the element
accesskey :: forall a. String -> Prop a
accesskey val = Attr "accesskey" (toAttrib val)

-- | Specifies an alternative text for images
alt :: forall a. String -> Prop a
alt val = Attr "alt" (toAttrib val)

-- | Specifies whether the element should have autocomplete enabled
autocomplete :: forall a. String -> Prop a
autocomplete val = Attr "autocomplete" (toAttrib val)

-- | Specifies that the element should automatically get focus when the page loads
autofocus :: forall a. Boolean -> Prop a
autofocus val = Attr "autofocus" (toAttrib val)

-- | Specifies that the audio/video should start playing as soon as it is ready
autoplay :: forall a. Boolean -> Prop a
autoplay val = Attr "autoplay" (toAttrib val)

-- | Specifies a challenge-response test to ensure that the form was filled out by a human and not a computer
challenge :: forall a. String -> Prop a
challenge val = Attr "challenge" (toAttrib val)

-- | Specifies the character encoding used in the element
charset :: forall a. String -> Prop a
charset val = Attr "charset" (toAttrib val)

-- | Specifies that an input element should be pre-selected when the page loads (for type="checkbox" or type="radio")
checked :: forall a. Boolean -> Prop a
checked val = Attr "checked" (toAttrib val)

-- | Specifies a URL which explains the quote/deleted/inserted text
cite :: forall a. String -> Prop a
cite val = Attr "cite" (toAttrib val)

-- | Specifies one or more class names for an element (refers to a class in a style sheet)
class_ :: forall a. String -> Prop a
class_ val = Attr "class_" (toAttrib val)

-- | Specifies the visible width of a text area
cols :: forall a. Number -> Prop a
cols val = Attr "cols" (toAttrib val)

-- | Specifies the number of columns a table cell should span
colspan :: forall a. Number -> Prop a
colspan val = Attr "colspan" (toAttrib val)

-- | Gives the value associated with the http-equiv or name attribute
content :: forall a. String -> Prop a
content val = Attr "content" (toAttrib val)

-- | Specifies whether the content of an element is editable or not
contenteditable :: forall a. Boolean -> Prop a
contenteditable val = Attr "contenteditable" (toAttrib val)

-- | Specifies that audio/video controls should be displayed (such as a play/pause button etc)
controls :: forall a. Boolean -> Prop a
controls val = Attr "controls" (toAttrib val)

-- | Specifies the coordinates of the area
coords :: forall a. String -> Prop a
coords val = Attr "coords" (toAttrib val)

-- | Specifies the URL of the resource to be used by the object
data_ :: forall a. String -> Prop a
data_ val = Attr "data_" (toAttrib val)

-- | Specifies the date and time
datetime :: forall a. String -> Prop a
datetime val = Attr "datetime" (toAttrib val)

-- | Specifies that the track is to be enabled if the user's preferences do not indicate that another track would be more appropriate
default :: forall a. Boolean -> Prop a
default val = Attr "default" (toAttrib val)

-- | Specifies that the script is executed when the page has finished parsing (only for external scripts)
defer :: forall a. Boolean -> Prop a
defer val = Attr "defer" (toAttrib val)

-- | Sets the text directionality of the content within an element
dir :: forall a. Variant ("ltr" :: Unit, "rtl" :: Unit, "auto" :: Unit) -> Prop a
dir val = Attr "dir" (toAttrib val)

-- | Disables an element
disabled :: forall a. Boolean -> Prop a
disabled val = Attr "disabled" (toAttrib val)

-- | Prompts the user to save the linked URL instead of navigating to it
download :: forall a. String -> Prop a
download val = Attr "download" (toAttrib val)

-- | Indicates whether an element is draggable
draggable :: forall a. Variant ("true" :: Unit, "false" :: Unit, "auto" :: Unit) -> Prop a
draggable val = Attr "draggable" (toAttrib val)

-- | Specifies how the form data should be encoded when submitting to the server
enctype
  :: forall a
   . Variant
       ( "application/x-www-form-urlencoded" :: Unit
       , "multipart/form-data" :: Unit
       , "text/plain" :: Unit
       )
  -> Prop a
enctype val = Attr "enctype" (toAttrib val)

-- | Associates a label with a form control
for :: forall a. String -> Prop a
for val = Attr "for" (toAttrib val)

-- | Indicates the form that an element belongs to
form :: forall a. String -> Prop a
form val = Attr "form" (toAttrib val)

-- | Specifies the URL to which the form data will be submitted when a form is submitted
formaction :: forall a. String -> Prop a
formaction val = Attr "formaction" (toAttrib val)

-- | Defines a list of header cells that are associated with a data cell
headers :: forall a. String -> Prop a
headers val = Attr "headers" (toAttrib val)

-- | Specifies the height of an element
height :: forall a. Number -> Prop a
height val = Attr "height" (toAttrib val)

-- | Hides an element
hidden :: forall a. Boolean -> Prop a
hidden val = Attr "hidden" (toAttrib val)

-- | Specifies the range that is considered to be a high value
high :: forall a. Number -> Prop a
high val = Attr "high" (toAttrib val)

-- | Specifies the URL of the page the link goes to
href :: forall a. String -> Prop a
href val = Attr "href" (toAttrib val)

-- | Specifies the language of the linked document
hreflang :: forall a. String -> Prop a
hreflang val = Attr "hreflang" (toAttrib val)

-- | Provides an HTTP header for the information/value of the content attribute
httpEquiv :: forall a. String -> Prop a
httpEquiv val = Attr "http-equiv" (toAttrib val)

-- | Specifies a unique id for an element
id :: forall a. String -> Prop a
id val = Attr "id" (toAttrib val)

-- | Specifies what kind of input mechanism would be most helpful for users entering content into the element
inputmode
  :: forall a
   . Variant
       ( "none" :: Unit
       , "text" :: Unit
       , "decimal" :: Unit
       , "numeric" :: Unit
       , "tel" :: Unit
       , "search" :: Unit
       , "email" :: Unit
       , "url" :: Unit
       )
  -> Prop a
inputmode val = Attr "inputmode" (toAttrib val)

-- | Specifies the expected cryptographic digest of the resource
integrity :: forall a. String -> Prop a
integrity val = Attr "integrity" (toAttrib val)

-- | Indicates the tag name of the element it is applied to
is :: forall a. String -> Prop a
is val = Attr "is" (toAttrib val)

-- | Specifies that an image should be part of a server-side image map
ismap :: forall a. Boolean -> Prop a
ismap val = Attr "ismap" (toAttrib val)

-- | Specifies a unique identifier for an item
itemid :: forall a. String -> Prop a
itemid val = Attr "itemid" (toAttrib val)

-- | Specifies the property of an item
itemprop :: forall a. String -> Prop a
itemprop val = Attr "itemprop" (toAttrib val)

-- | Specifies one or more elements that contain additional information about the item
itemref :: forall a. Array String -> Prop a
itemref val = Attr "itemref" (toAttrib val)

-- | Specifies that the element is an item and defines its scope
itemscope :: forall a. Boolean -> Prop a
itemscope val = Attr "itemscope" (toAttrib val)

-- | Specifies the URL of the vocabulary that describes the item
itemtype :: forall a. String -> Prop a
itemtype val = Attr "itemtype" (toAttrib val)

-- | Specifies the type of key generated by the keygen element
keytype :: forall a. String -> Prop a
keytype val = Attr "keytype" (toAttrib val)

-- | Specifies the kind of text track
kind :: forall a. String -> Prop a
kind val = Attr "kind" (toAttrib val)

-- | Specifies the label for the element
label :: forall a. String -> Prop a
label val = Attr "label" (toAttrib val)

-- | Specifies the language of the element's content
lang :: forall a. String -> Prop a
lang val = Attr "lang" (toAttrib val)

-- | Specifies the script language of the element
language :: forall a. String -> Prop a
language val = Attr "language" (toAttrib val)

-- | Refers to a datalist element that contains pre-defined options for an input element
list :: forall a. String -> Prop a
list val = Attr "list" (toAttrib val)

-- | Specifies that the audio/video will start over again, every time it is finished
loop :: forall a. Boolean -> Prop a
loop val = Attr "loop" (toAttrib val)

-- | Specifies the lower bound of the range
low :: forall a. Number -> Prop a
low val = Attr "low" (toAttrib val)

-- | Specifies the address of the document's cache manifest
manifest :: forall a. String -> Prop a
manifest val = Attr "manifest" (toAttrib val)

-- | Specifies the maximum value for the element
max :: forall a. Number -> Prop a
max val = Attr "max" (toAttrib val)

-- | Specifies the maximum number of characters allowed in the element
maxlength :: forall a. Number -> Prop a
maxlength val = Attr "maxlength" (toAttrib val)

-- | Specifies what media/device the linked document is optimized for
media :: forall a. String -> Prop a
media val = Attr "media" (toAttrib val)

-- | Specifies the HTTP method used when submitting the form
method :: forall a. String -> Prop a
method val = Attr "method" (toAttrib val)

-- | Specifies the minimum value for the element
min :: forall a. Number -> Prop a
min val = Attr "min" (toAttrib val)

-- | Specifies the minimum number of characters required in the element
minlength :: forall a. Number -> Prop a
minlength val = Attr "minlength" (toAttrib val)

-- | Specifies that a user can enter more than one value in an input element
multiple :: forall a. Boolean -> Prop a
multiple val = Attr "multiple" (toAttrib val)

-- | Specifies that the audio output of the video should be muted
muted :: forall a. Boolean -> Prop a
muted val = Attr "muted" (toAttrib val)

-- | Specifies a name for the element
name :: forall a. String -> Prop a
name val = Attr "name" (toAttrib val)

-- | Specifies that the form should not be validated when submitted
novalidate :: forall a. Boolean -> Prop a
novalidate val = Attr "novalidate" (toAttrib val)

-- | Specifies that the details should be visible (open) to the user
open :: forall a. Boolean -> Prop a
open val = Attr "open" (toAttrib val)

-- | Specifies what value is the optimal value for the gauge
optimum :: forall a. Number -> Prop a
optimum val = Attr "optimum" (toAttrib val)

-- | Specifies a regular expression to check the value of an input element
pattern :: forall a. String -> Prop a
pattern val = Attr "pattern" (toAttrib val)

-- | Specifies a list of URLs to be notified if a user follows the hyperlink
ping :: forall a. String -> Prop a
ping val = Attr "ping" (toAttrib val)

-- | Specifies a short hint that describes the expected value of an input element
placeholder :: forall a. String -> Prop a
placeholder val = Attr "placeholder" (toAttrib val)

-- | Specifies an image to be shown while the video is downloading, or until the user hits the play button
poster :: forall a. String -> Prop a
poster val = Attr "poster" (toAttrib val)

-- | Specifies if and how the author thinks the audio/video should be loaded when the page loads
preload :: forall a. Variant ("none" :: Unit, "metadata" :: Unit, "auto" :: Unit) -> Prop a
preload val = Attr "preload" (toAttrib val)

-- | Specifies that the input field is read-only
readonly :: forall a. Boolean -> Prop a
readonly val = Attr "readonly" (toAttrib val)

-- | Specifies which referrer information to send when fetching the resource
referrerpolicy
  :: forall a
   . Variant
       ( "no-referrer" :: Unit
       , "no-referrer-when-downgrade" :: Unit
       , "origin" :: Unit
       , "origin-when-cross-origin" :: Unit
       , "same-origin" :: Unit
       , "strict-origin" :: Unit
       , "strict-origin-when-cross-origin" :: Unit
       , "unsafe-url" :: Unit
       )
  -> Prop a
referrerpolicy val = Attr "referrerpolicy" (toAttrib val)

-- | Specifies the relationship between the current document and the linked document/resource
rel
  :: forall a
   . Variant
       ( "alternate" :: Unit
       , "author" :: Unit
       , "bookmark" :: Unit
       , "external" :: Unit
       , "help" :: Unit
       , "license" :: Unit
       , "next" :: Unit
       , "nofollow" :: Unit
       , "noreferrer" :: Unit
       , "noopener" :: Unit
       , "prev" :: Unit
       , "search" :: Unit
       , "tag" :: Unit
       )
  -> Prop a
rel val = Attr "rel" (toAttrib val)

-- | Specifies that the input field must be filled out before submitting the form
required :: forall a. Boolean -> Prop a
required val = Attr "required" (toAttrib val)

-- | Specifies that the list order should be descending (9,8,7...)
reversed :: forall a. Boolean -> Prop a
reversed val = Attr "reversed" (toAttrib val)

-- | Specifies the visible number of lines in a text area
rows :: forall a. Int -> Prop a
rows val = Attr "rows" (toAttrib val)

-- | Specifies the number of rows a table cell should span
rowspan :: forall a. Int -> Prop a
rowspan val = Attr "rowspan" (toAttrib val)

-- | Enables an extra set of restrictions for the content in an iframe
sandbox
  :: forall a
   . Variant
       ( "allow-forms" :: Unit
       , "allow-modals" :: Unit
       , "allow-orientation-lock" :: Unit
       , "allow-pointer-lock" :: Unit
       , "allow-popups" :: Unit
       , "allow-popups-to-escape-sandbox" :: Unit
       , "allow-presentation" :: Unit
       , "allow-same-origin" :: Unit
       , "allow-scripts" :: Unit
       , "allow-top-navigation" :: Unit
       , "allow-top-navigation-by-user-activation" :: Unit
       )
  -> Prop a
sandbox val = Attr "sandbox" (toAttrib val)

-- | Specifies whether a header cell is a header for a column, row, or group of columns or rows
scope
  :: forall a
   . Variant ("row" :: Unit, "col" :: Unit, "rowgroup" :: Unit, "colgroup" :: Unit)
  -> Prop a
scope val = Attr "scope" (toAttrib val)

-- | Indicates whether an option in a <select> element is pre-selected on page load
selected :: forall a. Boolean -> Prop a
selected val = Attr "selected" (toAttrib val)

-- | Specifies the shape of an <area> element for use with image maps
shape :: forall a. String -> Prop a
shape val = Attr "shape" (toAttrib val)

-- | Specifies the size of an <input> element (in characters)
size :: forall a. Number -> Prop a
size val = Attr "size" (toAttrib val)

-- | Specifies a set of possible sizes for an icon
sizes :: forall a. String -> Prop a
sizes val = Attr "sizes" (toAttrib val)

-- | Assigns a slot in a shadow DOM
slot :: forall a. String -> Prop a
slot val = Attr "slot" (toAttrib val)

-- | Specifies the number of columns a <col> element should span
span :: forall a. Number -> Prop a
span val = Attr "span" (toAttrib val)

-- | Specifies whether the element is to have its spelling and grammar checked or not
spellcheck :: forall a. Boolean -> Prop a
spellcheck val = Attr "spellcheck" (toAttrib val)

-- | Specifies the URL of the media file
src :: forall a. String -> Prop a
src val = Attr "src" (toAttrib val)

-- | Specifies the HTML content of the page to show in the <iframe>
srcdoc :: forall a. String -> Prop a
srcdoc val = Attr "srcdoc" (toAttrib val)

-- | Specifies the language of the track text data (required if kind="subtitles")
srclang :: forall a. String -> Prop a
srclang val = Attr "srclang" (toAttrib val)

-- | Specifies the URL of the image to use in different situations (e.g. high-resolution displays, small monitors, etc)
srcset :: forall a. String -> Prop a
srcset val = Attr "srcset" (toAttrib val)

-- | Specifies the start value of a <ol> element
start :: forall a. Number -> Prop a
start val = Attr "start" (toAttrib val)

-- | Specifies the legal number intervals for an <input> element
step :: forall a. String -> Prop a
step val = Attr "step" (toAttrib val)

-- | Specifies an inline CSS style for an element
style :: forall a. String -> Prop a
style val = Attr "style" (toAttrib val)

-- | Specifies the tabbing order of an element
tabindex :: forall a. Number -> Prop a
tabindex val = Attr "tabindex" (toAttrib val)

-- | Specifies the target for where to open the linked document or where to submit the form
target :: forall a. String -> Prop a
target val = Attr "target" (toAttrib val)

-- | Specifies extra information about an element
title :: forall a. String -> Prop a
title val = Attr "title" (toAttrib val)

-- | Specifies whether the content of an element should be translated or not
translate :: forall a. Boolean -> Prop a
translate val = Attr "translate" (toAttrib val)

-- | Specifies the type of element
type_ :: forall a. String -> Prop a
type_ val = Attr "type_" (toAttrib val)

-- | Specifies whether the type attribute and the actual content of the resource must match to be displayed
typemustmatch :: forall a. Boolean -> Prop a
typemustmatch val = Attr "typemustmatch" (toAttrib val)

-- | Specifies an image as a client-side image map
usemap :: forall a. String -> Prop a
usemap val = Attr "usemap" (toAttrib val)

-- | Specifies the value of an element
value :: forall a. String -> Prop a
value val = Attr "value" (toAttrib val)

-- | Specifies the width of an element
width :: forall a. Number -> Prop a
width val = Attr "width" (toAttrib val)

-- | Specifies how the text in a text area is to be wrapped when submitted in a form
wrap :: forall a. String -> Prop a
wrap val = Attr "wrap" (toAttrib val)

------------------------------------------------------------------------------- 
--- Variant Constructors
-------------------------------------------------------------------------------

_none :: forall r. Variant ("none" :: Unit | r)
_none = V.inj (Proxy :: Proxy "none") unit

_metadata :: forall r. Variant ("metadata" :: Unit | r)
_metadata = V.inj (Proxy :: Proxy "metadata") unit

_auto :: forall r. Variant ("auto" :: Unit | r)
_auto = V.inj (Proxy :: Proxy "auto") unit

_noReferrer :: forall r. Variant ("no-referrer" :: Unit | r)
_noReferrer = V.inj (Proxy :: Proxy "no-referrer") unit

_noReferrerWhenDowngrade :: forall r. Variant ("no-referrer-when-downgrade" :: Unit | r)
_noReferrerWhenDowngrade = V.inj (Proxy :: Proxy "no-referrer-when-downgrade") unit

_origin :: forall r. Variant ("origin" :: Unit | r)
_origin = V.inj (Proxy :: Proxy "origin") unit

_originWhenCrossOrigin :: forall r. Variant ("origin-when-cross-origin" :: Unit | r)
_originWhenCrossOrigin = V.inj (Proxy :: Proxy "origin-when-cross-origin") unit

_sameOrigin :: forall r. Variant ("same-origin" :: Unit | r)
_sameOrigin = V.inj (Proxy :: Proxy "same-origin") unit

_strictOrigin :: forall r. Variant ("strict-origin" :: Unit | r)
_strictOrigin = V.inj (Proxy :: Proxy "strict-origin") unit

_strictOriginWhenCrossOrigin :: forall r. Variant ("strict-origin-when-cross-origin" :: Unit | r)
_strictOriginWhenCrossOrigin = V.inj (Proxy :: Proxy "strict-origin-when-cross-origin") unit

_unsafeUrl :: forall r. Variant ("unsafe-url" :: Unit | r)
_unsafeUrl = V.inj (Proxy :: Proxy "unsafe-url") unit

_alternate :: forall r. Variant ("alternate" :: Unit | r)
_alternate = V.inj (Proxy :: Proxy "alternate") unit

_author :: forall r. Variant ("author" :: Unit | r)
_author = V.inj (Proxy :: Proxy "author") unit

_bookmark :: forall r. Variant ("bookmark" :: Unit | r)
_bookmark = V.inj (Proxy :: Proxy "bookmark") unit

_external :: forall r. Variant ("external" :: Unit | r)
_external = V.inj (Proxy :: Proxy "external") unit

_help :: forall r. Variant ("help" :: Unit | r)
_help = V.inj (Proxy :: Proxy "help") unit

_license :: forall r. Variant ("license" :: Unit | r)
_license = V.inj (Proxy :: Proxy "license") unit

_next :: forall r. Variant ("next" :: Unit | r)
_next = V.inj (Proxy :: Proxy "next") unit

_nofollow :: forall r. Variant ("nofollow" :: Unit | r)
_nofollow = V.inj (Proxy :: Proxy "nofollow") unit

_noreferrer :: forall r. Variant ("noreferrer" :: Unit | r)
_noreferrer = V.inj (Proxy :: Proxy "noreferrer") unit

_noopener :: forall r. Variant ("noopener" :: Unit | r)
_noopener = V.inj (Proxy :: Proxy "noopener") unit

_prev :: forall r. Variant ("prev" :: Unit | r)
_prev = V.inj (Proxy :: Proxy "prev") unit

_search :: forall r. Variant ("search" :: Unit | r)
_search = V.inj (Proxy :: Proxy "search") unit

_tag :: forall r. Variant ("tag" :: Unit | r)
_tag = V.inj (Proxy :: Proxy "tag") unit

_allowForms :: forall r. Variant ("allow-forms" :: Unit | r)
_allowForms = V.inj (Proxy :: Proxy "allow-forms") unit

_allowModals :: forall r. Variant ("allow-modals" :: Unit | r)
_allowModals = V.inj (Proxy :: Proxy "allow-modals") unit

_allowOrientationLock :: forall r. Variant ("allow-orientation-lock" :: Unit | r)
_allowOrientationLock = V.inj (Proxy :: Proxy "allow-orientation-lock") unit

_allowPointerLock :: forall r. Variant ("allow-pointer-lock" :: Unit | r)
_allowPointerLock = V.inj (Proxy :: Proxy "allow-pointer-lock") unit

_allowPopups :: forall r. Variant ("allow-popups" :: Unit | r)
_allowPopups = V.inj (Proxy :: Proxy "allow-popups") unit

_allowPopupsToEscapeSandbox :: forall r. Variant ("allow-popups-to-escape-sandbox" :: Unit | r)
_allowPopupsToEscapeSandbox = V.inj (Proxy :: Proxy "allow-popups-to-escape-sandbox") unit

_allowPresentation :: forall r. Variant ("allow-presentation" :: Unit | r)
_allowPresentation = V.inj (Proxy :: Proxy "allow-presentation") unit

_allowSameOrigin :: forall r. Variant ("allow-same-origin" :: Unit | r)
_allowSameOrigin = V.inj (Proxy :: Proxy "allow-same-origin") unit

_allowScripts :: forall r. Variant ("allow-scripts" :: Unit | r)
_allowScripts = V.inj (Proxy :: Proxy "allow-scripts") unit

_allowTopNavigation :: forall r. Variant ("allow-top-navigation" :: Unit | r)
_allowTopNavigation = V.inj (Proxy :: Proxy "allow-top-navigation") unit

_allowTopNavigationByUserActivation
  :: forall r. Variant ("allow-top-navigation-by-user-activation" :: Unit | r)
_allowTopNavigationByUserActivation = V.inj
  (Proxy :: Proxy "allow-top-navigation-by-user-activation")
  unit

_row :: forall r. Variant ("row" :: Unit | r)
_row = V.inj (Proxy :: Proxy "row") unit

_col :: forall r. Variant ("col" :: Unit | r)
_col = V.inj (Proxy :: Proxy "col") unit

_rowgroup :: forall r. Variant ("rowgroup" :: Unit | r)
_rowgroup = V.inj (Proxy :: Proxy "rowgroup") unit

_colgroup :: forall r. Variant ("colgroup" :: Unit | r)
_colgroup = V.inj (Proxy :: Proxy "colgroup") unit
