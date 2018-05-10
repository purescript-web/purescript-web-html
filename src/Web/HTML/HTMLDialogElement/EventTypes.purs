module Web.HTML.HTMLDialogElement.EventTypes where

import Web.Event.Event (EventType(..))

cancel :: EventType
cancel = EventType "cancel"

close :: EventType
close = EventType "close"
