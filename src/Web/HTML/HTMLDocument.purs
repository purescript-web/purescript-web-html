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
  , documentElement
  , head
  , body
  , readyState
  , activeElement
  , currentScript
  , referrer
  , title
  , setTitle
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
import Web.HTML.HTMLHtmlElement (HTMLHtmlElement)
import Web.HTML.HTMLScriptElement (HTMLScriptElement)
import Web.Internal.FFI (unsafeReadProtoTagged)

foreign import data HTMLDocument :: Type

fromDocument :: Document -> Maybe HTMLDocument
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

foreign import _documentElement :: HTMLDocument -> Effect (Nullable HTMLHtmlElement)

documentElement :: HTMLDocument -> Effect (Maybe HTMLHtmlElement)
documentElement = map toMaybe <<< _documentElement

foreign import _head :: HTMLDocument -> Effect (Nullable HTMLElement)

head :: HTMLDocument -> Effect (Maybe HTMLElement)
head = map toMaybe <<< _head

foreign import _body :: HTMLDocument -> Effect (Nullable HTMLElement)

body :: HTMLDocument -> Effect (Maybe HTMLElement)
body = map toMaybe <<< _body

foreign import _readyState :: HTMLDocument -> Effect String

readyState :: HTMLDocument -> Effect ReadyState
readyState = map (fromMaybe ReadyState.Loading <<< ReadyState.parse) <<< _readyState

foreign import _activeElement :: HTMLDocument -> Effect (Nullable HTMLElement)

activeElement :: HTMLDocument -> Effect (Maybe HTMLElement)
activeElement = map toMaybe <<< _activeElement

foreign import _currentScript :: HTMLDocument -> Effect (Nullable HTMLScriptElement)

currentScript :: HTMLDocument -> Effect (Maybe HTMLScriptElement)
currentScript = map toMaybe <<< _currentScript

foreign import referrer :: HTMLDocument -> Effect String

foreign import title :: HTMLDocument -> Effect String
foreign import setTitle :: String -> HTMLDocument -> Effect Unit
