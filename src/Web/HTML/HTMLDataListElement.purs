module Web.HTML.HTMLDataListElement where

import Effect (Effect)
import Foreign (F, Foreign, unsafeReadTagged)
import Unsafe.Coerce (unsafeCoerce)
import Web.DOM.HTMLCollection (HTMLCollection)
import Web.HTML.HTMLElement (HTMLElement)

foreign import data HTMLDataListElement :: Type

toHTMLElement :: HTMLDataListElement -> HTMLElement
toHTMLElement = unsafeCoerce

read :: Foreign -> F HTMLDataListElement
read = unsafeReadTagged "HTMLDataListElement"

foreign import options :: HTMLDataListElement -> Effect HTMLCollection
