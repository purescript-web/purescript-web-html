module Web.HTML.HTMLTableCaptionElement where

import Foreign (F, Foreign, unsafeReadTagged)
import Unsafe.Coerce (unsafeCoerce)
import Web.HTML.HTMLElement (HTMLElement)

foreign import data HTMLTableCaptionElement :: Type

toHTMLElement :: HTMLTableCaptionElement -> HTMLElement
toHTMLElement = unsafeCoerce

read :: Foreign -> F HTMLTableCaptionElement
read = unsafeReadTagged "HTMLTableCaptionElement"
