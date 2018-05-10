module Web.HTML.HTMLBodyElement where

import Foreign (F, Foreign, unsafeReadTagged)
import Unsafe.Coerce (unsafeCoerce)
import Web.HTML.HTMLElement (HTMLElement)

foreign import data HTMLBodyElement :: Type

toHTMLElement :: HTMLBodyElement -> HTMLElement
toHTMLElement = unsafeCoerce

read :: Foreign -> F HTMLBodyElement
read = unsafeReadTagged "HTMLBodyElement"
