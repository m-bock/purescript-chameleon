module VirtualDOM.HTML.Elements where

import VirtualDOM (class Html, ElemName(..), Prop, elem)

-- | Defines a hyperlink
a :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
a props children = elem (ElemName "a") props children

-- | Defines an abbreviation
abbr :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
abbr props children = elem (ElemName "abbr") props children

-- | Defines contact information for the author/owner of a document
address :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
address props children = elem (ElemName "address") props children

-- | Defines an area inside an image map
area :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
area props = elem (ElemName "area") props []

-- | Defines self-contained content, like blog posts or news articles
article :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
article props children = elem (ElemName "article") props children

-- | Defines content aside from the content it is placed in
aside :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
aside props children = elem (ElemName "aside") props children

-- | Defines sound content, like music or other audio streams
audio :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
audio props children = elem (ElemName "audio") props children

-- | Defines bold text
b :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
b props children = elem (ElemName "b") props children

-- | Defines the base URL for all relative URLs in a document
base :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
base props = elem (ElemName "base") props []

-- | Defines text directionality for its children
bdi :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
bdi props children = elem (ElemName "bdi") props children

-- | Defines text directionality
bdo :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
bdo props children = elem (ElemName "bdo") props children

-- | Defines a section that is quoted from another source
blockquote :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
blockquote props children = elem (ElemName "blockquote") props children

-- | Defines the document's body
body :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
body props children = elem (ElemName "body") props children

-- | Defines a single line break
br :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
br props = elem (ElemName "br") props []

-- | Defines a clickable button
button :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
button props children = elem (ElemName "button") props children

-- | Defines an area that can be used to draw graphics using JavaScript
canvas :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
canvas props children = elem (ElemName "canvas") props children

-- | Defines a table caption
caption :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
caption props children = elem (ElemName "caption") props children

-- | Defines the title of a work
cite :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
cite props children = elem (ElemName "cite") props children

-- | Defines a piece of computer code
code :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
code props children = elem (ElemName "code") props children

-- | Defines attributes for table columns
col :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
col props = elem (ElemName "col") props []

-- | Defines attributes for a group of table columns
colgroup :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
colgroup props children = elem (ElemName "colgroup") props children

-- | Defines machine-readable data
data_ :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
data_ props children = elem (ElemName "data_") props children

-- | Defines a list of pre-defined options for input controls
datalist :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
datalist props children = elem (ElemName "datalist") props children

-- | Defines a description/value of a term in a description list
dd :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
dd props children = elem (ElemName "dd") props children

-- | Defines text that has been deleted from a document
del :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
del props children = elem (ElemName "del") props children

-- | Defines additional details that the user can view or hide
details :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
details props children = elem (ElemName "details") props children

-- | Defines a definition term
dfn :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
dfn props children = elem (ElemName "dfn") props children

-- | Defines a dialog box or window
dialog :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
dialog props children = elem (ElemName "dialog") props children

-- | Defines a section of a document
div :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
div props children = elem (ElemName "div") props children

-- | Defines a description list
dl :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
dl props children = elem (ElemName "dl") props children

-- | Defines a term in a description list
dt :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
dt props children = elem (ElemName "dt") props children

-- | Defines emphasized text
em :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
em props children = elem (ElemName "em") props children

-- | Defines a container for an external application or interactive content
embed :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
embed props = elem (ElemName "embed") props []

-- | Groups related form elements
fieldset :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
fieldset props children = elem (ElemName "fieldset") props children

-- | Defines a caption for a <figure> element
figcaption :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
figcaption props children = elem (ElemName "figcaption") props children

-- | Defines self-contained content, like images or diagrams
figure :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
figure props children = elem (ElemName "figure") props children

-- | Defines a footer for a document or section
footer :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
footer props children = elem (ElemName "footer") props children

-- | Defines an HTML form for user input
form :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
form props children = elem (ElemName "form") props children

-- | Defines a heading level 1
h1 :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
h1 props children = elem (ElemName "h1") props children

-- | Defines a heading level 2
h2 :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
h2 props children = elem (ElemName "h2") props children

-- | Defines a heading level 3
h3 :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
h3 props children = elem (ElemName "h3") props children

-- | Defines a heading level 4
h4 :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
h4 props children = elem (ElemName "h4") props children

-- | Defines a heading level 5
h5 :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
h5 props children = elem (ElemName "h5") props children

-- | Defines a heading level 6
h6 :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
h6 props children = elem (ElemName "h6") props children

-- | Defines information about the document
head :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
head props children = elem (ElemName "head") props children

-- | Defines a header for a document or section
header :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
header props children = elem (ElemName "header") props children

-- | Defines a horizontal rule (line)
hr :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
hr props = elem (ElemName "hr") props []

-- | Defines the root of an HTML document
html :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
html props children = elem (ElemName "html") props children

-- | Defines italic text
i :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
i props children = elem (ElemName "i") props children

-- | Defines an inline frame for embedding external content
iframe :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
iframe props children = elem (ElemName "iframe") props children

-- | Defines an image
img :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
img props = elem (ElemName "img") props []

-- | Defines an input control
input :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
input props = elem (ElemName "input") props []

-- | Defines text that has been inserted into a document
ins :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
ins props children = elem (ElemName "ins") props children

-- | Defines keyboard input
kbd :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
kbd props children = elem (ElemName "kbd") props children

-- | Defines a label for an <input> element
label :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
label props children = elem (ElemName "label") props children

-- | Defines a caption for a <fieldset> element
legend :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
legend props children = elem (ElemName "legend") props children

-- | Defines a list item
li :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
li props children = elem (ElemName "li") props children

-- | Defines the relationship between a document and an external resource
link :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
link props = elem (ElemName "link") props []

-- | Defines the main content of a document
main :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
main props children = elem (ElemName "main") props children

-- | Defines an image map
map :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
map props children = elem (ElemName "map") props children

-- | Defines marked/highlighted text
mark :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
mark props children = elem (ElemName "mark") props children

-- | Defines a list/menu of commands
menu :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
menu props children = elem (ElemName "menu") props children

-- | Defines metadata about an HTML document
meta :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
meta props = elem (ElemName "meta") props []

-- | Defines a scalar measurement within a known range
meter :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
meter props children = elem (ElemName "meter") props children

-- | Defines a navigation menu
nav :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
nav props children = elem (ElemName "nav") props children

-- | Defines an alternate content for users that do not support client-side scripts
noscript :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
noscript props children = elem (ElemName "noscript") props children

-- | Defines a container for external application or interactive content
object :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
object props children = elem (ElemName "object") props children

-- | Defines an ordered list
ol :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
ol props children = elem (ElemName "ol") props children

-- | Defines a group of related options in a drop-down list
optgroup :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
optgroup props children = elem (ElemName "optgroup") props children

-- | Defines an option in a drop-down list
option :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
option props children = elem (ElemName "option") props children

-- | Defines the result of a calculation
output :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
output props children = elem (ElemName "output") props children

-- | Defines a paragraph
p :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
p props children = elem (ElemName "p") props children

-- | Defines a parameter for an object
param :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
param props = elem (ElemName "param") props []

-- | Defines a container for multiple image resources
picture :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
picture props children = elem (ElemName "picture") props children

-- | Defines preformatted text
pre :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
pre props children = elem (ElemName "pre") props children

-- | Represents the progress of a task
progress :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
progress props children = elem (ElemName "progress") props children

-- | Defines a short quotation
q :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
q props children = elem (ElemName "q") props children

-- | Defines a ruby base (character) for a ruby annotation
rb :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
rb props children = elem (ElemName "rb") props children

-- | Defines what to show in browsers that do not support ruby annotations
rp :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
rp props children = elem (ElemName "rp") props children

-- | Defines a ruby text (annotation) for a ruby annotation
rt :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
rt props children = elem (ElemName "rt") props children

-- | Defines a ruby text container for a ruby annotation
rtc :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
rtc props children = elem (ElemName "rtc") props children

-- | Defines a ruby annotation (for East Asian typography)
ruby :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
ruby props children = elem (ElemName "ruby") props children

-- | Defines strikethrough text
s :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
s props children = elem (ElemName "s") props children

-- | Defines sample output from a computer program
samp :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
samp props children = elem (ElemName "samp") props children

-- | Defines a client-side script
script :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
script props = elem (ElemName "script") props []

-- | Defines a section in a document
section :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
section props children = elem (ElemName "section") props children

-- | Defines a drop-down list
select :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
select props children = elem (ElemName "select") props children

-- | Defines a slot for content in a web component
slot :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
slot props children = elem (ElemName "slot") props children

-- | Defines smaller text
small :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
small props children = elem (ElemName "small") props children

-- | Defines multiple media resources for media elements (<video> and <audio>)
source :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
source props = elem (ElemName "source") props []

-- | Defines a small section of text
span :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
span props children = elem (ElemName "span") props children

-- | Defines important text
strong :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
strong props children = elem (ElemName "strong") props children

-- | Defines style information for a document
style :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
style props children = elem (ElemName "style") props children

-- | Defines subscripted text
sub :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
sub props children = elem (ElemName "sub") props children

-- | Defines a visible heading for a <details> element
summary :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
summary props children = elem (ElemName "summary") props children

-- | Defines superscripted text
sup :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
sup props children = elem (ElemName "sup") props children

-- | Defines a table
table :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
table props children = elem (ElemName "table") props children

-- | Groups the body content in a table
tbody :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
tbody props children = elem (ElemName "tbody") props children

-- | Defines a cell in a table
td :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
td props children = elem (ElemName "td") props children

-- | Defines a container for content that should be hidden when the page loads
template :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
template props children = elem (ElemName "template") props children

-- | Defines a multiline input control
textarea :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
textarea props children = elem (ElemName "textarea") props children

-- | Groups the footer content in a table
tfoot :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
tfoot props children = elem (ElemName "tfoot") props children

-- | Defines a header cell in a table
th :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
th props children = elem (ElemName "th") props children

-- | Groups the header content in a table
thead :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
thead props children = elem (ElemName "thead") props children

-- | Defines a date/time
time :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
time props children = elem (ElemName "time") props children

-- | Defines a title for the document
title :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
title props children = elem (ElemName "title") props children

-- | Defines a row in a table
tr :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
tr props children = elem (ElemName "tr") props children

-- | Defines text tracks for media elements (<video> and <audio>)
track :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
track props = elem (ElemName "track") props []

-- | Defines underlined text
u :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
u props children = elem (ElemName "u") props children

-- | Defines an unordered list
ul :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
ul props children = elem (ElemName "ul") props children

-- | Defines a variable
var :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
var props children = elem (ElemName "var") props children

-- | Defines a video
video :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
video props children = elem (ElemName "video") props children

-- | Defines a possible line-break
wbr :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
wbr props = elem (ElemName "wbr") props []

