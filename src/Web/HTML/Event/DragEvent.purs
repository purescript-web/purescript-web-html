module Web.HTML.Event.DragEvent where

import Foreign (Foreign, F, unsafeReadTagged)
import Unsafe.Coerce (unsafeCoerce)
import Web.Event.Types (Event)
import Web.HTML.Event.DataTransfer (DataTransfer)

foreign import data DragEvent :: Type

dragEventToEvent :: DragEvent -> Event
dragEventToEvent = unsafeCoerce

readDragEvent :: Foreign -> F DragEvent
readDragEvent = unsafeReadTagged "DragEvent"

foreign import dataTransfer :: DragEvent -> DataTransfer
