module Web.HTML.HTMLDocument
  ( HTMLDocument
  , fromDocument
  , fromNode
  , fromParentNode
  , fromNonElementParentNode
  , fromEventTarget
  , toDocument
  , toNode
  , toParentNode
  , toNonElementParentNode
  , toEventTarget
  , body
  , readyState
  , activeElement
  ) where

import Prelude

import Data.Maybe (Maybe, fromMaybe)
import Data.Nullable (Nullable, toMaybe)
import Effect (Effect)
import Unsafe.Coerce (unsafeCoerce)
import Web.DOM.Document (Document)
import Web.DOM.Internal.Types (Node)
import Web.DOM.NonElementParentNode (NonElementParentNode)
import Web.DOM.ParentNode (ParentNode)
import Web.Event.EventTarget (EventTarget)
import Web.HTML.HTMLDocument.ReadyState (ReadyState)
import Web.HTML.HTMLDocument.ReadyState as ReadyState
import Web.HTML.HTMLElement (HTMLElement)
import Web.Internal.FFI (unsafeReadProtoTagged)

foreign import data HTMLDocument :: Type

fromDocument :: Node -> Maybe Document
fromDocument = unsafeReadProtoTagged "HTMLDocument"

fromNode :: Node -> Maybe HTMLDocument
fromNode = unsafeReadProtoTagged "HTMLDocument"

fromParentNode :: ParentNode -> Maybe HTMLDocument
fromParentNode = unsafeReadProtoTagged "HTMLDocument"

fromNonElementParentNode :: NonElementParentNode -> Maybe HTMLDocument
fromNonElementParentNode = unsafeReadProtoTagged "HTMLDocument"

fromEventTarget :: EventTarget -> Maybe HTMLDocument
fromEventTarget = unsafeReadProtoTagged "HTMLDocument"

toDocument :: HTMLDocument -> Document
toDocument = unsafeCoerce

toNode :: HTMLDocument -> Node
toNode = unsafeCoerce

toParentNode :: HTMLDocument -> ParentNode
toParentNode = unsafeCoerce

toNonElementParentNode :: HTMLDocument -> NonElementParentNode
toNonElementParentNode = unsafeCoerce

toEventTarget :: HTMLDocument -> EventTarget
toEventTarget = unsafeCoerce

foreign import _body :: HTMLDocument -> Effect (Nullable HTMLElement)

body :: HTMLDocument -> Effect (Maybe HTMLElement)
body = map toMaybe <<< _body

foreign import _readyState :: HTMLDocument -> Effect String

readyState :: HTMLDocument -> Effect ReadyState
readyState = map (fromMaybe ReadyState.Loading <<< ReadyState.parse) <<< _readyState

foreign import _activeElement :: HTMLDocument -> Effect (Nullable HTMLElement)

activeElement :: HTMLDocument -> Effect (Maybe HTMLElement)
activeElement = map toMaybe <<< _activeElement
