module Web.HTML.HTMLStyleElement where

import Effect (Effect)
import Foreign (F, Foreign, unsafeReadTagged)
import Prelude (Unit)
import Unsafe.Coerce (unsafeCoerce)
import Web.HTML.HTMLElement (HTMLElement)

foreign import data HTMLStyleElement :: Type

toHTMLElement :: HTMLStyleElement -> HTMLElement
toHTMLElement = unsafeCoerce

read :: Foreign -> F HTMLStyleElement
read = unsafeReadTagged "HTMLStyleElement"

foreign import media :: HTMLStyleElement -> Effect String
foreign import setMedia :: String -> HTMLStyleElement -> Effect Unit

foreign import type_ :: HTMLStyleElement -> Effect String
foreign import setType :: String -> HTMLStyleElement -> Effect Unit
