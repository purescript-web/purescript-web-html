module Web.HTML.HTMLTableRowElement where

import Effect (Effect)
import Foreign (Foreign, F, unsafeReadTagged)
import Prelude (Unit, negate)
import Unsafe.Coerce (unsafeCoerce)
import Web.DOM.HTMLCollection (HTMLCollection)
import Web.HTML.HTMLElement (HTMLElement)

foreign import data HTMLTableRowElement :: Type

toHTMLElement :: HTMLTableRowElement -> HTMLElement
toHTMLElement = unsafeCoerce

read :: Foreign -> F HTMLTableRowElement
read = unsafeReadTagged "HTMLTableRowElement"

foreign import rowIndex :: HTMLTableRowElement -> Effect Int

foreign import sectionRowIndex :: HTMLTableRowElement -> Effect Int

foreign import cells :: HTMLTableRowElement -> Effect HTMLCollection

insertCell :: HTMLTableRowElement -> Effect HTMLElement
insertCell = insertCell' (-1)

foreign import insertCell' :: Int -> HTMLTableRowElement -> Effect HTMLElement

foreign import deleteCell :: Int -> HTMLTableRowElement -> Effect Unit
