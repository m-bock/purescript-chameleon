module Chameleon.HTML.KeyedElements where

import Data.Tuple.Nested (type (/\))
import Chameleon.Class (class Html, Key, ElemName(..), Prop, elemKeyed)

-- | Defines a hyperlink
a :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
a props children = elemKeyed (ElemName "a") props children

-- | Defines a hyperlink [No Attributes]
a_ :: forall html a. Html html => Array (Key /\ html a) -> html a
a_ children = elemKeyed (ElemName "a") [] children

-- | Defines an abbreviation
abbr :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
abbr props children = elemKeyed (ElemName "abbr") props children

-- | Defines an abbreviation [No Attributes]
abbr_ :: forall html a. Html html => Array (Key /\ html a) -> html a
abbr_ children = elemKeyed (ElemName "abbr") [] children

-- | Defines contact information for the author/owner of a document
address :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
address props children = elemKeyed (ElemName "address") props children

-- | Defines contact information for the author/owner of a document [No Attributes]
address_ :: forall html a. Html html => Array (Key /\ html a) -> html a
address_ children = elemKeyed (ElemName "address") [] children

-- | Defines an area inside an image map
area :: forall html a. Html html => Array (Prop a) -> html a
area props = elemKeyed (ElemName "area") props []

-- | Defines an area inside an image map [No Attributes]
area_ :: forall html a. Html html => html a
area_ = elemKeyed (ElemName "area") [] []

-- | Defines self-contained content, like blog posts or news articles
article :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
article props children = elemKeyed (ElemName "article") props children

-- | Defines self-contained content, like blog posts or news articles [No Attributes]
article_ :: forall html a. Html html => Array (Key /\ html a) -> html a
article_ children = elemKeyed (ElemName "article") [] children

-- | Defines content aside from the content it is placed in
aside :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
aside props children = elemKeyed (ElemName "aside") props children

-- | Defines content aside from the content it is placed in [No Attributes]
aside_ :: forall html a. Html html => Array (Key /\ html a) -> html a
aside_ children = elemKeyed (ElemName "aside") [] children

-- | Defines sound content, like music or other audio streams
audio :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
audio props children = elemKeyed (ElemName "audio") props children

-- | Defines sound content, like music or other audio streams [No Attributes]
audio_ :: forall html a. Html html => Array (Key /\ html a) -> html a
audio_ children = elemKeyed (ElemName "audio") [] children

-- | Defines bold text
b :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
b props children = elemKeyed (ElemName "b") props children

-- | Defines bold text [No Attributes]
b_ :: forall html a. Html html => Array (Key /\ html a) -> html a
b_ children = elemKeyed (ElemName "b") [] children

-- | Defines the base URL for all relative URLs in a document
base :: forall html a. Html html => Array (Prop a) -> html a
base props = elemKeyed (ElemName "base") props []

-- | Defines the base URL for all relative URLs in a document [No Attributes]
base_ :: forall html a. Html html => html a
base_ = elemKeyed (ElemName "base") [] []

-- | Defines text directionality for its children
bdi :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
bdi props children = elemKeyed (ElemName "bdi") props children

-- | Defines text directionality for its children [No Attributes]
bdi_ :: forall html a. Html html => Array (Key /\ html a) -> html a
bdi_ children = elemKeyed (ElemName "bdi") [] children

-- | Defines text directionality
bdo :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
bdo props children = elemKeyed (ElemName "bdo") props children

-- | Defines text directionality [No Attributes]
bdo_ :: forall html a. Html html => Array (Key /\ html a) -> html a
bdo_ children = elemKeyed (ElemName "bdo") [] children

-- | Defines a section that is quoted from another source
blockquote :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
blockquote props children = elemKeyed (ElemName "blockquote") props children

-- | Defines a section that is quoted from another source [No Attributes]
blockquote_ :: forall html a. Html html => Array (Key /\ html a) -> html a
blockquote_ children = elemKeyed (ElemName "blockquote") [] children

-- | Defines the document's body
body :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
body props children = elemKeyed (ElemName "body") props children

-- | Defines the document's body [No Attributes]
body_ :: forall html a. Html html => Array (Key /\ html a) -> html a
body_ children = elemKeyed (ElemName "body") [] children

-- | Defines a single line break
br :: forall html a. Html html => Array (Prop a) -> html a
br props = elemKeyed (ElemName "br") props []

-- | Defines a single line break [No Attributes]
br_ :: forall html a. Html html => html a
br_ = elemKeyed (ElemName "br") [] []

-- | Defines a clickable button
button :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
button props children = elemKeyed (ElemName "button") props children

-- | Defines a clickable button [No Attributes]
button_ :: forall html a. Html html => Array (Key /\ html a) -> html a
button_ children = elemKeyed (ElemName "button") [] children

-- | Defines an area that can be used to draw graphics using JavaScript
canvas :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
canvas props children = elemKeyed (ElemName "canvas") props children

-- | Defines an area that can be used to draw graphics using JavaScript [No Attributes]
canvas_ :: forall html a. Html html => Array (Key /\ html a) -> html a
canvas_ children = elemKeyed (ElemName "canvas") [] children

-- | Defines a table caption
caption :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
caption props children = elemKeyed (ElemName "caption") props children

-- | Defines a table caption [No Attributes]
caption_ :: forall html a. Html html => Array (Key /\ html a) -> html a
caption_ children = elemKeyed (ElemName "caption") [] children

-- | Defines the title of a work
cite :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
cite props children = elemKeyed (ElemName "cite") props children

-- | Defines the title of a work [No Attributes]
cite_ :: forall html a. Html html => Array (Key /\ html a) -> html a
cite_ children = elemKeyed (ElemName "cite") [] children

-- | Defines a piece of computer code
code :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
code props children = elemKeyed (ElemName "code") props children

-- | Defines a piece of computer code [No Attributes]
code_ :: forall html a. Html html => Array (Key /\ html a) -> html a
code_ children = elemKeyed (ElemName "code") [] children

-- | Defines attributes for table columns
col :: forall html a. Html html => Array (Prop a) -> html a
col props = elemKeyed (ElemName "col") props []

-- | Defines attributes for table columns [No Attributes]
col_ :: forall html a. Html html => html a
col_ = elemKeyed (ElemName "col") [] []

-- | Defines attributes for a group of table columns
colgroup :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
colgroup props children = elemKeyed (ElemName "colgroup") props children

-- | Defines attributes for a group of table columns [No Attributes]
colgroup_ :: forall html a. Html html => Array (Key /\ html a) -> html a
colgroup_ children = elemKeyed (ElemName "colgroup") [] children

-- | Defines machine-readable data
data_ :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
data_ props children = elemKeyed (ElemName "data") props children

-- | Defines machine-readable data [No Attributes]
data__ :: forall html a. Html html => Array (Key /\ html a) -> html a
data__ children = elemKeyed (ElemName "data") [] children

-- | Defines a list of pre-defined options for input controls
datalist :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
datalist props children = elemKeyed (ElemName "datalist") props children

-- | Defines a list of pre-defined options for input controls [No Attributes]
datalist_ :: forall html a. Html html => Array (Key /\ html a) -> html a
datalist_ children = elemKeyed (ElemName "datalist") [] children

-- | Defines a description/value of a term in a description list
dd :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
dd props children = elemKeyed (ElemName "dd") props children

-- | Defines a description/value of a term in a description list [No Attributes]
dd_ :: forall html a. Html html => Array (Key /\ html a) -> html a
dd_ children = elemKeyed (ElemName "dd") [] children

-- | Defines text that has been deleted from a document
del :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
del props children = elemKeyed (ElemName "del") props children

-- | Defines text that has been deleted from a document [No Attributes]
del_ :: forall html a. Html html => Array (Key /\ html a) -> html a
del_ children = elemKeyed (ElemName "del") [] children

-- | Defines additional details that the user can view or hide
details :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
details props children = elemKeyed (ElemName "details") props children

-- | Defines additional details that the user can view or hide [No Attributes]
details_ :: forall html a. Html html => Array (Key /\ html a) -> html a
details_ children = elemKeyed (ElemName "details") [] children

-- | Defines a definition term
dfn :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
dfn props children = elemKeyed (ElemName "dfn") props children

-- | Defines a definition term [No Attributes]
dfn_ :: forall html a. Html html => Array (Key /\ html a) -> html a
dfn_ children = elemKeyed (ElemName "dfn") [] children

-- | Defines a dialog box or window
dialog :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
dialog props children = elemKeyed (ElemName "dialog") props children

-- | Defines a dialog box or window [No Attributes]
dialog_ :: forall html a. Html html => Array (Key /\ html a) -> html a
dialog_ children = elemKeyed (ElemName "dialog") [] children

-- | Defines a section of a document
div :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
div props children = elemKeyed (ElemName "div") props children

-- | Defines a section of a document [No Attributes]
div_ :: forall html a. Html html => Array (Key /\ html a) -> html a
div_ children = elemKeyed (ElemName "div") [] children

-- | Defines a description list
dl :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
dl props children = elemKeyed (ElemName "dl") props children

-- | Defines a description list [No Attributes]
dl_ :: forall html a. Html html => Array (Key /\ html a) -> html a
dl_ children = elemKeyed (ElemName "dl") [] children

-- | Defines a term in a description list
dt :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
dt props children = elemKeyed (ElemName "dt") props children

-- | Defines a term in a description list [No Attributes]
dt_ :: forall html a. Html html => Array (Key /\ html a) -> html a
dt_ children = elemKeyed (ElemName "dt") [] children

-- | Defines emphasized text
em :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
em props children = elemKeyed (ElemName "em") props children

-- | Defines emphasized text [No Attributes]
em_ :: forall html a. Html html => Array (Key /\ html a) -> html a
em_ children = elemKeyed (ElemName "em") [] children

-- | Defines a container for an external application or interactive content
embed :: forall html a. Html html => Array (Prop a) -> html a
embed props = elemKeyed (ElemName "embed") props []

-- | Defines a container for an external application or interactive content [No Attributes]
embed_ :: forall html a. Html html => html a
embed_ = elemKeyed (ElemName "embed") [] []

-- | Groups related form elements
fieldset :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
fieldset props children = elemKeyed (ElemName "fieldset") props children

-- | Groups related form elements [No Attributes]
fieldset_ :: forall html a. Html html => Array (Key /\ html a) -> html a
fieldset_ children = elemKeyed (ElemName "fieldset") [] children

-- | Defines a caption for a <figure> element
figcaption :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
figcaption props children = elemKeyed (ElemName "figcaption") props children

-- | Defines a caption for a <figure> element [No Attributes]
figcaption_ :: forall html a. Html html => Array (Key /\ html a) -> html a
figcaption_ children = elemKeyed (ElemName "figcaption") [] children

-- | Defines self-contained content, like images or diagrams
figure :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
figure props children = elemKeyed (ElemName "figure") props children

-- | Defines self-contained content, like images or diagrams [No Attributes]
figure_ :: forall html a. Html html => Array (Key /\ html a) -> html a
figure_ children = elemKeyed (ElemName "figure") [] children

-- | Defines a footer for a document or section
footer :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
footer props children = elemKeyed (ElemName "footer") props children

-- | Defines a footer for a document or section [No Attributes]
footer_ :: forall html a. Html html => Array (Key /\ html a) -> html a
footer_ children = elemKeyed (ElemName "footer") [] children

-- | Defines an HTML form for user input
form :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
form props children = elemKeyed (ElemName "form") props children

-- | Defines an HTML form for user input [No Attributes]
form_ :: forall html a. Html html => Array (Key /\ html a) -> html a
form_ children = elemKeyed (ElemName "form") [] children

-- | Defines a heading level 1
h1 :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
h1 props children = elemKeyed (ElemName "h1") props children

-- | Defines a heading level 1 [No Attributes]
h1_ :: forall html a. Html html => Array (Key /\ html a) -> html a
h1_ children = elemKeyed (ElemName "h1") [] children

-- | Defines a heading level 2
h2 :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
h2 props children = elemKeyed (ElemName "h2") props children

-- | Defines a heading level 2 [No Attributes]
h2_ :: forall html a. Html html => Array (Key /\ html a) -> html a
h2_ children = elemKeyed (ElemName "h2") [] children

-- | Defines a heading level 3
h3 :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
h3 props children = elemKeyed (ElemName "h3") props children

-- | Defines a heading level 3 [No Attributes]
h3_ :: forall html a. Html html => Array (Key /\ html a) -> html a
h3_ children = elemKeyed (ElemName "h3") [] children

-- | Defines a heading level 4
h4 :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
h4 props children = elemKeyed (ElemName "h4") props children

-- | Defines a heading level 4 [No Attributes]
h4_ :: forall html a. Html html => Array (Key /\ html a) -> html a
h4_ children = elemKeyed (ElemName "h4") [] children

-- | Defines a heading level 5
h5 :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
h5 props children = elemKeyed (ElemName "h5") props children

-- | Defines a heading level 5 [No Attributes]
h5_ :: forall html a. Html html => Array (Key /\ html a) -> html a
h5_ children = elemKeyed (ElemName "h5") [] children

-- | Defines a heading level 6
h6 :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
h6 props children = elemKeyed (ElemName "h6") props children

-- | Defines a heading level 6 [No Attributes]
h6_ :: forall html a. Html html => Array (Key /\ html a) -> html a
h6_ children = elemKeyed (ElemName "h6") [] children

-- | Defines information about the document
head :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
head props children = elemKeyed (ElemName "head") props children

-- | Defines information about the document [No Attributes]
head_ :: forall html a. Html html => Array (Key /\ html a) -> html a
head_ children = elemKeyed (ElemName "head") [] children

-- | Defines a header for a document or section
header :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
header props children = elemKeyed (ElemName "header") props children

-- | Defines a header for a document or section [No Attributes]
header_ :: forall html a. Html html => Array (Key /\ html a) -> html a
header_ children = elemKeyed (ElemName "header") [] children

-- | Defines a horizontal rule (line)
hr :: forall html a. Html html => Array (Prop a) -> html a
hr props = elemKeyed (ElemName "hr") props []

-- | Defines a horizontal rule (line) [No Attributes]
hr_ :: forall html a. Html html => html a
hr_ = elemKeyed (ElemName "hr") [] []

-- | Defines the root of an HTML document
html :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
html props children = elemKeyed (ElemName "html") props children

-- | Defines the root of an HTML document [No Attributes]
html_ :: forall html a. Html html => Array (Key /\ html a) -> html a
html_ children = elemKeyed (ElemName "html") [] children

-- | Defines italic text
i :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
i props children = elemKeyed (ElemName "i") props children

-- | Defines italic text [No Attributes]
i_ :: forall html a. Html html => Array (Key /\ html a) -> html a
i_ children = elemKeyed (ElemName "i") [] children

-- | Defines an inline frame for embedding external content
iframe :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
iframe props children = elemKeyed (ElemName "iframe") props children

-- | Defines an inline frame for embedding external content [No Attributes]
iframe_ :: forall html a. Html html => Array (Key /\ html a) -> html a
iframe_ children = elemKeyed (ElemName "iframe") [] children

-- | Defines an image
img :: forall html a. Html html => Array (Prop a) -> html a
img props = elemKeyed (ElemName "img") props []

-- | Defines an image [No Attributes]
img_ :: forall html a. Html html => html a
img_ = elemKeyed (ElemName "img") [] []

-- | Defines an input control
input :: forall html a. Html html => Array (Prop a) -> html a
input props = elemKeyed (ElemName "input") props []

-- | Defines an input control [No Attributes]
input_ :: forall html a. Html html => html a
input_ = elemKeyed (ElemName "input") [] []

-- | Defines text that has been inserted into a document
ins :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
ins props children = elemKeyed (ElemName "ins") props children

-- | Defines text that has been inserted into a document [No Attributes]
ins_ :: forall html a. Html html => Array (Key /\ html a) -> html a
ins_ children = elemKeyed (ElemName "ins") [] children

-- | Defines keyboard input
kbd :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
kbd props children = elemKeyed (ElemName "kbd") props children

-- | Defines keyboard input [No Attributes]
kbd_ :: forall html a. Html html => Array (Key /\ html a) -> html a
kbd_ children = elemKeyed (ElemName "kbd") [] children

-- | Defines a label for an <input> element
label :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
label props children = elemKeyed (ElemName "label") props children

-- | Defines a label for an <input> element [No Attributes]
label_ :: forall html a. Html html => Array (Key /\ html a) -> html a
label_ children = elemKeyed (ElemName "label") [] children

-- | Defines a caption for a <fieldset> element
legend :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
legend props children = elemKeyed (ElemName "legend") props children

-- | Defines a caption for a <fieldset> element [No Attributes]
legend_ :: forall html a. Html html => Array (Key /\ html a) -> html a
legend_ children = elemKeyed (ElemName "legend") [] children

-- | Defines a list item
li :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
li props children = elemKeyed (ElemName "li") props children

-- | Defines a list item [No Attributes]
li_ :: forall html a. Html html => Array (Key /\ html a) -> html a
li_ children = elemKeyed (ElemName "li") [] children

-- | Defines the relationship between a document and an external resource
link :: forall html a. Html html => Array (Prop a) -> html a
link props = elemKeyed (ElemName "link") props []

-- | Defines the relationship between a document and an external resource [No Attributes]
link_ :: forall html a. Html html => html a
link_ = elemKeyed (ElemName "link") [] []

-- | Defines the main content of a document
main :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
main props children = elemKeyed (ElemName "main") props children

-- | Defines the main content of a document [No Attributes]
main_ :: forall html a. Html html => Array (Key /\ html a) -> html a
main_ children = elemKeyed (ElemName "main") [] children

-- | Defines an image map
map :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
map props children = elemKeyed (ElemName "map") props children

-- | Defines an image map [No Attributes]
map_ :: forall html a. Html html => Array (Key /\ html a) -> html a
map_ children = elemKeyed (ElemName "map") [] children

-- | Defines marked/highlighted text
mark :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
mark props children = elemKeyed (ElemName "mark") props children

-- | Defines marked/highlighted text [No Attributes]
mark_ :: forall html a. Html html => Array (Key /\ html a) -> html a
mark_ children = elemKeyed (ElemName "mark") [] children

-- | Defines a list/menu of commands
menu :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
menu props children = elemKeyed (ElemName "menu") props children

-- | Defines a list/menu of commands [No Attributes]
menu_ :: forall html a. Html html => Array (Key /\ html a) -> html a
menu_ children = elemKeyed (ElemName "menu") [] children

-- | Defines metadata about an HTML document
meta :: forall html a. Html html => Array (Prop a) -> html a
meta props = elemKeyed (ElemName "meta") props []

-- | Defines metadata about an HTML document [No Attributes]
meta_ :: forall html a. Html html => html a
meta_ = elemKeyed (ElemName "meta") [] []

-- | Defines a scalar measurement within a known range
meter :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
meter props children = elemKeyed (ElemName "meter") props children

-- | Defines a scalar measurement within a known range [No Attributes]
meter_ :: forall html a. Html html => Array (Key /\ html a) -> html a
meter_ children = elemKeyed (ElemName "meter") [] children

-- | Defines a navigation menu
nav :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
nav props children = elemKeyed (ElemName "nav") props children

-- | Defines a navigation menu [No Attributes]
nav_ :: forall html a. Html html => Array (Key /\ html a) -> html a
nav_ children = elemKeyed (ElemName "nav") [] children

-- | Defines an alternate content for users that do not support client-side scripts
noscript :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
noscript props children = elemKeyed (ElemName "noscript") props children

-- | Defines an alternate content for users that do not support client-side scripts [No Attributes]
noscript_ :: forall html a. Html html => Array (Key /\ html a) -> html a
noscript_ children = elemKeyed (ElemName "noscript") [] children

-- | Defines a container for external application or interactive content
object :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
object props children = elemKeyed (ElemName "object") props children

-- | Defines a container for external application or interactive content [No Attributes]
object_ :: forall html a. Html html => Array (Key /\ html a) -> html a
object_ children = elemKeyed (ElemName "object") [] children

-- | Defines an ordered list
ol :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
ol props children = elemKeyed (ElemName "ol") props children

-- | Defines an ordered list [No Attributes]
ol_ :: forall html a. Html html => Array (Key /\ html a) -> html a
ol_ children = elemKeyed (ElemName "ol") [] children

-- | Defines a group of related options in a drop-down list
optgroup :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
optgroup props children = elemKeyed (ElemName "optgroup") props children

-- | Defines a group of related options in a drop-down list [No Attributes]
optgroup_ :: forall html a. Html html => Array (Key /\ html a) -> html a
optgroup_ children = elemKeyed (ElemName "optgroup") [] children

-- | Defines an option in a drop-down list
option :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
option props children = elemKeyed (ElemName "option") props children

-- | Defines an option in a drop-down list [No Attributes]
option_ :: forall html a. Html html => Array (Key /\ html a) -> html a
option_ children = elemKeyed (ElemName "option") [] children

-- | Defines the result of a calculation
output :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
output props children = elemKeyed (ElemName "output") props children

-- | Defines the result of a calculation [No Attributes]
output_ :: forall html a. Html html => Array (Key /\ html a) -> html a
output_ children = elemKeyed (ElemName "output") [] children

-- | Defines a paragraph
p :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
p props children = elemKeyed (ElemName "p") props children

-- | Defines a paragraph [No Attributes]
p_ :: forall html a. Html html => Array (Key /\ html a) -> html a
p_ children = elemKeyed (ElemName "p") [] children

-- | Defines a parameter for an object
param :: forall html a. Html html => Array (Prop a) -> html a
param props = elemKeyed (ElemName "param") props []

-- | Defines a parameter for an object [No Attributes]
param_ :: forall html a. Html html => html a
param_ = elemKeyed (ElemName "param") [] []

-- | Defines a container for multiple image resources
picture :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
picture props children = elemKeyed (ElemName "picture") props children

-- | Defines a container for multiple image resources [No Attributes]
picture_ :: forall html a. Html html => Array (Key /\ html a) -> html a
picture_ children = elemKeyed (ElemName "picture") [] children

-- | Defines preformatted text
pre :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
pre props children = elemKeyed (ElemName "pre") props children

-- | Defines preformatted text [No Attributes]
pre_ :: forall html a. Html html => Array (Key /\ html a) -> html a
pre_ children = elemKeyed (ElemName "pre") [] children

-- | Represents the progress of a task
progress :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
progress props children = elemKeyed (ElemName "progress") props children

-- | Represents the progress of a task [No Attributes]
progress_ :: forall html a. Html html => Array (Key /\ html a) -> html a
progress_ children = elemKeyed (ElemName "progress") [] children

-- | Defines a short quotation
q :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
q props children = elemKeyed (ElemName "q") props children

-- | Defines a short quotation [No Attributes]
q_ :: forall html a. Html html => Array (Key /\ html a) -> html a
q_ children = elemKeyed (ElemName "q") [] children

-- | Defines a ruby base (character) for a ruby annotation
rb :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
rb props children = elemKeyed (ElemName "rb") props children

-- | Defines a ruby base (character) for a ruby annotation [No Attributes]
rb_ :: forall html a. Html html => Array (Key /\ html a) -> html a
rb_ children = elemKeyed (ElemName "rb") [] children

-- | Defines what to show in browsers that do not support ruby annotations
rp :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
rp props children = elemKeyed (ElemName "rp") props children

-- | Defines what to show in browsers that do not support ruby annotations [No Attributes]
rp_ :: forall html a. Html html => Array (Key /\ html a) -> html a
rp_ children = elemKeyed (ElemName "rp") [] children

-- | Defines a ruby text (annotation) for a ruby annotation
rt :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
rt props children = elemKeyed (ElemName "rt") props children

-- | Defines a ruby text (annotation) for a ruby annotation [No Attributes]
rt_ :: forall html a. Html html => Array (Key /\ html a) -> html a
rt_ children = elemKeyed (ElemName "rt") [] children

-- | Defines a ruby text container for a ruby annotation
rtc :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
rtc props children = elemKeyed (ElemName "rtc") props children

-- | Defines a ruby text container for a ruby annotation [No Attributes]
rtc_ :: forall html a. Html html => Array (Key /\ html a) -> html a
rtc_ children = elemKeyed (ElemName "rtc") [] children

-- | Defines a ruby annotation (for East Asian typography)
ruby :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
ruby props children = elemKeyed (ElemName "ruby") props children

-- | Defines a ruby annotation (for East Asian typography) [No Attributes]
ruby_ :: forall html a. Html html => Array (Key /\ html a) -> html a
ruby_ children = elemKeyed (ElemName "ruby") [] children

-- | Defines strikethrough text
s :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
s props children = elemKeyed (ElemName "s") props children

-- | Defines strikethrough text [No Attributes]
s_ :: forall html a. Html html => Array (Key /\ html a) -> html a
s_ children = elemKeyed (ElemName "s") [] children

-- | Defines sample output from a computer program
samp :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
samp props children = elemKeyed (ElemName "samp") props children

-- | Defines sample output from a computer program [No Attributes]
samp_ :: forall html a. Html html => Array (Key /\ html a) -> html a
samp_ children = elemKeyed (ElemName "samp") [] children

-- | Defines a client-side script
script :: forall html a. Html html => Array (Prop a) -> html a
script props = elemKeyed (ElemName "script") props []

-- | Defines a client-side script [No Attributes]
script_ :: forall html a. Html html => html a
script_ = elemKeyed (ElemName "script") [] []

-- | Defines a section in a document
section :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
section props children = elemKeyed (ElemName "section") props children

-- | Defines a section in a document [No Attributes]
section_ :: forall html a. Html html => Array (Key /\ html a) -> html a
section_ children = elemKeyed (ElemName "section") [] children

-- | Defines a drop-down list
select :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
select props children = elemKeyed (ElemName "select") props children

-- | Defines a drop-down list [No Attributes]
select_ :: forall html a. Html html => Array (Key /\ html a) -> html a
select_ children = elemKeyed (ElemName "select") [] children

-- | Defines a slot for content in a web component
slot :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
slot props children = elemKeyed (ElemName "slot") props children

-- | Defines a slot for content in a web component [No Attributes]
slot_ :: forall html a. Html html => Array (Key /\ html a) -> html a
slot_ children = elemKeyed (ElemName "slot") [] children

-- | Defines smaller text
small :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
small props children = elemKeyed (ElemName "small") props children

-- | Defines smaller text [No Attributes]
small_ :: forall html a. Html html => Array (Key /\ html a) -> html a
small_ children = elemKeyed (ElemName "small") [] children

-- | Defines multiple media resources for media elements (<video> and <audio>)
source :: forall html a. Html html => Array (Prop a) -> html a
source props = elemKeyed (ElemName "source") props []

-- | Defines multiple media resources for media elements (<video> and <audio>) [No Attributes]
source_ :: forall html a. Html html => html a
source_ = elemKeyed (ElemName "source") [] []

-- | Defines a small section of text
span :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
span props children = elemKeyed (ElemName "span") props children

-- | Defines a small section of text [No Attributes]
span_ :: forall html a. Html html => Array (Key /\ html a) -> html a
span_ children = elemKeyed (ElemName "span") [] children

-- | Defines important text
strong :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
strong props children = elemKeyed (ElemName "strong") props children

-- | Defines important text [No Attributes]
strong_ :: forall html a. Html html => Array (Key /\ html a) -> html a
strong_ children = elemKeyed (ElemName "strong") [] children

-- | Defines style information for a document
style :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
style props children = elemKeyed (ElemName "style") props children

-- | Defines style information for a document [No Attributes]
style_ :: forall html a. Html html => Array (Key /\ html a) -> html a
style_ children = elemKeyed (ElemName "style") [] children

-- | Defines subscripted text
sub :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
sub props children = elemKeyed (ElemName "sub") props children

-- | Defines subscripted text [No Attributes]
sub_ :: forall html a. Html html => Array (Key /\ html a) -> html a
sub_ children = elemKeyed (ElemName "sub") [] children

-- | Defines a visible heading for a <details> element
summary :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
summary props children = elemKeyed (ElemName "summary") props children

-- | Defines a visible heading for a <details> element [No Attributes]
summary_ :: forall html a. Html html => Array (Key /\ html a) -> html a
summary_ children = elemKeyed (ElemName "summary") [] children

-- | Defines superscripted text
sup :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
sup props children = elemKeyed (ElemName "sup") props children

-- | Defines superscripted text [No Attributes]
sup_ :: forall html a. Html html => Array (Key /\ html a) -> html a
sup_ children = elemKeyed (ElemName "sup") [] children

-- | Defines a table
table :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
table props children = elemKeyed (ElemName "table") props children

-- | Defines a table [No Attributes]
table_ :: forall html a. Html html => Array (Key /\ html a) -> html a
table_ children = elemKeyed (ElemName "table") [] children

-- | Groups the body content in a table
tbody :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
tbody props children = elemKeyed (ElemName "tbody") props children

-- | Groups the body content in a table [No Attributes]
tbody_ :: forall html a. Html html => Array (Key /\ html a) -> html a
tbody_ children = elemKeyed (ElemName "tbody") [] children

-- | Defines a cell in a table
td :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
td props children = elemKeyed (ElemName "td") props children

-- | Defines a cell in a table [No Attributes]
td_ :: forall html a. Html html => Array (Key /\ html a) -> html a
td_ children = elemKeyed (ElemName "td") [] children

-- | Defines a container for content that should be hidden when the page loads
template :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
template props children = elemKeyed (ElemName "template") props children

-- | Defines a container for content that should be hidden when the page loads [No Attributes]
template_ :: forall html a. Html html => Array (Key /\ html a) -> html a
template_ children = elemKeyed (ElemName "template") [] children

-- | Defines a multiline input control
textarea :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
textarea props children = elemKeyed (ElemName "textarea") props children

-- | Defines a multiline input control [No Attributes]
textarea_ :: forall html a. Html html => Array (Key /\ html a) -> html a
textarea_ children = elemKeyed (ElemName "textarea") [] children

-- | Groups the footer content in a table
tfoot :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
tfoot props children = elemKeyed (ElemName "tfoot") props children

-- | Groups the footer content in a table [No Attributes]
tfoot_ :: forall html a. Html html => Array (Key /\ html a) -> html a
tfoot_ children = elemKeyed (ElemName "tfoot") [] children

-- | Defines a header cell in a table
th :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
th props children = elemKeyed (ElemName "th") props children

-- | Defines a header cell in a table [No Attributes]
th_ :: forall html a. Html html => Array (Key /\ html a) -> html a
th_ children = elemKeyed (ElemName "th") [] children

-- | Groups the header content in a table
thead :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
thead props children = elemKeyed (ElemName "thead") props children

-- | Groups the header content in a table [No Attributes]
thead_ :: forall html a. Html html => Array (Key /\ html a) -> html a
thead_ children = elemKeyed (ElemName "thead") [] children

-- | Defines a date/time
time :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
time props children = elemKeyed (ElemName "time") props children

-- | Defines a date/time [No Attributes]
time_ :: forall html a. Html html => Array (Key /\ html a) -> html a
time_ children = elemKeyed (ElemName "time") [] children

-- | Defines a title for the document
title :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
title props children = elemKeyed (ElemName "title") props children

-- | Defines a title for the document [No Attributes]
title_ :: forall html a. Html html => Array (Key /\ html a) -> html a
title_ children = elemKeyed (ElemName "title") [] children

-- | Defines a row in a table
tr :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
tr props children = elemKeyed (ElemName "tr") props children

-- | Defines a row in a table [No Attributes]
tr_ :: forall html a. Html html => Array (Key /\ html a) -> html a
tr_ children = elemKeyed (ElemName "tr") [] children

-- | Defines text tracks for media elements (<video> and <audio>)
track :: forall html a. Html html => Array (Prop a) -> html a
track props = elemKeyed (ElemName "track") props []

-- | Defines text tracks for media elements (<video> and <audio>) [No Attributes]
track_ :: forall html a. Html html => html a
track_ = elemKeyed (ElemName "track") [] []

-- | Defines underlined text
u :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
u props children = elemKeyed (ElemName "u") props children

-- | Defines underlined text [No Attributes]
u_ :: forall html a. Html html => Array (Key /\ html a) -> html a
u_ children = elemKeyed (ElemName "u") [] children

-- | Defines an unordered list
ul :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
ul props children = elemKeyed (ElemName "ul") props children

-- | Defines an unordered list [No Attributes]
ul_ :: forall html a. Html html => Array (Key /\ html a) -> html a
ul_ children = elemKeyed (ElemName "ul") [] children

-- | Defines a variable
var :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
var props children = elemKeyed (ElemName "var") props children

-- | Defines a variable [No Attributes]
var_ :: forall html a. Html html => Array (Key /\ html a) -> html a
var_ children = elemKeyed (ElemName "var") [] children

-- | Defines a video
video :: forall html a. Html html => Array (Prop a) -> Array (Key /\ html a) -> html a
video props children = elemKeyed (ElemName "video") props children

-- | Defines a video [No Attributes]
video_ :: forall html a. Html html => Array (Key /\ html a) -> html a
video_ children = elemKeyed (ElemName "video") [] children

-- | Defines a possible line-break
wbr :: forall html a. Html html => Array (Prop a) -> html a
wbr props = elemKeyed (ElemName "wbr") props []

-- | Defines a possible line-break [No Attributes]
wbr_ :: forall html a. Html html => html a
wbr_ = elemKeyed (ElemName "wbr") [] []

