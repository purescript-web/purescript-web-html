module Web.HTML.HTMLHRElement where

import Foreign (F, Foreign, unsafeReadTagged)
import Unsafe.Coerce (unsafeCoerce)
import Web.HTML.HTMLElement (HTMLElement)

foreign import data HTMLHRElement :: Type

toHTMLElement :: HTMLHRElement -> HTMLElement
toHTMLElement = unsafeCoerce

read :: Foreign -> F HTMLHRElement
read = unsafeReadTagged "HTMLHRElement"
