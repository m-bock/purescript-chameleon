module TaglessVirtualDOM.Elements where

import TaglessVirtualDOM (class Html, Prop, elem)

div :: forall html a. Html html => Array (Prop a) -> Array (html a) -> html a
div = elem "div"

span :: forall html a. Html html => Array (Prop a) -> Array (html a) -> html a
span = elem "span"

button :: forall html a. Html html => Array (Prop a) -> Array (html a) -> html a
button = elem "button"

-- input :: forall html a. Html html => Array (Prop a) -> Array (html a) -> html a
-- input = elem "button"