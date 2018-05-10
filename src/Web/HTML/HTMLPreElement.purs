module Web.HTML.HTMLPreElement where

import Foreign (F, Foreign, unsafeReadTagged)
import Unsafe.Coerce (unsafeCoerce)
import Web.HTML.HTMLElement (HTMLElement)

foreign import data HTMLPreElement :: Type

toHTMLElement :: HTMLPreElement -> HTMLElement
toHTMLElement = unsafeCoerce

read :: Foreign -> F HTMLPreElement
read = unsafeReadTagged "HTMLPreElement"
