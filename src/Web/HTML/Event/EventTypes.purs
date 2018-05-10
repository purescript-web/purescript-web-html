module Web.HTML.Event.EventTypes where

import Web.Event.Event (EventType(..))

blur :: EventType
blur = EventType "blur"

change :: EventType
change = EventType "change"

click :: EventType
click = EventType "click"

copy :: EventType
copy = EventType "copy"

cut :: EventType
cut = EventType "cut"

error :: EventType
error = EventType "error"

focus :: EventType
focus = EventType "focus"

input :: EventType
input = EventType "input"

invalid :: EventType
invalid = EventType "invalid"

languagechange :: EventType
languagechange = EventType "languagechange"

load :: EventType
load = EventType "load"

offline :: EventType
offline = EventType "offline"

online :: EventType
online = EventType "online"

paste :: EventType
paste = EventType "paste"

select :: EventType
select = EventType "select"
