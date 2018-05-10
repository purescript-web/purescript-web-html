module Web.HTML.HTMLTableCellElement where

import Effect (Effect)
import Foreign (F, Foreign, unsafeReadTagged)
import Prelude (Unit)
import Unsafe.Coerce (unsafeCoerce)
import Web.HTML.HTMLElement (HTMLElement)

foreign import data HTMLTableCellElement :: Type

toHTMLElement :: HTMLTableCellElement -> HTMLElement
toHTMLElement = unsafeCoerce

read :: Foreign -> F HTMLTableCellElement
read = unsafeReadTagged "HTMLTableCellElement"

foreign import colSpan :: HTMLTableCellElement -> Effect Int
foreign import setColSpan :: Int -> HTMLTableCellElement -> Effect Unit

foreign import rowSpan :: HTMLTableCellElement -> Effect Int
foreign import setRowSpan :: Int -> HTMLTableCellElement -> Effect Unit

--   [PutForwards=value] readonly attribute DOMSettableTokenList headers;

foreign import cellIndex :: HTMLTableCellElement -> Effect Int
