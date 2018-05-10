module Web.HTML.HTMLTimeElement where

import Effect (Effect)
import Foreign (F, Foreign, unsafeReadTagged)
import Prelude (Unit)
import Unsafe.Coerce (unsafeCoerce)
import Web.HTML.HTMLElement (HTMLElement)

foreign import data HTMLTimeElement :: Type

toHTMLElement :: HTMLTimeElement -> HTMLElement
toHTMLElement = unsafeCoerce

read :: Foreign -> F HTMLTimeElement
read = unsafeReadTagged "HTMLTimeElement"

foreign import dateTime :: HTMLTimeElement -> Effect String
foreign import setDateTime :: String -> HTMLTimeElement -> Effect Unit
