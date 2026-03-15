module Web.HTML.History
  ( History
  , DocumentTitle(..)
  , Delta(..)
  , URL(..)
  , back
  , forward
  , go
  , pushState
  , replaceState
  , state
  , length
  , scrollRestoration
  , setScrollRestoration
  ) where

import Prelude

import Data.Maybe (fromMaybe)
import Data.Newtype (class Newtype)
import Effect (Effect)
import Foreign (Foreign)
import Web.HTML.ScrollRestoration (ScrollRestoration(..), parse, print)

foreign import data History :: Type

-- DocumentTitle will set value of `document.title`
newtype DocumentTitle = DocumentTitle String

derive instance eqDocumentTitle :: Eq DocumentTitle
derive instance ordDocumentTitle :: Ord DocumentTitle
derive instance newtypeDocumentTitle :: Newtype DocumentTitle _

newtype Delta = Delta Int

derive instance eqDelta :: Eq Delta
derive instance ordDelta :: Ord Delta
derive instance newtypeDelta :: Newtype Delta _

newtype URL = URL String

derive instance eqURL :: Eq URL
derive instance ordURL :: Ord URL
derive instance newtypeURL :: Newtype URL _

foreign import back :: History -> Effect Unit
foreign import forward :: History -> Effect Unit
foreign import go :: Delta -> History -> Effect Unit
foreign import pushState :: Foreign -> DocumentTitle -> URL -> History -> Effect Unit
foreign import replaceState :: Foreign -> DocumentTitle -> URL -> History -> Effect Unit
foreign import state :: History -> Effect Foreign
foreign import length :: History -> Effect Int

foreign import _scrollRestoration :: History -> Effect String
foreign import _setScrollRestoration :: String -> History -> Effect Unit

scrollRestoration :: History -> Effect ScrollRestoration
scrollRestoration = map (fromMaybe Auto <<< parse) <<< _scrollRestoration

setScrollRestoration :: ScrollRestoration -> History -> Effect Unit
setScrollRestoration = _setScrollRestoration <<< print
