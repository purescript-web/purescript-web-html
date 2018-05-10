module Web.HTML.HTMLBaseElement where

import Effect (Effect)
import Foreign (F, Foreign, unsafeReadTagged)
import Prelude (Unit)
import Unsafe.Coerce (unsafeCoerce)
import Web.HTML.HTMLElement (HTMLElement)

foreign import data HTMLBaseElement :: Type

toHTMLElement :: HTMLBaseElement -> HTMLElement
toHTMLElement = unsafeCoerce

read :: Foreign -> F HTMLBaseElement
read = unsafeReadTagged "HTMLBaseElement"

foreign import href :: HTMLBaseElement -> Effect String
foreign import setHref :: String -> HTMLBaseElement -> Effect Unit

foreign import target :: HTMLBaseElement -> Effect String
foreign import setTarget :: String -> HTMLBaseElement -> Effect Unit
