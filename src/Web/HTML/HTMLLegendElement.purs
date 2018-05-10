module Web.HTML.HTMLLegendElement
  ( HTMLLegendElement
  , toHTMLElement
  , read
  , form
  ) where

import Prelude

import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)
import Effect (Effect)
import Foreign (F, Foreign, unsafeReadTagged)
import Unsafe.Coerce (unsafeCoerce)
import Web.HTML.HTMLElement (HTMLElement)
import Web.HTML.HTMLFormElement (HTMLFormElement)

foreign import data HTMLLegendElement :: Type

toHTMLElement :: HTMLLegendElement -> HTMLElement
toHTMLElement = unsafeCoerce

read :: Foreign -> F HTMLLegendElement
read = unsafeReadTagged "HTMLLegendElement"

form :: HTMLLegendElement -> Effect (Maybe HTMLFormElement)
form = map toMaybe <<< _form

foreign import _form :: HTMLLegendElement -> Effect (Nullable HTMLFormElement)
