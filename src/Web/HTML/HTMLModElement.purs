module Web.HTML.HTMLModElement where

import Effect (Effect)
import Foreign (F, Foreign, unsafeReadTagged)
import Prelude (Unit)
import Unsafe.Coerce (unsafeCoerce)
import Web.HTML.HTMLElement (HTMLElement)

foreign import data HTMLModElement :: Type

toHTMLElement :: HTMLModElement -> HTMLElement
toHTMLElement = unsafeCoerce

read :: Foreign -> F HTMLModElement
read = unsafeReadTagged "HTMLModElement"

foreign import cite :: HTMLModElement -> Effect String
foreign import setCite :: String -> HTMLModElement -> Effect Unit

foreign import dateTime :: HTMLModElement -> Effect String
foreign import setDateTime :: String -> HTMLModElement -> Effect Unit
