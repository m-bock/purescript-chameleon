module Chameleon.HTML.Events where

import Prelude

import Control.Monad.Except (runExcept)
import Data.Either (hush)
import Data.Maybe (Maybe(..))
import Foreign (Foreign)
import Foreign as F
import Foreign.Index as FI
import Chameleon.Class (Prop(..))

class FromForeign a where
  fromForeign :: Foreign -> Maybe a

instance FromForeign String where
  fromForeign for = hush $ runExcept do
    tgt <- FI.readProp "target" for
    val <- FI.readProp "value" tgt
    str <- F.readString val
    pure str

-- | Occurs when the loading of an audio/video is aborted
onAbort :: forall a. a -> Prop a
onAbort msg = Event "abort" \_ -> Just msg

-- | Occurs when a page has started printing, or if the print dialogue box has been closed
onAfterPrint :: forall a. a -> Prop a
onAfterPrint msg = Event "afterPrint" \_ -> Just msg

-- | Occurs when a CSS animation has completed
onAnimationEnd :: forall a. a -> Prop a
onAnimationEnd msg = Event "animationEnd" \_ -> Just msg

-- | Occurs when a CSS animation is repeated
onAnimationIteration :: forall a. a -> Prop a
onAnimationIteration msg = Event "animationIteration" \_ -> Just msg

-- | Occurs when a CSS animation has started
onAnimationStart :: forall a. a -> Prop a
onAnimationStart msg = Event "animationStart" \_ -> Just msg

-- | Occurs when a page is about to be printed
onBeforePrint :: forall a. a -> Prop a
onBeforePrint msg = Event "beforePrint" \_ -> Just msg

-- | Occurs before the document is about to be unloaded
onBeforeUnload :: forall a. a -> Prop a
onBeforeUnload msg = Event "beforeUnload" \_ -> Just msg

-- | Occurs when an element loses focus
onBlur :: forall a. a -> Prop a
onBlur msg = Event "blur" \_ -> Just msg

-- | Occurs when the browser can start playing the audio/video
onCanPlay :: forall a. a -> Prop a
onCanPlay msg = Event "canPlay" \_ -> Just msg

-- | Occurs when the browser can play through the audio/video without stopping for buffering
onCanPlayThrough :: forall a. a -> Prop a
onCanPlayThrough msg = Event "canPlayThrough" \_ -> Just msg

-- | Occurs when the content of a form element, the selection, or the checked state have changed (for <input>, <select>, and <textarea>)
onChange :: forall a. (String -> a) -> Prop a
onChange mkMsg = Event "change" (fromForeign >>> map mkMsg)

-- | Occurs when the user clicks on an element
onClick :: forall a. a -> Prop a
onClick msg = Event "click" \_ -> Just msg

-- | Occurs when the user right-clicks on an element to open a context menu
onContextMenu :: forall a. a -> Prop a
onContextMenu msg = Event "contextMenu" \_ -> Just msg

-- | Occurs when the user copies the content of an element
onCopy :: forall a. a -> Prop a
onCopy msg = Event "copy" \_ -> Just msg

-- | Occurs when the user cuts the content of an element
onCut :: forall a. a -> Prop a
onCut msg = Event "cut" \_ -> Just msg

-- | Occurs when the user double-clicks on an element
onDblClick :: forall a. a -> Prop a
onDblClick msg = Event "dblClick" \_ -> Just msg

-- | Occurs when an element is being dragged
onDrag :: forall a. a -> Prop a
onDrag msg = Event "drag" \_ -> Just msg

-- | Occurs when the user has finished dragging an element
onDragEnd :: forall a. a -> Prop a
onDragEnd msg = Event "dragEnd" \_ -> Just msg

-- | Occurs when the dragged element enters the drop target
onDragEnter :: forall a. a -> Prop a
onDragEnter msg = Event "dragEnter" \_ -> Just msg

-- | Occurs when the dragged element leaves the drop target
onDragLeave :: forall a. a -> Prop a
onDragLeave msg = Event "dragLeave" \_ -> Just msg

-- | Occurs when the dragged element is over the drop target
onDragOver :: forall a. a -> Prop a
onDragOver msg = Event "dragOver" \_ -> Just msg

-- | Occurs when the user starts to drag an element
onDragStart :: forall a. a -> Prop a
onDragStart msg = Event "dragStart" \_ -> Just msg

-- | Occurs when the dragged element is dropped on the drop target
onDrop :: forall a. a -> Prop a
onDrop msg = Event "drop" \_ -> Just msg

-- | Occurs when the duration of the audio/video is changed
onDurationChange :: forall a. a -> Prop a
onDurationChange msg = Event "durationChange" \_ -> Just msg

-- | Occurs when the audio/video has ended
onEnded :: forall a. a -> Prop a
onEnded msg = Event "ended" \_ -> Just msg

-- | Occurs when an error occurs while loading an audio/video
onError :: forall a. a -> Prop a
onError msg = Event "error" \_ -> Just msg

-- | Occurs when an element gets focus
onFocus :: forall a. a -> Prop a
onFocus msg = Event "focus" \_ -> Just msg

-- | Occurs when an element is about to get focus
onFocusIn :: forall a. a -> Prop a
onFocusIn msg = Event "focusIn" \_ -> Just msg

-- | Occurs when an element is about to lose focus
onFocusOut :: forall a. a -> Prop a
onFocusOut msg = Event "focusOut" \_ -> Just msg

-- | Occurs when an element is displayed in fullscreen mode
onFullscreenChange :: forall a. a -> Prop a
onFullscreenChange msg = Event "fullscreenChange" \_ -> Just msg

-- | Occurs when an element can not be displayed in fullscreen mode
onFullscreenError :: forall a. a -> Prop a
onFullscreenError msg = Event "fullscreenError" \_ -> Just msg

-- | Occurs when there has been changes to the anchor part of a URL
onHashChange :: forall a. a -> Prop a
onHashChange msg = Event "hashChange" \_ -> Just msg

-- | Occurs when an element gets user input
onInput :: forall a. (String -> a) -> Prop a
onInput mkMsg = Event "input" (fromForeign >>> map mkMsg)

-- | Occurs when an element is invalid
onInvalid :: forall a. a -> Prop a
onInvalid msg = Event "invalid" \_ -> Just msg

-- | Occurs when a user is pressing a key
onKeyDown :: forall a. a -> Prop a
onKeyDown msg = Event "keyDown" \_ -> Just msg

-- | Occurs when a user presses a key
onKeyPress :: forall a. a -> Prop a
onKeyPress msg = Event "keyPress" \_ -> Just msg

-- | Occurs when a user releases a key
onKeyUp :: forall a. a -> Prop a
onKeyUp msg = Event "keyUp" \_ -> Just msg

-- | Occurs when an object has loaded
onLoad :: forall a. a -> Prop a
onLoad msg = Event "load" \_ -> Just msg

-- | Occurs when media data is loaded
onLoadedData :: forall a. a -> Prop a
onLoadedData msg = Event "loadedData" \_ -> Just msg

-- | Occurs when meta data (like dimensions and duration) are loaded
onLoadedMetadata :: forall a. a -> Prop a
onLoadedMetadata msg = Event "loadedMetadata" \_ -> Just msg

-- | Occurs when the browser starts looking for the specified audio/video
onLoadStart :: forall a. a -> Prop a
onLoadStart msg = Event "loadStart" \_ -> Just msg

-- | Occurs when a message is received through the event source
onMessage :: forall a. a -> Prop a
onMessage msg = Event "message" \_ -> Just msg

-- | Occurs when a mouse button is pressed down on an element
onMouseDown :: forall a. a -> Prop a
onMouseDown msg = Event "mouseDown" \_ -> Just msg

-- | Occurs when the mouse pointer is over the selected element
onMouseEnter :: forall a. a -> Prop a
onMouseEnter msg = Event "mouseEnter" \_ -> Just msg

-- | Occurs when the mouse pointer leaves the selected element
onMouseLeave :: forall a. a -> Prop a
onMouseLeave msg = Event "mouseLeave" \_ -> Just msg

-- | Occurs when the mouse pointer is moving while it is over an element
onMouseMove :: forall a. a -> Prop a
onMouseMove msg = Event "mouseMove" \_ -> Just msg

-- | Occurs when the mouse pointer moves out of an element
onMouseOut :: forall a. a -> Prop a
onMouseOut msg = Event "mouseOut" \_ -> Just msg

-- | Occurs when the mouse pointer moves over an element
onMouseOver :: forall a. a -> Prop a
onMouseOver msg = Event "mouseOver" \_ -> Just msg

-- | Occurs when a mouse button is released over an element
onMouseUp :: forall a. a -> Prop a
onMouseUp msg = Event "mouseUp" \_ -> Just msg

-- | Deprecated. Use the wheel event instead
onMouseWheel :: forall a. a -> Prop a
onMouseWheel msg = Event "mouseWheel" \_ -> Just msg

-- | Occurs when the browser starts to work offline
onOffline :: forall a. a -> Prop a
onOffline msg = Event "offline" \_ -> Just msg

-- | Occurs when the browser starts to work online
onOnline :: forall a. a -> Prop a
onOnline msg = Event "online" \_ -> Just msg

-- | Occurs when a connection with the event source is opened
onOpen :: forall a. a -> Prop a
onOpen msg = Event "open" \_ -> Just msg

-- | Occurs when the user navigates away from a webpage
onPageHide :: forall a. a -> Prop a
onPageHide msg = Event "pageHide" \_ -> Just msg

-- | Occurs when the user navigates to a webpage
onPageShow :: forall a. a -> Prop a
onPageShow msg = Event "pageShow" \_ -> Just msg

-- | Occurs when the user pastes some content in an element
onPaste :: forall a. a -> Prop a
onPaste msg = Event "paste" \_ -> Just msg

-- | Occurs when the audio/video has been paused
onPause :: forall a. a -> Prop a
onPause msg = Event "pause" \_ -> Just msg

-- | Occurs when the audio/video has been started or is no longer paused
onPlay :: forall a. a -> Prop a
onPlay msg = Event "play" \_ -> Just msg

-- | Occurs when the audio/video is playing after having been paused or stopped for buffering
onPlaying :: forall a. a -> Prop a
onPlaying msg = Event "playing" \_ -> Just msg

-- | Occurs when the window's history changes
onPopState :: forall a. a -> Prop a
onPopState msg = Event "popState" \_ -> Just msg

-- | Occurs when the browser is in the process of getting the media data (downloading the media)
onProgress :: forall a. a -> Prop a
onProgress msg = Event "progress" \_ -> Just msg

-- | Occurs when the playing speed of the audio/video is changed
onRateChange :: forall a. a -> Prop a
onRateChange msg = Event "rateChange" \_ -> Just msg

-- | Occurs when the document view is resized
onResize :: forall a. a -> Prop a
onResize msg = Event "resize" \_ -> Just msg

-- | Occurs when a form is reset
onReset :: forall a. a -> Prop a
onReset msg = Event "reset" \_ -> Just msg

-- | Occurs when an element's scrollbar is being scrolled
onScroll :: forall a. a -> Prop a
onScroll msg = Event "scroll" \_ -> Just msg

-- | Occurs when the user writes something in a search field (for <input="search">)
onSearch :: forall a. a -> Prop a
onSearch msg = Event "search" \_ -> Just msg

-- | Occurs when the user is finished moving/skipping to a new position in the audio/video
onSeeked :: forall a. a -> Prop a
onSeeked msg = Event "seeked" \_ -> Just msg

-- | Occurs when the user starts moving/skipping to a new position in the audio/video
onSeeking :: forall a. a -> Prop a
onSeeking msg = Event "seeking" \_ -> Just msg

-- | Occurs after the user selects some text (for <input> and <textarea>)
onSelect :: forall a. a -> Prop a
onSelect msg = Event "select" \_ -> Just msg

-- | Occurs when a <menu> element is shown as a context menu
onShow :: forall a. a -> Prop a
onShow msg = Event "show" \_ -> Just msg

-- | Occurs when the browser is trying to get media data, but data is not available
onStalled :: forall a. a -> Prop a
onStalled msg = Event "stalled" \_ -> Just msg

-- | Occurs when a Web Storage area is updated
onStorage :: forall a. a -> Prop a
onStorage msg = Event "storage" \_ -> Just msg

-- | Occurs when a form is submitted
onSubmit :: forall a. a -> Prop a
onSubmit msg = Event "submit" \_ -> Just msg

-- | Occurs when the browser is intentionally not getting media data
onSuspend :: forall a. a -> Prop a
onSuspend msg = Event "suspend" \_ -> Just msg

-- | Occurs when the playing position has changed (like when the user fast forwards to a different point in the media)
onTimeUpdate :: forall a. a -> Prop a
onTimeUpdate msg = Event "timeUpdate" \_ -> Just msg

-- | Occurs when the user opens or closes the <details> element
onToggle :: forall a. a -> Prop a
onToggle msg = Event "toggle" \_ -> Just msg

-- | Occurs when the touch is interrupted
onTouchCancel :: forall a. a -> Prop a
onTouchCancel msg = Event "touchCancel" \_ -> Just msg

-- | Occurs when a finger is removed from a touch screen
onTouchEnd :: forall a. a -> Prop a
onTouchEnd msg = Event "touchEnd" \_ -> Just msg

-- | Occurs when a finger is dragged across the screen
onTouchMove :: forall a. a -> Prop a
onTouchMove msg = Event "touchMove" \_ -> Just msg

-- | Occurs when a finger is placed on a touch screen
onTouchStart :: forall a. a -> Prop a
onTouchStart msg = Event "touchStart" \_ -> Just msg

-- | Occurs when a CSS transition has completed
onTransitionEnd :: forall a. a -> Prop a
onTransitionEnd msg = Event "transitionEnd" \_ -> Just msg

-- | Occurs once a page has unloaded (or the browser window has been closed)
onUnload :: forall a. a -> Prop a
onUnload msg = Event "unload" \_ -> Just msg

-- | Occurs when the volume of the audio/video has changed
onVolumeChange :: forall a. a -> Prop a
onVolumeChange msg = Event "volumeChange" \_ -> Just msg

-- | Occurs when the video stops because it needs to buffer the next frame
onWaiting :: forall a. a -> Prop a
onWaiting msg = Event "waiting" \_ -> Just msg

-- | Occurs when the mouse wheel rolls up or down over an element
onWheel :: forall a. a -> Prop a
onWheel msg = Event "wheel" \_ -> Just msg

