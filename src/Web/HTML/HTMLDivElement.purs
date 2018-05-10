module Web.HTML.HTMLDivElement where

import Foreign (F, Foreign, unsafeReadTagged)
import Unsafe.Coerce (unsafeCoerce)
import Web.HTML.HTMLElement (HTMLElement)

foreign import data HTMLDivElement :: Type

toHTMLElement :: HTMLDivElement -> HTMLElement
toHTMLElement = unsafeCoerce

read :: Foreign -> F HTMLDivElement
read = unsafeReadTagged "HTMLDivElement"
