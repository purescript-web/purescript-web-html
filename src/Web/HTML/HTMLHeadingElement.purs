module Web.HTML.HTMLHeadingElement where

import Foreign (F, Foreign, unsafeReadTagged)
import Unsafe.Coerce (unsafeCoerce)
import Web.HTML.HTMLElement (HTMLElement)

foreign import data HTMLHeadingElement :: Type

toHTMLElement :: HTMLHeadingElement -> HTMLElement
toHTMLElement = unsafeCoerce

read :: Foreign -> F HTMLHeadingElement
read = unsafeReadTagged "HTMLHeadingElement"
