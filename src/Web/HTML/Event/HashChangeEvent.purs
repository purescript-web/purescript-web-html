module Web.HTML.Event.HashChangeEvent where

import Foreign (F, Foreign, unsafeReadTagged)
import Unsafe.Coerce (unsafeCoerce)
import Web.Event.Event (Event)

foreign import data HashChangeEvent :: Type

toEvent :: HashChangeEvent -> Event
toEvent = unsafeCoerce

read :: Foreign -> F HashChangeEvent
read = unsafeReadTagged "HashChangeEvent"

foreign import oldURL :: HashChangeEvent -> String

foreign import newURL :: HashChangeEvent -> String
