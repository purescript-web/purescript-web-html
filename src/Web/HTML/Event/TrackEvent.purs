module Web.HTML.Event.TrackEvent where

import Foreign (Foreign, F, unsafeReadTagged)
import Unsafe.Coerce (unsafeCoerce)
import Web.Event.Event (Event)

foreign import data TrackEvent :: Type

toEvent :: TrackEvent -> Event
toEvent = unsafeCoerce

read :: Foreign -> F TrackEvent
read = unsafeReadTagged "TrackEvent"

-- readonly attribute (VideoTrack or AudioTrack or TextTrack)? track;
