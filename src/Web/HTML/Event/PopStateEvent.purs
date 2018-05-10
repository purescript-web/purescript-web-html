module Web.HTML.Event.PopStateEvent where

import Foreign (F, Foreign, unsafeReadTagged)
import Unsafe.Coerce (unsafeCoerce)
import Web.Event.Types (Event)

foreign import data PopStateEvent :: Type

toEvent :: PopStateEvent -> Event
toEvent = unsafeCoerce

read :: Foreign -> F PopStateEvent
read = unsafeReadTagged "PopStateEvent"

foreign import state :: PopStateEvent -> Foreign
