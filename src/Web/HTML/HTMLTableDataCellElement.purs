module Web.HTML.HTMLTableDataCellElement where

import Foreign (F, Foreign, unsafeReadTagged)
import Unsafe.Coerce (unsafeCoerce)
import Web.HTML.HTMLTableCellElement (HTMLTableCellElement)

foreign import data HTMLTableDataCellElement :: Type

toHTMLTableCellElement :: HTMLTableDataCellElement -> HTMLTableCellElement
toHTMLTableCellElement = unsafeCoerce

read :: Foreign -> F HTMLTableDataCellElement
read = unsafeReadTagged "HTMLTableDataCellElement"
