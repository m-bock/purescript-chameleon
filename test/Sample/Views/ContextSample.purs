module Test.Sample.Views.ContextSample where

import Prelude

import Record (delete, union)
import VirtualDOM (class Html, text, withCtx)
import VirtualDOM.HTML.Elements as T
import Type.Proxy (Proxy(..))

type Ctx r = { theme :: String | r }

-- view3 :: forall html a. Html html => {} -> html (Ctx ()) a
-- view3 _ = withCtx \ctx ->
--   text ("Theme: " <> ctx.theme)

-- view2 :: forall html a. Html html => {} -> html (Ctx (more :: Int)) a
-- view2 _ = mapCtx (delete (Proxy :: _ "more")) $ view3 {}

-- view1 :: forall html a. Html html => {} -> html (Ctx ()) a
-- view1 _ = mapCtx (union { more: 2 }) $ view2 {}

-- view :: forall html a. Html html => {} -> html (Ctx ()) a
-- view _ =
--   T.div
--     []
--     [ view1 {}
--     ]