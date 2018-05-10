module Web.HTML.HTMLMeterElement where

import Effect (Effect)
import Foreign (F, Foreign, unsafeReadTagged)
import Prelude (Unit)
import Unsafe.Coerce (unsafeCoerce)
import Web.DOM.NodeList (NodeList)
import Web.HTML.HTMLElement (HTMLElement)

foreign import data HTMLMeterElement :: Type

toHTMLElement :: HTMLMeterElement -> HTMLElement
toHTMLElement = unsafeCoerce

read :: Foreign -> F HTMLMeterElement
read = unsafeReadTagged "HTMLMeterElement"

foreign import value :: HTMLMeterElement -> Effect Number
foreign import setValue :: Number -> HTMLMeterElement -> Effect Unit

foreign import min :: HTMLMeterElement -> Effect Number
foreign import setMin :: Number -> HTMLMeterElement -> Effect Unit

foreign import max :: HTMLMeterElement -> Effect Number
foreign import setMax :: Number -> HTMLMeterElement -> Effect Unit

foreign import low :: HTMLMeterElement -> Effect Number
foreign import setLow :: Number -> HTMLMeterElement -> Effect Unit

foreign import high :: HTMLMeterElement -> Effect Number
foreign import setHigh :: Number -> HTMLMeterElement -> Effect Unit

foreign import optimum :: HTMLMeterElement -> Effect Number
foreign import setOptimum :: Number -> HTMLMeterElement -> Effect Unit

foreign import labels :: HTMLMeterElement -> Effect NodeList
