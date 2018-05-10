module Web.HTML.Window.EventTypes where

import Web.Event.Event (EventType(..))

abort :: EventType
abort = EventType "abort"

afterprint :: EventType
afterprint = EventType "afterprint"

beforeprint :: EventType
beforeprint = EventType "beforeprint"

beforeunload :: EventType
beforeunload = EventType "beforeunload"

blur :: EventType
blur = EventType "blur"

focus :: EventType
focus = EventType "focus"

hashchange :: EventType
hashchange = EventType "hashchange"

load :: EventType
load = EventType "load"

message :: EventType
message = EventType "message"

pagehide :: EventType
pagehide = EventType "pagehide"

pageshow :: EventType
pageshow = EventType "pageshow"

popstate :: EventType
popstate = EventType "popstate"

storage :: EventType
storage = EventType "storage"

unload :: EventType
unload = EventType "unload"
