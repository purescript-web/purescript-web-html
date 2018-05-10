module Web.HTML.HTMLFormElement.EventTypes where

import Web.Event.Event (EventType(..))

reset :: EventType
reset = EventType "reset"

submit :: EventType
submit = EventType "submit"
