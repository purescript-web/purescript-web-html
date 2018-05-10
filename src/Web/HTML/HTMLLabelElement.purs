module Web.HTML.HTMLLabelElement
  ( HTMLLabelElement
  , toHTMLElement
  , read
  , form
  , htmlFor
  , setHtmlFor
  , control
  ) where

import Prelude

import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)
import Effect (Effect)
import Foreign (Foreign, F, unsafeReadTagged)
import Unsafe.Coerce (unsafeCoerce)
import Web.HTML.HTMLElement (HTMLElement)
import Web.HTML.HTMLFormElement (HTMLFormElement)

foreign import data HTMLLabelElement :: Type

toHTMLElement :: HTMLLabelElement -> HTMLElement
toHTMLElement = unsafeCoerce

read :: Foreign -> F HTMLLabelElement
read = unsafeReadTagged "HTMLLabelElement"

form :: HTMLLabelElement -> Effect (Maybe HTMLFormElement)
form = map toMaybe <<< _form

foreign import _form :: HTMLLabelElement -> Effect (Nullable HTMLFormElement)

foreign import htmlFor :: HTMLLabelElement -> Effect String
foreign import setHtmlFor :: String -> HTMLLabelElement -> Effect Unit

control :: HTMLLabelElement -> Effect (Maybe HTMLElement)
control = map toMaybe <<< _control

foreign import _control :: HTMLLabelElement -> Effect (Nullable HTMLElement)
