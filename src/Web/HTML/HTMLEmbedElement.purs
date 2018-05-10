module Web.HTML.HTMLEmbedElement where

import Effect (Effect)
import Foreign (F, Foreign, unsafeReadTagged)
import Prelude (Unit)
import Unsafe.Coerce (unsafeCoerce)
import Web.HTML.HTMLElement (HTMLElement)

foreign import data HTMLEmbedElement :: Type

toHTMLElement :: HTMLEmbedElement -> HTMLElement
toHTMLElement = unsafeCoerce

read :: Foreign -> F HTMLEmbedElement
read = unsafeReadTagged "HTMLEmbedElement"

foreign import src :: HTMLEmbedElement -> Effect String
foreign import setSrc :: String -> HTMLEmbedElement -> Effect Unit

foreign import type_ :: HTMLEmbedElement -> Effect String
foreign import setType :: String -> HTMLEmbedElement -> Effect Unit

foreign import width :: HTMLEmbedElement -> Effect String
foreign import setWidth :: String -> HTMLEmbedElement -> Effect Unit

foreign import height :: HTMLEmbedElement -> Effect String
foreign import setHeight :: String -> HTMLEmbedElement -> Effect Unit
