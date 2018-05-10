module Web.HTML.HTMLFieldSetElement
  ( HTMLFieldSetElement
  , toHTMLElement
  , read
  , disabled
  , setDisabled
  , form
  , name
  , setName
  , type_
  , setType
  , willValidate
  , validity
  , validationMessage
  , checkValidity
  , setCustomValidity
  ) where

import Prelude

import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)
import Effect (Effect)
import Foreign (F, Foreign, unsafeReadTagged)
import Unsafe.Coerce (unsafeCoerce)
import Web.HTML.HTMLElement (HTMLElement)
import Web.HTML.HTMLFormElement (HTMLFormElement)
import Web.HTML.ValidityState (ValidityState)

foreign import data HTMLFieldSetElement :: Type

toHTMLElement :: HTMLFieldSetElement -> HTMLElement
toHTMLElement = unsafeCoerce

read :: Foreign -> F HTMLFieldSetElement
read = unsafeReadTagged "HTMLFieldSetElement"

foreign import disabled :: HTMLFieldSetElement -> Effect Boolean
foreign import setDisabled :: Boolean -> HTMLFieldSetElement -> Effect Unit

foreign import _form :: HTMLFieldSetElement -> Effect (Nullable HTMLFormElement)

form :: HTMLFieldSetElement -> Effect (Maybe HTMLFormElement)
form = map toMaybe <<< _form

foreign import name :: HTMLFieldSetElement -> Effect String
foreign import setName :: String -> HTMLFieldSetElement -> Effect Unit

foreign import type_ :: HTMLFieldSetElement -> Effect String
foreign import setType :: String -> HTMLFieldSetElement -> Effect Unit

--   readonly attribute HTMLFormControlsCollection elements;

foreign import willValidate :: HTMLFieldSetElement -> Effect Boolean

foreign import validity :: HTMLFieldSetElement -> Effect ValidityState

foreign import validationMessage :: HTMLFieldSetElement -> Effect String

foreign import checkValidity :: HTMLFieldSetElement -> Effect Boolean

foreign import setCustomValidity :: String -> HTMLFieldSetElement -> Effect Unit
