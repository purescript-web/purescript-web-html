module Web.HTML.HTMLBRElement where

import Foreign (F, Foreign, unsafeReadTagged)
import Unsafe.Coerce (unsafeCoerce)
import Web.HTML.HTMLElement (HTMLElement)

foreign import data HTMLBRElement :: Type

toHTMLElement :: HTMLBRElement -> HTMLElement
toHTMLElement = unsafeCoerce

read :: Foreign -> F HTMLBRElement
read = unsafeReadTagged "HTMLBRElement"
