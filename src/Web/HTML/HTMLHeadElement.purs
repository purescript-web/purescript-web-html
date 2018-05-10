module Web.HTML.HTMLHeadElement where

import Foreign (F, Foreign, unsafeReadTagged)
import Unsafe.Coerce (unsafeCoerce)
import Web.HTML.HTMLElement (HTMLElement)

foreign import data HTMLHeadElement :: Type

htmlHeadElementToHTMLElement :: HTMLHeadElement -> HTMLElement
htmlHeadElementToHTMLElement = unsafeCoerce

readHTMLHeadElement :: Foreign -> F HTMLHeadElement
readHTMLHeadElement = unsafeReadTagged "HTMLHeadElement"
