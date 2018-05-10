module Web.HTML.HTMLMediaElement where

import Prelude

import Data.Enum (toEnum)
import Data.JSDate (JSDate)
import Data.Maybe (fromJust)
import Effect (Effect)
import Foreign (F, Foreign, unsafeReadTagged)
import Unsafe.Coerce (unsafeCoerce)
import Web.HTML.HTMLElement (HTMLElement)
import Web.HTML.HTMLMediaElement.CanPlayType (CanPlayType)
import Web.HTML.HTMLMediaElement.NetworkState (NetworkState)
import Web.HTML.HTMLMediaElement.ReadyState (ReadyState)

foreign import data HTMLMediaElement :: Type

toHTMLElement :: HTMLMediaElement -> HTMLElement
toHTMLElement = unsafeCoerce

read :: Foreign -> F HTMLMediaElement
read = unsafeReadTagged "HTMLMediaElement"

--   readonly attribute MediaError? error;

foreign import src :: HTMLMediaElement -> Effect String
foreign import setSrc :: String -> HTMLMediaElement -> Effect Unit

foreign import currentSrc :: HTMLMediaElement -> Effect String

foreign import crossOrigin :: HTMLMediaElement -> Effect String
foreign import setCrossOrigin :: String -> HTMLMediaElement -> Effect Unit

networkState :: Partial => HTMLMediaElement -> Effect NetworkState
networkState = map (fromJust <<< toEnum) <<< readyStateIndex

foreign import networkStateIndex :: HTMLMediaElement -> Effect Int

foreign import preload :: HTMLMediaElement -> Effect String
foreign import setPreload :: String -> HTMLMediaElement -> Effect Unit

--   readonly attribute TimeRanges buffered;

foreign import load :: HTMLMediaElement -> Effect Unit

foreign import canPlayType :: String -> HTMLMediaElement -> Effect CanPlayType

readyState :: Partial => HTMLMediaElement -> Effect ReadyState
readyState = map (fromJust <<< toEnum) <<< readyStateIndex

foreign import readyStateIndex :: HTMLMediaElement -> Effect Int

foreign import seeking :: HTMLMediaElement -> Effect Boolean

foreign import currentTime :: HTMLMediaElement -> Effect Number
foreign import setCurrentTime :: Number -> HTMLMediaElement -> Effect Unit

foreign import duration :: HTMLMediaElement -> Effect Number

foreign import getStartDate :: HTMLMediaElement -> Effect JSDate

foreign import paused :: HTMLMediaElement -> Effect Boolean

foreign import defaultPlaybackRate :: HTMLMediaElement -> Effect Number
foreign import setDefaultPlaybackRate :: Number -> HTMLMediaElement -> Effect Unit

foreign import playbackRate :: HTMLMediaElement -> Effect Number
foreign import setPlaybackRate :: Number -> HTMLMediaElement -> Effect Unit

--   readonly attribute TimeRanges played;
--   readonly attribute TimeRanges seekable;

foreign import ended :: HTMLMediaElement -> Effect Boolean

foreign import autoplay :: HTMLMediaElement -> Effect Boolean
foreign import setAutoplay :: Boolean -> HTMLMediaElement -> Effect Unit

foreign import loop :: HTMLMediaElement -> Effect Boolean
foreign import setLoop :: Boolean -> HTMLMediaElement -> Effect Unit

foreign import play :: HTMLMediaElement -> Effect Unit

foreign import pause :: HTMLMediaElement -> Effect Unit

foreign import mediaGroup :: HTMLMediaElement -> Effect String
foreign import setMediaGroup :: String -> HTMLMediaElement -> Effect Unit

--            attribute MediaController? controller;

foreign import controls :: HTMLMediaElement -> Effect Boolean
foreign import setControls :: Boolean -> HTMLMediaElement -> Effect Unit

foreign import volume :: HTMLMediaElement -> Effect Number
foreign import setVolume :: Number -> HTMLMediaElement -> Effect Unit

foreign import muted :: HTMLMediaElement -> Effect Boolean
foreign import setMuted :: Boolean -> HTMLMediaElement -> Effect Unit

foreign import defaultMuted :: HTMLMediaElement -> Effect Boolean
foreign import setDefaultMuted :: Boolean -> HTMLMediaElement -> Effect Unit

--   readonly attribute AudioTrackList audioTracks;
--   readonly attribute VideoTrackList videoTracks;
--   readonly attribute TextTrackList textTracks;
--   TextTrack addTextTrack(TextTrackKind kind, optional DOMString label = "", optional DOMString language = "");
