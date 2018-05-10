module Web.HTML.HTMLOutputElement
  ( HTMLOutputElement
  , toHTMLElement
  , read
  , form
  , name
  , setName
  , type_
  , defaultValue
  , setDefaultValue
  , value
  , setValue
  , willValidate
  , validity
  , validationMessage
  , checkValidity
  , setCustomValidity
  , labels
  ) where

import Prelude

import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)
import Effect (Effect)
import Foreign (F, Foreign, unsafeReadTagged)
import Unsafe.Coerce (unsafeCoerce)
import Web.DOM.NodeList (NodeList)
import Web.HTML.HTMLElement (HTMLElement)
import Web.HTML.HTMLFormElement (HTMLFormElement)
import Web.HTML.ValidityState (ValidityState)

foreign import data HTMLOutputElement :: Type

toHTMLElement :: HTMLOutputElement -> HTMLElement
toHTMLElement = unsafeCoerce

read :: Foreign -> F HTMLOutputElement
read = unsafeReadTagged "HTMLOutputElement"

--   [PutForwards=value] readonly attribute DOMSettableTokenList htmlFor;

form :: HTMLOutputElement -> Effect (Maybe HTMLFormElement)
form = map toMaybe <<< _form

foreign import _form :: HTMLOutputElement -> Effect (Nullable HTMLFormElement)

foreign import name :: HTMLOutputElement -> Effect String
foreign import setName :: String -> HTMLOutputElement -> Effect Unit

foreign import type_ :: HTMLOutputElement -> Effect String

foreign import defaultValue :: HTMLOutputElement -> Effect String
foreign import setDefaultValue :: String -> HTMLOutputElement -> Effect Unit

foreign import value :: HTMLOutputElement -> Effect String
foreign import setValue :: String -> HTMLOutputElement -> Effect Unit

foreign import willValidate :: HTMLOutputElement -> Effect Boolean

foreign import validity :: HTMLOutputElement -> Effect ValidityState

foreign import validationMessage :: HTMLOutputElement -> Effect String

foreign import checkValidity :: HTMLOutputElement -> Effect Boolean

foreign import setCustomValidity :: String -> HTMLOutputElement -> Effect Unit

foreign import labels :: HTMLOutputElement -> Effect NodeList
