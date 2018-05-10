module Web.HTML.HTMLScriptElement.EventTypes where

import Web.Event.Event (EventType(..))

afterscriptexecute :: EventType
afterscriptexecute = EventType "afterscriptexecute"

beforescriptexecute :: EventType
beforescriptexecute = EventType "beforescriptexecute"
