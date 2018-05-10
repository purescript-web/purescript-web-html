module Web.HTML.HTMLDListElement where

import Foreign (F, Foreign, unsafeReadTagged)
import Unsafe.Coerce (unsafeCoerce)
import Web.HTML.HTMLElement (HTMLElement)

foreign import data HTMLDListElement :: Type

toHTMLElement :: HTMLDListElement -> HTMLElement
toHTMLElement = unsafeCoerce

read :: Foreign -> F HTMLDListElement
read = unsafeReadTagged "HTMLDListElement"
