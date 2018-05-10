module Web.HTML.HTMLTitleElement where

import Prelude

import Effect (Effect)
import Foreign (Foreign, F, unsafeReadTagged)
import Unsafe.Coerce (unsafeCoerce)
import Web.HTML.HTMLElement (HTMLElement)

foreign import data HTMLTitleElement :: Type

toHTMLElement :: HTMLTitleElement -> HTMLElement
toHTMLElement = unsafeCoerce

read :: Foreign -> F HTMLTitleElement
read = unsafeReadTagged "HTMLTitleElement"

foreign import text :: HTMLTitleElement -> Effect String
foreign import setText :: String -> HTMLTitleElement -> Effect Unit
