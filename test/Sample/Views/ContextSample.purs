module Test.Sample.Views.ContextSample where

import Prelude

import Record (delete, union)
import TaglessVirtualDOM (class Html, mapCtx, text, withCtx)
import TaglessVirtualDOM.Elements as T
import Type.Proxy (Proxy(..))

type Ctx r = { theme :: String | r }

view3 :: forall html a. Html html => {} -> html (Ctx ()) a
view3 props = withCtx \ctx ->
  text ("Theme: " <> ctx.theme)

view2 :: forall html a. Html html => {} -> html (Ctx (more :: Int)) a
view2 props = mapCtx (delete (Proxy :: _ "more")) $ view3 {}

view1 :: forall html a. Html html => {} -> html (Ctx ()) a
view1 props = mapCtx (union { more: 2 }) $ view2 {}

view :: forall html a. Html html => {} -> html (Ctx ()) a
view props =
  T.div
    []
    [ view1 {}
    ]