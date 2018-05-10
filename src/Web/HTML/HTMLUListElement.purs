module Web.HTML.HTMLUListElement where

import Foreign (F, Foreign, unsafeReadTagged)
import Unsafe.Coerce (unsafeCoerce)
import Web.HTML.HTMLElement (HTMLElement)

foreign import data HTMLUListElement :: Type

toHTMLElement :: HTMLUListElement -> HTMLElement
toHTMLElement = unsafeCoerce

read :: Foreign -> F HTMLUListElement
read = unsafeReadTagged "HTMLUListElement"
