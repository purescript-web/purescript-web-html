module Web.HTML.Event.ErrorEvent where

import Foreign (F, Foreign, unsafeReadTagged)
import Unsafe.Coerce (unsafeCoerce)
import Web.Event.Types (Event)

foreign import data ErrorEvent :: Type

toEvent :: ErrorEvent -> Event
toEvent = unsafeCoerce

read :: Foreign -> F ErrorEvent
read = unsafeReadTagged "ErrorEvent"

foreign import message :: ErrorEvent -> String

foreign import fileName :: ErrorEvent -> String

foreign import lineNo :: ErrorEvent -> Int

foreign import colNo :: ErrorEvent -> Int
