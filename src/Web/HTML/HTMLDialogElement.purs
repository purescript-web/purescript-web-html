module Web.HTML.HTMLDialogElement
  ( HTMLDialogElement
  , fromHTMLElement
  , fromElement
  , fromNode
  , fromChildNode
  , fromNonDocumentTypeChildNode
  , fromParentNode
  , fromEventTarget
  , toHTMLElement
  , toElement
  , toNode
  , toChildNode
  , toNonDocumentTypeChildNode
  , toParentNode
  , toEventTarget
  , open
  , setOpen
  , returnValue
  , setReturnValue
  , show
  , showModal
  , close
  ) where

import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toNullable)
import Effect (Effect)
import Prelude (Unit, (<<<))
import Unsafe.Coerce (unsafeCoerce)
import Web.DOM (ChildNode, Element, Node, NonDocumentTypeChildNode, ParentNode)
import Web.Event.EventTarget (EventTarget)
import Web.HTML.HTMLElement (HTMLElement)
import Web.Internal.FFI (unsafeReadProtoTagged)

foreign import data HTMLDialogElement :: Type

fromHTMLElement :: HTMLElement -> Maybe HTMLDialogElement
fromHTMLElement = unsafeReadProtoTagged "HTMLDialogElement"

fromElement :: Element -> Maybe HTMLDialogElement
fromElement = unsafeReadProtoTagged "HTMLDialogElement"

fromNode :: Node -> Maybe HTMLDialogElement
fromNode = unsafeReadProtoTagged "HTMLDialogElement"

fromChildNode :: ChildNode -> Maybe HTMLDialogElement
fromChildNode = unsafeReadProtoTagged "HTMLDialogElement"

fromNonDocumentTypeChildNode :: NonDocumentTypeChildNode -> Maybe HTMLDialogElement
fromNonDocumentTypeChildNode = unsafeReadProtoTagged "HTMLDialogElement"

fromParentNode :: ParentNode -> Maybe HTMLDialogElement
fromParentNode = unsafeReadProtoTagged "HTMLDialogElement"

fromEventTarget :: EventTarget -> Maybe HTMLDialogElement
fromEventTarget = unsafeReadProtoTagged "HTMLDialogElement"

toHTMLElement :: HTMLDialogElement -> HTMLElement
toHTMLElement = unsafeCoerce

toElement :: HTMLDialogElement -> Element
toElement = unsafeCoerce

toNode :: HTMLDialogElement -> Node
toNode = unsafeCoerce

toChildNode :: HTMLDialogElement -> ChildNode
toChildNode = unsafeCoerce

toNonDocumentTypeChildNode :: HTMLDialogElement -> NonDocumentTypeChildNode
toNonDocumentTypeChildNode = unsafeCoerce

toParentNode :: HTMLDialogElement -> ParentNode
toParentNode = unsafeCoerce

toEventTarget :: HTMLDialogElement -> EventTarget
toEventTarget = unsafeCoerce

foreign import open :: HTMLDialogElement -> Effect Boolean
foreign import setOpen :: Boolean -> HTMLDialogElement -> Effect Unit

foreign import returnValue :: HTMLDialogElement -> Effect String
foreign import setReturnValue :: String -> HTMLDialogElement -> Effect Unit

foreign import show :: HTMLDialogElement -> Effect Unit
foreign import showModal :: HTMLDialogElement -> Effect Unit

foreign import _close :: Nullable String -> HTMLDialogElement -> Effect Unit

close :: Maybe String -> HTMLDialogElement -> Effect Unit
close = _close <<< toNullable
