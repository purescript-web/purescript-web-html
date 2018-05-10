module Web.HTML.Event.BeforeUnloadEvent where

import Prelude

import Effect (Effect)
import Foreign (F, Foreign, unsafeReadTagged)
import Unsafe.Coerce (unsafeCoerce)
import Web.Event.Types (Event)

foreign import data BeforeUnloadEvent :: Type

toEvent :: BeforeUnloadEvent -> Event
toEvent = unsafeCoerce

read :: Foreign -> F BeforeUnloadEvent
read = unsafeReadTagged "BeforeUnloadEvent"

foreign import returnValue :: BeforeUnloadEvent -> Effect String

foreign import setReturnValue :: String -> BeforeUnloadEvent -> Effect Unit
