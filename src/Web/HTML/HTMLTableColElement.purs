module Web.HTML.HTMLTableColElement where

import Effect (Effect)
import Foreign (F, Foreign, unsafeReadTagged)
import Prelude (Unit)
import Unsafe.Coerce (unsafeCoerce)
import Web.HTML.HTMLElement (HTMLElement)

foreign import data HTMLTableColElement :: Type

toHTMLElement :: HTMLTableColElement -> HTMLElement
toHTMLElement = unsafeCoerce

read :: Foreign -> F HTMLTableColElement
read = unsafeReadTagged "HTMLTableColElement"

foreign import span :: HTMLTableColElement -> Effect Int
foreign import setSpan :: Int -> HTMLTableColElement -> Effect Unit
