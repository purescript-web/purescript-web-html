module Web.HTML.HTMLVideoElement where

import Prelude

import Effect (Effect)
import Foreign (F, Foreign, unsafeReadTagged)
import Unsafe.Coerce (unsafeCoerce)
import Web.HTML.HTMLMediaElement (HTMLMediaElement)

foreign import data HTMLVideoElement :: Type

toHTMLMediaElement :: HTMLVideoElement -> HTMLMediaElement
toHTMLMediaElement = unsafeCoerce

read :: Foreign -> F HTMLVideoElement
read = unsafeReadTagged "HTMLVideoElement"

foreign import width :: HTMLVideoElement -> Effect Int
foreign import setWidth :: Int -> HTMLVideoElement -> Effect Unit

foreign import height :: HTMLVideoElement -> Effect Int
foreign import setHeight :: Int -> HTMLVideoElement -> Effect Unit

foreign import videoWidth :: HTMLVideoElement -> Effect Int
foreign import videoHeight :: HTMLVideoElement -> Effect Int

foreign import poster :: HTMLVideoElement -> Effect String
foreign import setPoster :: String -> HTMLVideoElement -> Effect Unit
