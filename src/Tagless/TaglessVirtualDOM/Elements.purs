module TaglessVirtualDOM.Elements where

import TaglessVirtualDOM (class Html, Prop, elem)

div :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
div = elem "div"

span :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
span = elem "span"

button :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
button = elem "button"

-- input :: forall html a. Html html => Array (Prop a) -> Array (html a) -> html a
-- input = elem "button"