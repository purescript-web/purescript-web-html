module Web.HTML.HTMLSpanElement where

import Foreign (F, Foreign, unsafeReadTagged)
import Unsafe.Coerce (unsafeCoerce)
import Web.HTML.HTMLElement (HTMLElement)

foreign import data HTMLSpanElement :: Type

toHTMLElement :: HTMLSpanElement -> HTMLElement
toHTMLElement = unsafeCoerce

read :: Foreign -> F HTMLSpanElement
read = unsafeReadTagged "HTMLSpanElement"
