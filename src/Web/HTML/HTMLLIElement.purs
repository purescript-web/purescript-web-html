module Web.HTML.HTMLLIElement where

import Effect (Effect)
import Foreign (F, Foreign, unsafeReadTagged)
import Prelude (Unit)
import Unsafe.Coerce (unsafeCoerce)
import Web.HTML.HTMLElement (HTMLElement)

foreign import data HTMLLIElement :: Type

toHTMLElement :: HTMLLIElement -> HTMLElement
toHTMLElement = unsafeCoerce

read :: Foreign -> F HTMLLIElement
read = unsafeReadTagged "HTMLLIElement"

foreign import value :: HTMLLIElement -> Effect Int
foreign import setValue :: Int -> HTMLLIElement -> Effect Unit
