module Web.HTML.HTMLParagraphElement where

import Foreign (F, Foreign, unsafeReadTagged)
import Unsafe.Coerce (unsafeCoerce)
import Web.HTML.HTMLElement (HTMLElement)

foreign import data HTMLParagraphElement :: Type

toHTMLElement :: HTMLParagraphElement -> HTMLElement
toHTMLElement = unsafeCoerce

read :: Foreign -> F HTMLParagraphElement
read = unsafeReadTagged "HTMLParagraphElement"
