module Web.HTML.HTMLSourceElement where

import Effect (Effect)
import Foreign (Foreign, F, unsafeReadTagged)
import Prelude (Unit)
import Unsafe.Coerce (unsafeCoerce)
import Web.HTML.HTMLElement (HTMLElement)

foreign import data HTMLSourceElement :: Type

toHTMLElement :: HTMLSourceElement -> HTMLElement
toHTMLElement = unsafeCoerce

read :: Foreign -> F HTMLSourceElement
read = unsafeReadTagged "HTMLSourceElement"

-- [NamedConstructor=Audio(optional DOMString src)]

foreign import src :: HTMLSourceElement -> Effect String
foreign import setSrc :: String -> HTMLSourceElement -> Effect Unit

foreign import type_ :: HTMLSourceElement -> Effect String
foreign import setType :: String -> HTMLSourceElement -> Effect Unit

foreign import media :: HTMLSourceElement -> Effect String
foreign import setMedia :: String -> HTMLSourceElement -> Effect Unit
