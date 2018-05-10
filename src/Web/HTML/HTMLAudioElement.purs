module Web.HTML.HTMLAudioElement where

import Foreign (F, Foreign, unsafeReadTagged)
import Unsafe.Coerce (unsafeCoerce)
import Web.HTML.HTMLMediaElement (HTMLMediaElement)

foreign import data HTMLAudioElement :: Type

toHTMLMediaElement :: HTMLAudioElement -> HTMLMediaElement
toHTMLMediaElement = unsafeCoerce

read :: Foreign -> F HTMLAudioElement
read = unsafeReadTagged "HTMLAudioElement"
