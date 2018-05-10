module Web.HTML.HTMLIFrameElement
  ( HTMLIFrameElement
  , toHTMLElement
  , read
  , src
  , setSrc
  , srcdoc
  , setSrcdoc
  , name
  , setName
  , width
  , setWidth
  , height
  , setHeight
  , contentDocument
  , contentWindow
  ) where

import Prelude

import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)
import Effect (Effect)
import Foreign (F, Foreign, unsafeReadTagged)
import Unsafe.Coerce (unsafeCoerce)
import Web.DOM.Document (Document)
import Web.HTML.HTMLElement (HTMLElement)
import Web.HTML.Window (Window)

foreign import data HTMLIFrameElement :: Type

toHTMLElement :: HTMLIFrameElement -> HTMLElement
toHTMLElement = unsafeCoerce

read :: Foreign -> F HTMLIFrameElement
read = unsafeReadTagged "HTMLIFrameElement"

foreign import src :: HTMLIFrameElement -> Effect String
foreign import setSrc :: String -> HTMLIFrameElement -> Effect Unit

foreign import srcdoc :: HTMLIFrameElement -> Effect String
foreign import setSrcdoc :: String -> HTMLIFrameElement -> Effect Unit

foreign import name :: HTMLIFrameElement -> Effect String
foreign import setName :: String -> HTMLIFrameElement -> Effect Unit

--   [PutForwards=value] readonly attribute DOMSettableTokenList sandbox;

foreign import width :: HTMLIFrameElement -> Effect String
foreign import setWidth :: String -> HTMLIFrameElement -> Effect Unit

foreign import height :: HTMLIFrameElement -> Effect String
foreign import setHeight :: String -> HTMLIFrameElement -> Effect Unit

foreign import _contentDocument :: HTMLIFrameElement -> Effect (Nullable Document)
foreign import _contentWindow :: HTMLIFrameElement -> Effect (Nullable Window)

contentDocument :: HTMLIFrameElement -> Effect (Maybe Document)
contentDocument = map toMaybe <<< _contentDocument

contentWindow :: HTMLIFrameElement -> Effect (Maybe Window)
contentWindow = map toMaybe <<< _contentWindow
