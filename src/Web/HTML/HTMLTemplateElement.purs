module Web.HTML.HTMLTemplateElement where

import Effect (Effect)
import Foreign (F, Foreign, unsafeReadTagged)
import Unsafe.Coerce (unsafeCoerce)
import Web.DOM.DocumentFragment (DocumentFragment)
import Web.HTML.HTMLElement (HTMLElement)

foreign import data HTMLTemplateElement :: Type

toHTMLElement :: HTMLTemplateElement -> HTMLElement
toHTMLElement = unsafeCoerce

read :: Foreign -> F HTMLTemplateElement
read = unsafeReadTagged "HTMLTemplateElement"

foreign import content :: HTMLTemplateElement -> Effect DocumentFragment
