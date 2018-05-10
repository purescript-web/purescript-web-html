module Web.HTML.HTMLDataElement where

import Effect (Effect)
import Foreign (F, Foreign, unsafeReadTagged)
import Prelude (Unit)
import Unsafe.Coerce (unsafeCoerce)
import Web.HTML.HTMLElement (HTMLElement)

foreign import data HTMLDataElement :: Type

toHTMLElement :: HTMLDataElement -> HTMLElement
toHTMLElement = unsafeCoerce

read :: Foreign -> F HTMLDataElement
read = unsafeReadTagged "HTMLDataElement"

foreign import value :: HTMLDataElement -> Effect String
foreign import setValue :: String -> HTMLDataElement -> Effect Unit
