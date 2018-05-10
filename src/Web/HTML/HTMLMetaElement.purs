module Web.HTML.HTMLMetaElement where

import Effect (Effect)
import Foreign (F, Foreign, unsafeReadTagged)
import Prelude (Unit)
import Unsafe.Coerce (unsafeCoerce)
import Web.HTML.HTMLElement (HTMLElement)

foreign import data HTMLMetaElement :: Type

toHTMLElement :: HTMLMetaElement -> HTMLElement
toHTMLElement = unsafeCoerce

read :: Foreign -> F HTMLMetaElement
read = unsafeReadTagged "HTMLMetaElement"

foreign import name :: HTMLMetaElement -> Effect String
foreign import setName :: String -> HTMLMetaElement -> Effect Unit

foreign import httpEquiv :: HTMLMetaElement -> Effect String
foreign import setHttpEquiv :: String -> HTMLMetaElement -> Effect Unit

foreign import content :: HTMLMetaElement -> Effect String
foreign import setContent :: String -> HTMLMetaElement -> Effect Unit
