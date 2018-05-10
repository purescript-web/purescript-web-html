module Web.HTML.HTMLAnchorElement where

import Effect (Effect)
import Foreign (Foreign, F, unsafeReadTagged)
import Prelude (Unit)
import Unsafe.Coerce (unsafeCoerce)
import Web.DOM.DOMTokenList (DOMTokenList)
import Web.HTML.HTMLElement (HTMLElement)

foreign import data HTMLAnchorElement :: Type

toHTMLElement :: HTMLAnchorElement -> HTMLElement
toHTMLElement = unsafeCoerce

read :: Foreign -> F HTMLAnchorElement
read = unsafeReadTagged "HTMLAnchorElement"

foreign import target :: HTMLAnchorElement -> Effect String
foreign import setTarget :: String -> HTMLAnchorElement -> Effect Unit

foreign import download :: HTMLAnchorElement -> Effect String
foreign import setDownload :: String -> HTMLAnchorElement -> Effect Unit

foreign import rel :: HTMLAnchorElement -> Effect String
foreign import setRel :: String -> HTMLAnchorElement -> Effect Unit

foreign import rev :: HTMLAnchorElement -> Effect String
foreign import setRev :: String -> HTMLAnchorElement -> Effect Unit

foreign import relList :: HTMLAnchorElement -> Effect DOMTokenList

foreign import hreflang :: HTMLAnchorElement -> Effect String
foreign import setHreflang :: String -> HTMLAnchorElement -> Effect Unit

foreign import type_ :: HTMLAnchorElement -> Effect String
foreign import setType :: String -> HTMLAnchorElement -> Effect Unit

foreign import text :: HTMLAnchorElement -> Effect String
foreign import setText :: String -> HTMLAnchorElement -> Effect Unit
