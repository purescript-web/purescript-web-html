module Web.HTML.HTMLImageElement.EventTypes where

import Web.Event.Event (EventType(..))

loadend :: EventType
loadend = EventType "loadend"

loadstart :: EventType
loadstart = EventType "loadstart"

progress :: EventType
progress = EventType "progress"
