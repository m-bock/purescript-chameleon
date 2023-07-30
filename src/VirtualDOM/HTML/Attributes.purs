module Chameleon.HTML.Attributes where

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

-- | Specifies the types of files that the server accepts (only for type="file")
accept :: forall a. String -> Prop a
accept val = Attr "accept" (toAttrib val)

-- | Specifies the character encodings that are to be used for the form submission
acceptCharset :: forall a. String -> Prop a
acceptCharset val = Attr "accept-charset" (toAttrib val)

-- | Specifies a shortcut key to activate/focus an element
accesskey :: forall a. String -> Prop a
accesskey val = Attr "accesskey" (toAttrib val)

-- | Specifies where to send the form-data when a form is submitted
action :: forall a. String -> Prop a
action val = Attr "action" (toAttrib val)

-- | Not supported in HTML5. Specifies the alignment according to surrounding elements. Use CSS instead
align :: forall a. String -> Prop a
align val = Attr "align" (toAttrib val)

-- | Specifies a feature-policy for the iframe
allow :: forall a. String -> Prop a
allow val = Attr "allow" (toAttrib val)

-- | Specifies an alternate text when the original element fails to display
alt :: forall a. String -> Prop a
alt val = Attr "alt" (toAttrib val)

-- | Specifies that the script is executed asynchronously (only for external scripts)
async :: forall a. Boolean -> Prop a
async val = Attr "async" (toAttrib val)

-- | Controls whether and how text input is automatically capitalized as it is entered/edited by the user
autocapitalize :: forall a. String -> Prop a
autocapitalize val = Attr "autocapitalize" (toAttrib val)

-- | Specifies whether the <form> or the <input> element should have autocomplete enabled
autocomplete :: forall a. String -> Prop a
autocomplete val = Attr "autocomplete" (toAttrib val)

-- | Specifies that the element should automatically get focus when the page loads
autofocus :: forall a. Boolean -> Prop a
autofocus val = Attr "autofocus" (toAttrib val)

-- | Specifies that the audio/video will start playing as soon as it is ready
autoplay :: forall a. Boolean -> Prop a
autoplay val = Attr "autoplay" (toAttrib val)

-- | Not supported in HTML5. Specifies the URL of an image to be used as the background for the iframe
background :: forall a. String -> Prop a
background val = Attr "background" (toAttrib val)

-- | Specifies that the video/audio will be recorded (instead of a live stream)
capture :: forall a. Variant ("user" :: Unit, "environment" :: Unit) -> Prop a
capture val = Attr "capture" (toAttrib val)

-- | Specifies the character encoding
charset :: forall a. String -> Prop a
charset val = Attr "charset" (toAttrib val)

-- | Specifies that an <input> element should be pre-selected when the page loads (for type="checkbox" or type="radio")
checked :: forall a. Boolean -> Prop a
checked val = Attr "checked" (toAttrib val)

-- | Specifies a URL which explains the quote/deleted/inserted text
cite :: forall a. String -> Prop a
cite val = Attr "cite" (toAttrib val)

-- | Specifies one or more classnames for an element (refers to a class in a style sheet)
className :: forall a. String -> Prop a
className val = Attr "className" (toAttrib val)

-- | Not supported in HTML5. Specifies the URL of the plugin used to display the <object>
code :: forall a. String -> Prop a
code val = Attr "code" (toAttrib val)

-- | Not supported in HTML5. Specifies the URL of the plugin used to display the <object>
codebase :: forall a. String -> Prop a
codebase val = Attr "codebase" (toAttrib val)

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

-- | Specifies a context menu for an element. The context menu appears when a user right-clicks on the element
contextmenu :: forall a. String -> Prop a
contextmenu val = Attr "contextmenu" (toAttrib val)

-- | Specifies that audio/video controls should be displayed (such as a play/pause button etc)
controls :: forall a. Boolean -> Prop a
controls val = Attr "controls" (toAttrib val)

-- | Specifies the coordinates of the area
coords :: forall a. String -> Prop a
coords val = Attr "coords" (toAttrib val)

-- | Specifies how the element handles cross-origin requests
crossorigin :: forall a. Variant ("anonymous" :: Unit, "use-credentials" :: Unit) -> Prop a
crossorigin val = Attr "crossorigin" (toAttrib val)

-- | Specifies the URL of the resource to be used by the object
data_ :: forall a. String -> Prop a
data_ val = Attr "data" (toAttrib val)

-- | Specifies the date and time
datetime :: forall a. String -> Prop a
datetime val = Attr "datetime" (toAttrib val)

-- | Specifies the decoding algorithm
decoding :: forall a. Variant ("async" :: Unit, "auto" :: Unit, "sync" :: Unit) -> Prop a
decoding val = Attr "decoding" (toAttrib val)

-- | Specifies that the track is to be enabled if the user's preferences do not indicate that another track would be more appropriate
default :: forall a. Boolean -> Prop a
default val = Attr "default" (toAttrib val)

-- | Specifies that the script is executed when the page has finished parsing (only for external scripts)
defer :: forall a. Boolean -> Prop a
defer val = Attr "defer" (toAttrib val)

-- | Specifies the text direction for the content in an element
dir :: forall a. Variant ("ltr" :: Unit, "rtl" :: Unit, "auto" :: Unit) -> Prop a
dir val = Attr "dir" (toAttrib val)

-- | Specifies that the text direction will be submitted
dirname :: forall a. String -> Prop a
dirname val = Attr "dirname" (toAttrib val)

-- | Specifies that the specified element/group of elements should be disabled
disabled :: forall a. Boolean -> Prop a
disabled val = Attr "disabled" (toAttrib val)

-- | Specifies that the target will be downloaded when a user clicks on the hyperlink
download :: forall a. Boolean -> Prop a
download val = Attr "download" (toAttrib val)

-- | Specifies whether an element is draggable or not
draggable :: forall a. Boolean -> Prop a
draggable val = Attr "draggable" (toAttrib val)

-- | Specifies how the form-data should be encoded when submitting it to the server (only for method="post")
enctype
  :: forall a
   . Variant
       ( "application/x-www-form-urlencoded" :: Unit
       , "multipart/form-data" :: Unit
       , "text/plain" :: Unit
       )
  -> Prop a
enctype val = Attr "enctype" (toAttrib val)

-- | Specifies what action to take when the user hits the Enter key
enterkeyhint :: forall a. String -> Prop a
enterkeyhint val = Attr "enterkeyhint" (toAttrib val)

-- | Specifies which form element(s) a label/calculation is bound to
for :: forall a. String -> Prop a
for val = Attr "for" (toAttrib val)

-- | Specifies one or more forms the <input> element belongs to
form :: forall a. String -> Prop a
form val = Attr "form" (toAttrib val)

-- | Specifies where to send the form-data when a form is submitted. Only for type="submit"
formaction :: forall a. String -> Prop a
formaction val = Attr "formaction" (toAttrib val)

-- | Specifies how form-data should be encoded before sending it to a server. Only for type="submit"
formenctype
  :: forall a
   . Variant
       ( "application/x-www-form-urlencoded" :: Unit
       , "multipart/form-data" :: Unit
       , "text/plain" :: Unit
       )
  -> Prop a
formenctype val = Attr "formenctype" (toAttrib val)

-- | Specifies how to send the form-data (which HTTP method to use). Only for type="submit"
formmethod :: forall a. Variant ("get" :: Unit, "post" :: Unit) -> Prop a
formmethod val = Attr "formmethod" (toAttrib val)

-- | Specifies that the form-data should not be validated on submission. Only for type="submit"
formnovalidate :: forall a. Boolean -> Prop a
formnovalidate val = Attr "formnovalidate" (toAttrib val)

-- | Specifies where to display the response after submitting the form. Only for type="submit"
formtarget
  :: forall a
   . Variant
       ("_blank" :: Unit, "_self" :: Unit, "_parent" :: Unit, "_top" :: Unit, "framename" :: String)
  -> Prop a
formtarget val = Attr "formtarget" (toAttrib val)

-- | Specifies one or more headers cells a cell is related to
headers :: forall a. String -> Prop a
headers val = Attr "headers" (toAttrib val)

-- | Specifies that an element is not yet, or is no longer, relevant
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
httpEquiv
  :: forall a
   . Variant ("content-type" :: Unit, "default-style" :: Unit, "refresh" :: Unit)
  -> Prop a
httpEquiv val = Attr "http-equiv" (toAttrib val)

-- | Specifies a unique id for an element
id :: forall a. String -> Prop a
id val = Attr "id" (toAttrib val)

-- | Specifies the integrity content security policy (CSP) for the resource
integrity :: forall a. String -> Prop a
integrity val = Attr "integrity" (toAttrib val)

-- | Specifies what kind of input mechanism would be most helpful for users entering content into the element
inputmode :: forall a. String -> Prop a
inputmode val = Attr "inputmode" (toAttrib val)

-- | Specifies an image as a server-side image-map
ismap :: forall a. Boolean -> Prop a
ismap val = Attr "ismap" (toAttrib val)

-- | Specifies the name of the property the element represents
itemprop :: forall a. String -> Prop a
itemprop val = Attr "itemprop" (toAttrib val)

-- | Specifies the type of key generated
keytype :: forall a. String -> Prop a
keytype val = Attr "keytype" (toAttrib val)

-- | Specifies the kind of text track
kind
  :: forall a
   . Variant
       ( "subtitles" :: Unit
       , "captions" :: Unit
       , "descriptions" :: Unit
       , "chapters" :: Unit
       , "metadata" :: Unit
       )
  -> Prop a
kind val = Attr "kind" (toAttrib val)

-- | Specifies the title of the text track
label :: forall a. String -> Prop a
label val = Attr "label" (toAttrib val)

-- | Specifies the language of the element's content
lang :: forall a. String -> Prop a
lang val = Attr "lang" (toAttrib val)

-- | Specifies how the element handles lazy loading of images
loading :: forall a. Variant ("auto" :: Unit, "eager" :: Unit, "lazy" :: Unit) -> Prop a
loading val = Attr "loading" (toAttrib val)

-- | Refers to a <datalist> element that contains pre-defined options for an <input> element
list :: forall a. String -> Prop a
list val = Attr "list" (toAttrib val)

-- | Specifies that the audio/video will start over again, every time it is finished
loop :: forall a. Boolean -> Prop a
loop val = Attr "loop" (toAttrib val)

-- | Specifies the range that is considered to be a low value
low :: forall a. Number -> Prop a
low val = Attr "low" (toAttrib val)

-- | Specifies the maximum value
max :: forall a. Number -> Prop a
max val = Attr "max" (toAttrib val)

-- | Specifies the maximum number of characters allowed in an element
maxlength :: forall a. Int -> Prop a
maxlength val = Attr "maxlength" (toAttrib val)

-- | Specifies the minimum number of characters allowed in an element
minlength :: forall a. Int -> Prop a
minlength val = Attr "minlength" (toAttrib val)

-- | Specifies what media/device the linked document is optimized for
media :: forall a. String -> Prop a
media val = Attr "media" (toAttrib val)

-- | Specifies the HTTP method to use when sending form-data
method :: forall a. Variant ("get" :: Unit, "post" :: Unit) -> Prop a
method val = Attr "method" (toAttrib val)

-- | Specifies a minimum value
min :: forall a. Number -> Prop a
min val = Attr "min" (toAttrib val)

-- | Specifies that a user can enter more than one value
multiple :: forall a. Boolean -> Prop a
multiple val = Attr "multiple" (toAttrib val)

-- | Specifies that the audio output of the video should be muted
muted :: forall a. Boolean -> Prop a
muted val = Attr "muted" (toAttrib val)

-- | Specifies the name of the element
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

-- | Specifies a regular expression that an <input> element's value is checked against
pattern :: forall a. String -> Prop a
pattern val = Attr "pattern" (toAttrib val)

-- | Specifies a space-separated list of URLs to which, when the hyperlink is followed, POST requests with the body PING will be sent by the browser (in the background). Typically used for tracking.
ping :: forall a. String -> Prop a
ping val = Attr "ping" (toAttrib val)

-- | Specifies a short hint that describes the expected value of the element
placeholder :: forall a. String -> Prop a
placeholder val = Attr "placeholder" (toAttrib val)

-- | Specifies that the video will start playing as soon as it is ready
playsinline :: forall a. Boolean -> Prop a
playsinline val = Attr "playsinline" (toAttrib val)

-- | Specifies an image to be shown while the video is downloading, or until the user hits the play button
poster :: forall a. String -> Prop a
poster val = Attr "poster" (toAttrib val)

-- | Specifies if and how the author thinks the audio/video should be loaded when the page loads
preload :: forall a. Variant ("auto" :: Unit, "metadata" :: Unit, "none" :: Unit) -> Prop a
preload val = Attr "preload" (toAttrib val)

-- | Specifies that the element is read-only
readonly :: forall a. Boolean -> Prop a
readonly val = Attr "readonly" (toAttrib val)

-- | Specifies which referrer is sent when fetching the resource
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

-- | Specifies the relationship between the current document and the linked document
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

-- | Specifies that the element must be filled out before submitting the form
required :: forall a. Boolean -> Prop a
required val = Attr "required" (toAttrib val)

-- | Specifies that the list order should be descending (9,8,7...)
reversed :: forall a. Boolean -> Prop a
reversed val = Attr "reversed" (toAttrib val)

-- | Specifies the role of the element
role :: forall a. String -> Prop a
role val = Attr "role" (toAttrib val)

-- | Specifies the visible number of lines in a text area
rows :: forall a. Number -> Prop a
rows val = Attr "rows" (toAttrib val)

-- | Specifies the number of rows a table cell should span
rowspan :: forall a. Number -> Prop a
rowspan val = Attr "rowspan" (toAttrib val)

-- | Enables an extra set of restrictions for the content in an <iframe>
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
       )
  -> Prop a
sandbox val = Attr "sandbox" (toAttrib val)

-- | Specifies whether a header cell is a header for a column, row, or group of columns or rows
scope
  :: forall a
   . Variant ("col" :: Unit, "colgroup" :: Unit, "row" :: Unit, "rowgroup" :: Unit)
  -> Prop a
scope val = Attr "scope" (toAttrib val)

-- | Specifies that the styles only apply to this element's parent element and that element's child elements
scoped :: forall a. Boolean -> Prop a
scoped val = Attr "scoped" (toAttrib val)

-- | Specifies that an option should be pre-selected when the page loads
selected :: forall a. Boolean -> Prop a
selected val = Attr "selected" (toAttrib val)

-- | Specifies the shape of the area
shape
  :: forall a
   . Variant ("default" :: Unit, "rect" :: Unit, "circle" :: Unit, "poly" :: Unit)
  -> Prop a
shape val = Attr "shape" (toAttrib val)

-- | Specifies the width, in characters (for <input>) or specifies the number of visible options (for <select>)
size :: forall a. Number -> Prop a
size val = Attr "size" (toAttrib val)

-- | Specifies the size of the linked resource
sizes :: forall a. String -> Prop a
sizes val = Attr "sizes" (toAttrib val)

-- | Specifies the name of the slot the element's content is going to
slot :: forall a. String -> Prop a
slot val = Attr "slot" (toAttrib val)

-- | Specifies the number of columns to span
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

-- | Specifies the URL of the image to use in different situations
srcset :: forall a. String -> Prop a
srcset val = Attr "srcset" (toAttrib val)

-- | Specifies the start value of an ordered list
start :: forall a. Number -> Prop a
start val = Attr "start" (toAttrib val)

-- | Specifies the legal number intervals for an input field
step :: forall a. Number -> Prop a
step val = Attr "step" (toAttrib val)

-- | Specifies an inline CSS style for an element
style :: forall a. String -> Prop a
style val = Attr "style" (toAttrib val)

-- | Specifies a summary of the content of a table
summary :: forall a. String -> Prop a
summary val = Attr "summary" (toAttrib val)

-- | Specifies the tabbing order of an element
tabindex :: forall a. Number -> Prop a
tabindex val = Attr "tabindex" (toAttrib val)

-- | Specifies where to display the linked URL
target
  :: forall a
   . Variant
       ("_blank" :: Unit, "_parent" :: Unit, "_self" :: Unit, "_top" :: Unit, "framename" :: String)
  -> Prop a
target val = Attr "target" (toAttrib val)

-- | Specifies extra information about an element
title :: forall a. String -> Prop a
title val = Attr "title" (toAttrib val)

-- | Specifies whether the content of an element should be translated or not
translate :: forall a. Boolean -> Prop a
translate val = Attr "translate" (toAttrib val)

-- | Specifies the type of element
type_ :: forall a. String -> Prop a
type_ val = Attr "type" (toAttrib val)

-- | Specifies an image as a client-side image-map
usemap :: forall a. String -> Prop a
usemap val = Attr "usemap" (toAttrib val)

-- | Specifies the value of the element
value :: forall a. String -> Prop a
value val = Attr "value" (toAttrib val)

-- | Specifies how the text in a text area is to be wrapped when submitted in a form
wrap :: forall a. Variant ("hard" :: Unit, "soft" :: Unit) -> Prop a
wrap val = Attr "wrap" (toAttrib val)

------------------------------------------------------------------------------- 
--- Variant Constructors
-------------------------------------------------------------------------------

_user :: forall r. Variant ("user" :: Unit | r)
_user = V.inj (Proxy :: Proxy "user") unit

_environment :: forall r. Variant ("environment" :: Unit | r)
_environment = V.inj (Proxy :: Proxy "environment") unit

_anonymous :: forall r. Variant ("anonymous" :: Unit | r)
_anonymous = V.inj (Proxy :: Proxy "anonymous") unit

_useCredentials :: forall r. Variant ("use-credentials" :: Unit | r)
_useCredentials = V.inj (Proxy :: Proxy "use-credentials") unit

_async :: forall r. Variant ("async" :: Unit | r)
_async = V.inj (Proxy :: Proxy "async") unit

_auto :: forall r. Variant ("auto" :: Unit | r)
_auto = V.inj (Proxy :: Proxy "auto") unit

_sync :: forall r. Variant ("sync" :: Unit | r)
_sync = V.inj (Proxy :: Proxy "sync") unit

_ltr :: forall r. Variant ("ltr" :: Unit | r)
_ltr = V.inj (Proxy :: Proxy "ltr") unit

_rtl :: forall r. Variant ("rtl" :: Unit | r)
_rtl = V.inj (Proxy :: Proxy "rtl") unit

_application_xWwwFormUrlencoded
  :: forall r. Variant ("application/x-www-form-urlencoded" :: Unit | r)
_application_xWwwFormUrlencoded = V.inj (Proxy :: Proxy "application/x-www-form-urlencoded") unit

_multipart_formData :: forall r. Variant ("multipart/form-data" :: Unit | r)
_multipart_formData = V.inj (Proxy :: Proxy "multipart/form-data") unit

_text_plain :: forall r. Variant ("text/plain" :: Unit | r)
_text_plain = V.inj (Proxy :: Proxy "text/plain") unit

_get :: forall r. Variant ("get" :: Unit | r)
_get = V.inj (Proxy :: Proxy "get") unit

_post :: forall r. Variant ("post" :: Unit | r)
_post = V.inj (Proxy :: Proxy "post") unit

__blank :: forall r. Variant ("_blank" :: Unit | r)
__blank = V.inj (Proxy :: Proxy "_blank") unit

__self :: forall r. Variant ("_self" :: Unit | r)
__self = V.inj (Proxy :: Proxy "_self") unit

__parent :: forall r. Variant ("_parent" :: Unit | r)
__parent = V.inj (Proxy :: Proxy "_parent") unit

__top :: forall r. Variant ("_top" :: Unit | r)
__top = V.inj (Proxy :: Proxy "_top") unit

_framename :: forall r. String -> Variant ("framename" :: String | r)
_framename = V.inj (Proxy :: Proxy "framename")

_contentType :: forall r. Variant ("content-type" :: Unit | r)
_contentType = V.inj (Proxy :: Proxy "content-type") unit

_defaultStyle :: forall r. Variant ("default-style" :: Unit | r)
_defaultStyle = V.inj (Proxy :: Proxy "default-style") unit

_refresh :: forall r. Variant ("refresh" :: Unit | r)
_refresh = V.inj (Proxy :: Proxy "refresh") unit

_subtitles :: forall r. Variant ("subtitles" :: Unit | r)
_subtitles = V.inj (Proxy :: Proxy "subtitles") unit

_captions :: forall r. Variant ("captions" :: Unit | r)
_captions = V.inj (Proxy :: Proxy "captions") unit

_descriptions :: forall r. Variant ("descriptions" :: Unit | r)
_descriptions = V.inj (Proxy :: Proxy "descriptions") unit

_chapters :: forall r. Variant ("chapters" :: Unit | r)
_chapters = V.inj (Proxy :: Proxy "chapters") unit

_metadata :: forall r. Variant ("metadata" :: Unit | r)
_metadata = V.inj (Proxy :: Proxy "metadata") unit

_eager :: forall r. Variant ("eager" :: Unit | r)
_eager = V.inj (Proxy :: Proxy "eager") unit

_lazy :: forall r. Variant ("lazy" :: Unit | r)
_lazy = V.inj (Proxy :: Proxy "lazy") unit

_none :: forall r. Variant ("none" :: Unit | r)
_none = V.inj (Proxy :: Proxy "none") unit

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

_col :: forall r. Variant ("col" :: Unit | r)
_col = V.inj (Proxy :: Proxy "col") unit

_colgroup :: forall r. Variant ("colgroup" :: Unit | r)
_colgroup = V.inj (Proxy :: Proxy "colgroup") unit

_row :: forall r. Variant ("row" :: Unit | r)
_row = V.inj (Proxy :: Proxy "row") unit

_rowgroup :: forall r. Variant ("rowgroup" :: Unit | r)
_rowgroup = V.inj (Proxy :: Proxy "rowgroup") unit

_default :: forall r. Variant ("default" :: Unit | r)
_default = V.inj (Proxy :: Proxy "default") unit

_rect :: forall r. Variant ("rect" :: Unit | r)
_rect = V.inj (Proxy :: Proxy "rect") unit

_circle :: forall r. Variant ("circle" :: Unit | r)
_circle = V.inj (Proxy :: Proxy "circle") unit

_poly :: forall r. Variant ("poly" :: Unit | r)
_poly = V.inj (Proxy :: Proxy "poly") unit

_hard :: forall r. Variant ("hard" :: Unit | r)
_hard = V.inj (Proxy :: Proxy "hard") unit

_soft :: forall r. Variant ("soft" :: Unit | r)
_soft = V.inj (Proxy :: Proxy "soft") unit
