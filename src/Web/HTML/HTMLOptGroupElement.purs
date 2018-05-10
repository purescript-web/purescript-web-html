module Web.HTML.HTMLOptGroupElement where

import Effect (Effect)
import Foreign (F, Foreign, unsafeReadTagged)
import Prelude (Unit)
import Unsafe.Coerce (unsafeCoerce)
import Web.HTML.HTMLElement (HTMLElement)

foreign import data HTMLOptGroupElement :: Type

toHTMLElement :: HTMLOptGroupElement -> HTMLElement
toHTMLElement = unsafeCoerce

read :: Foreign -> F HTMLOptGroupElement
read = unsafeReadTagged "HTMLOptGroupElement"

foreign import disabled :: HTMLOptGroupElement -> Effect Boolean
foreign import setDisabled :: Boolean -> HTMLOptGroupElement -> Effect Unit

foreign import label :: HTMLOptGroupElement -> Effect String
foreign import setLabel :: String -> HTMLOptGroupElement -> Effect Unit
