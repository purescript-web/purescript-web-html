module Web.HTML.HTMLOListElement where

import Effect (Effect)
import Foreign (F, Foreign, unsafeReadTagged)
import Prelude (Unit)
import Unsafe.Coerce (unsafeCoerce)
import Web.HTML.HTMLElement (HTMLElement)

foreign import data HTMLOListElement :: Type

toHTMLElement :: HTMLOListElement -> HTMLElement
toHTMLElement = unsafeCoerce

read :: Foreign -> F HTMLOListElement
read = unsafeReadTagged "HTMLOListElement"

foreign import reversed :: HTMLOListElement -> Effect Boolean
foreign import setReversed :: Boolean -> HTMLOListElement -> Effect Unit

foreign import start :: HTMLOListElement -> Effect Int
foreign import setStart :: Int -> HTMLOListElement -> Effect Unit

foreign import type_ :: HTMLOListElement -> Effect String
foreign import setType :: String -> HTMLOListElement -> Effect Unit
