module Web.HTML.HTMLTableSectionElement where

import Prelude

import Effect (Effect)
import Foreign (F, Foreign, unsafeReadTagged)
import Unsafe.Coerce (unsafeCoerce)
import Web.DOM.HTMLCollection (HTMLCollection)
import Web.HTML.HTMLElement (HTMLElement)

foreign import data HTMLTableSectionElement :: Type

toHTMLElement :: HTMLTableSectionElement -> HTMLElement
toHTMLElement = unsafeCoerce

read :: Foreign -> F HTMLTableSectionElement
read = unsafeReadTagged "HTMLTableSectionElement"

foreign import rows :: HTMLTableSectionElement -> Effect HTMLCollection

insertRow :: HTMLTableSectionElement -> Effect HTMLElement
insertRow = insertRow' (-1)

foreign import insertRow' :: Int -> HTMLTableSectionElement -> Effect HTMLElement

foreign import deleteRow :: Int -> HTMLTableSectionElement -> Effect Unit
