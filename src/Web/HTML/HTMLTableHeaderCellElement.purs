module Web.HTML.HTMLTableHeaderCellElement where

import Effect (Effect)
import Foreign (F, Foreign, unsafeReadTagged)
import Prelude (Unit)
import Unsafe.Coerce (unsafeCoerce)
import Web.HTML.HTMLTableCellElement (HTMLTableCellElement)

foreign import data HTMLTableHeaderCellElement :: Type

toHTMLTableCellElement :: HTMLTableHeaderCellElement -> HTMLTableCellElement
toHTMLTableCellElement = unsafeCoerce

read :: Foreign -> F HTMLTableHeaderCellElement
read = unsafeReadTagged "HTMLTableHeaderCellElement"

foreign import scope :: HTMLTableHeaderCellElement -> Effect String
foreign import setScope :: String -> HTMLTableHeaderCellElement -> Effect Unit

foreign import abbr :: HTMLTableHeaderCellElement -> Effect String
foreign import setAbbr :: String -> HTMLTableHeaderCellElement -> Effect Unit
