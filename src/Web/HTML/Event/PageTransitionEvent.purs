module Web.HTML.Event.PageTransitionEvent where

import Foreign (F, Foreign, unsafeReadTagged)
import Unsafe.Coerce (unsafeCoerce)
import Web.Event.Types (Event)

foreign import data PageTransitionEvent :: Type

toEvent :: PageTransitionEvent -> Event
toEvent = unsafeCoerce

read :: Foreign -> F PageTransitionEvent
read = unsafeReadTagged "PageTransitionEvent"

foreign import persisted :: PageTransitionEvent -> Boolean
