module TaglessVirtualDOM.Attributes where

import TaglessVirtualDOM (Prop(..))

id :: forall a. String -> Prop a
id = Attr "id"

style :: forall a. String -> Prop a
style = Attr "style"

className :: forall a. String -> Prop a
className = Attr "className"