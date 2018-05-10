module Web.HTML.HTMLParamElement where

import Effect (Effect)
import Foreign (Foreign, F, unsafeReadTagged)
import Prelude (Unit)
import Unsafe.Coerce (unsafeCoerce)
import Web.HTML.HTMLElement (HTMLElement)

foreign import data HTMLParamElement :: Type

toHTMLElement :: HTMLParamElement -> HTMLElement
toHTMLElement = unsafeCoerce

read :: Foreign -> F HTMLParamElement
read = unsafeReadTagged "HTMLParamElement"

foreign import name :: HTMLParamElement -> Effect String
foreign import setName :: String -> HTMLParamElement -> Effect Unit

foreign import value :: HTMLParamElement -> Effect String
foreign import setValue :: String -> HTMLParamElement -> Effect Unit
