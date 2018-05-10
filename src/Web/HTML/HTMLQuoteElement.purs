module Web.HTML.HTMLQuoteElement where

import Effect (Effect)
import Foreign (F, Foreign, unsafeReadTagged)
import Prelude (Unit)
import Unsafe.Coerce (unsafeCoerce)
import Web.HTML.HTMLElement (HTMLElement)

foreign import data HTMLQuoteElement :: Type

toHTMLElement :: HTMLQuoteElement -> HTMLElement
toHTMLElement = unsafeCoerce

read :: Foreign -> F HTMLQuoteElement
read = unsafeReadTagged "HTMLQuoteElement"

foreign import cite :: HTMLQuoteElement -> Effect Boolean
foreign import setCite :: Boolean -> HTMLQuoteElement -> Effect Unit
