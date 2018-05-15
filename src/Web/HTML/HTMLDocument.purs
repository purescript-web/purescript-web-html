module Web.HTML.HTMLDocument
  ( HTMLDocument
  , toDocument
  , toNonElementParentNode
  , toParentNode
  , toNode
  , toEventTarget
  , read
  , body
  , readyState
  , activeElement
  , module Exports
  ) where

import Prelude

import Data.Maybe (Maybe, fromJust)
import Data.Nullable (Nullable, toMaybe)
import Effect (Effect)
import Foreign (F, Foreign, unsafeReadTagged)
import Partial.Unsafe (unsafePartial)
import Unsafe.Coerce (unsafeCoerce)
import Web.DOM.Document (Document)
import Web.DOM.Internal.Types (Node)
import Web.DOM.NonElementParentNode (NonElementParentNode)
import Web.DOM.ParentNode (ParentNode)
import Web.Event.EventTarget (EventTarget)
import Web.HTML.HTMLDocument.ReadyState (ReadyState(..)) as Exports
import Web.HTML.HTMLDocument.ReadyState (ReadyState, parseReadyState)
import Web.HTML.HTMLElement (HTMLElement)

foreign import data HTMLDocument :: Type

toDocument :: HTMLDocument -> Document
toDocument = unsafeCoerce

toNonElementParentNode :: HTMLDocument -> NonElementParentNode
toNonElementParentNode = unsafeCoerce

toParentNode :: HTMLDocument -> ParentNode
toParentNode = unsafeCoerce

toNode :: HTMLDocument -> Node
toNode = unsafeCoerce

toEventTarget :: HTMLDocument -> EventTarget
toEventTarget = unsafeCoerce

read :: Foreign -> F HTMLDocument
read = unsafeReadTagged "HTMLDocument"

foreign import _body :: HTMLDocument -> Effect (Nullable HTMLElement)

body :: HTMLDocument -> Effect (Maybe HTMLElement)
body = map toMaybe <<< _body

foreign import _readyState :: HTMLDocument -> Effect String

readyState :: HTMLDocument -> Effect ReadyState
readyState = map (unsafePartial fromJust <<< parseReadyState) <<< _readyState

foreign import _activeElement :: HTMLDocument -> Effect (Nullable HTMLElement)

activeElement :: HTMLDocument -> Effect (Maybe HTMLElement)
activeElement = map toMaybe <<< _activeElement
