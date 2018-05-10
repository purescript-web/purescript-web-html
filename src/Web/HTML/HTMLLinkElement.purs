module Web.HTML.HTMLLinkElement where

import Effect (Effect)
import Foreign (Foreign, F, unsafeReadTagged)
import Prelude (Unit)
import Unsafe.Coerce (unsafeCoerce)
import Web.DOM.DOMTokenList (DOMTokenList)
import Web.HTML.HTMLElement (HTMLElement)

foreign import data HTMLLinkElement :: Type

toHTMLElement :: HTMLLinkElement -> HTMLElement
toHTMLElement = unsafeCoerce

read :: Foreign -> F HTMLLinkElement
read = unsafeReadTagged "HTMLLinkElement"

foreign import disabled :: HTMLLinkElement -> Effect Boolean
foreign import setDisabled :: Boolean -> HTMLLinkElement -> Effect Unit

foreign import href :: HTMLLinkElement -> Effect String
foreign import setHref :: String -> HTMLLinkElement -> Effect Unit

foreign import crossOrigin :: HTMLLinkElement -> Effect String
foreign import setCrossOrigin :: String -> HTMLLinkElement -> Effect Unit

foreign import rel :: HTMLLinkElement -> Effect String
foreign import setRel :: String -> HTMLLinkElement -> Effect Unit

foreign import rev :: HTMLLinkElement -> Effect String
foreign import setRev :: String -> HTMLLinkElement -> Effect Unit

foreign import relList :: HTMLLinkElement -> Effect DOMTokenList

foreign import media :: HTMLLinkElement -> Effect String
foreign import setMedia :: String -> HTMLLinkElement -> Effect Unit

foreign import hreflang :: HTMLLinkElement -> Effect String
foreign import setHreflang :: String -> HTMLLinkElement -> Effect Unit

foreign import type_ :: HTMLLinkElement -> Effect String
foreign import setType :: String -> HTMLLinkElement -> Effect Unit

--   [PutForwards=value] readonly attribute DOMSettableTokenList sizes;

-- HTMLLinkElement implements LinkStyle;
