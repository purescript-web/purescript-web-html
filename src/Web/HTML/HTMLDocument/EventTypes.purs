module Web.HTML.HTMLDocument.EventTypes where

import Web.Event.Event (EventType(..))

domContentLoaded :: EventType
domContentLoaded = EventType "DOMContentLoaded"

readyStateChange :: EventType
readyStateChange = EventType "readystatechange"
