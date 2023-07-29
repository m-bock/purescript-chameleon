module VirtualDOM.Transformers.OutMsg.Trans where

import Prelude

import Data.Maybe (Maybe(..))
import Data.These (These(..))
import VirtualDOM.Class (class Html, class MapMaybe, Prop(..), mapMaybe)
import VirtualDOM.Class as C
import VirtualDOM.Transformers.OutMsg.Class (class OutMsg, class RunOutMsg)

newtype OutMsgT out html msg = OutMsgT (html (These msg out))

derive instance (Functor html) => Functor (OutMsgT ctx html)

instance (MapMaybe html) => MapMaybe (OutMsgT out html) where
  mapMaybe
    :: forall msg1 msg2
     . (msg1 -> Maybe msg2)
    -> OutMsgT out html msg1
    -> OutMsgT out html msg2
  mapMaybe f (OutMsgT html) = OutMsgT $ mapMaybe theseToMaybe html
    where
    theseToMaybe :: These msg1 out -> Maybe (These msg2 out)
    theseToMaybe = case _ of
      This msg -> f msg # map This
      That out -> Just (That out)
      Both msg out -> f msg # case _ of
        Just msg' -> Just $ Both msg' out
        Nothing -> Just (That out)

runOutMsgT :: forall out html msg. Html html => OutMsgT out html msg -> html msg
runOutMsgT (OutMsgT html) =
  mapMaybe changeMsg html
  where
  changeMsg :: These msg out -> Maybe msg
  changeMsg = case _ of
    This msg -> Just msg
    That _ -> Nothing
    Both msg _ -> Just msg

instance C.Html html => OutMsg out (OutMsgT out html) where
  fromOutHtml :: forall msg. OutMsgT out html (These msg out) -> OutMsgT out html msg
  fromOutHtml (OutMsgT h) = OutMsgT $ h # map case _ of
    This msg -> msg
    That out -> That out
    Both msg _ -> msg

instance C.Html html => RunOutMsg out (OutMsgT out html) where
  runOutMsg (OutMsgT html) = OutMsgT (map This html)

instance (C.Html html) => C.Html (OutMsgT out html) where
  elem elemName props children =
    OutMsgT $ C.elem
      elemName
      (map (mapMaybeMsg (map This)) props)
      (map unOutMsgT children)

  elemKeyed elemName props children =
    OutMsgT $ C.elemKeyed
      elemName
      (map (mapMaybeMsg (map This)) props)
      (map (map unOutMsgT) children)

  text str = OutMsgT $ C.text str

unOutMsgT :: forall out html msg. OutMsgT out html msg -> html (These msg out)
unOutMsgT (OutMsgT html) = html

mapMaybeMsg :: forall a b. (Maybe a -> Maybe b) -> Prop a -> Prop b
mapMaybeMsg f = case _ of
  Event name handler -> Event name (handler >>> f)
  Attr x y -> Attr x y