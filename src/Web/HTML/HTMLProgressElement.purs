module Web.HTML.HTMLProgressElement where

import Effect (Effect)
import Foreign (F, Foreign, unsafeReadTagged)
import Prelude (Unit)
import Unsafe.Coerce (unsafeCoerce)
import Web.DOM.NodeList (NodeList)
import Web.HTML.HTMLElement (HTMLElement)

foreign import data HTMLProgressElement :: Type

toHTMLElement :: HTMLProgressElement -> HTMLElement
toHTMLElement = unsafeCoerce

read :: Foreign -> F HTMLProgressElement
read = unsafeReadTagged "HTMLProgressElement"

foreign import value :: HTMLProgressElement -> Effect Number
foreign import setValue :: Number -> HTMLProgressElement -> Effect Unit

foreign import max :: HTMLProgressElement -> Effect Number
foreign import setMax :: Number -> HTMLProgressElement -> Effect Unit

foreign import position :: HTMLProgressElement -> Effect Number

foreign import labels :: HTMLProgressElement -> Effect NodeList
