module Web.HTML.HTMLMapElement where

import Effect (Effect)
import Foreign (F, Foreign, unsafeReadTagged)
import Prelude (Unit)
import Unsafe.Coerce (unsafeCoerce)
import Web.DOM.HTMLCollection (HTMLCollection)
import Web.HTML.HTMLElement (HTMLElement)

foreign import data HTMLMapElement :: Type

toHTMLElement :: HTMLMapElement -> HTMLElement
toHTMLElement = unsafeCoerce

read :: Foreign -> F HTMLMapElement
read = unsafeReadTagged "HTMLMapElement"

foreign import name :: HTMLMapElement -> Effect String
foreign import setName :: String -> HTMLMapElement -> Effect Unit

foreign import areas :: HTMLMapElement -> Effect HTMLCollection

foreign import images :: HTMLMapElement -> Effect HTMLCollection
