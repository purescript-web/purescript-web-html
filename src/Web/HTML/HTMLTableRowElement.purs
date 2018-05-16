module Web.HTML.HTMLTableRowElement where

import Data.Maybe (Maybe)
import Effect (Effect)
import Prelude (Unit, negate)
import Unsafe.Coerce (unsafeCoerce)
import Web.DOM (ChildNode, Element, Node, NonDocumentTypeChildNode, ParentNode)
import Web.DOM.HTMLCollection (HTMLCollection)
import Web.Event.EventTarget (EventTarget)
import Web.HTML.HTMLElement (HTMLElement)
import Web.Internal.FFI (unsafeReadProtoTagged)

foreign import data HTMLTableRowElement :: Type

fromHTMLElement :: HTMLElement -> Maybe HTMLTableRowElement
fromHTMLElement = unsafeReadProtoTagged "HTMLTableRowElement"

fromElement :: Element -> Maybe HTMLTableRowElement
fromElement = unsafeReadProtoTagged "HTMLTableRowElement"

fromNode :: Node -> Maybe HTMLTableRowElement
fromNode = unsafeReadProtoTagged "HTMLTableRowElement"

fromChildNode :: ChildNode -> Maybe HTMLTableRowElement
fromChildNode = unsafeReadProtoTagged "HTMLTableRowElement"

fromNonDocumentTypeChildNode :: NonDocumentTypeChildNode -> Maybe HTMLTableRowElement
fromNonDocumentTypeChildNode = unsafeReadProtoTagged "HTMLTableRowElement"

fromParentNode :: ParentNode -> Maybe HTMLTableRowElement
fromParentNode = unsafeReadProtoTagged "HTMLTableRowElement"

fromEventTarget :: EventTarget -> Maybe HTMLTableRowElement
fromEventTarget = unsafeReadProtoTagged "HTMLTableRowElement"

toHTMLElement :: HTMLTableRowElement -> HTMLElement
toHTMLElement = unsafeCoerce

toElement :: HTMLTableRowElement -> Element
toElement = unsafeCoerce

toNode :: HTMLTableRowElement -> Node
toNode = unsafeCoerce

toChildNode :: HTMLTableRowElement -> ChildNode
toChildNode = unsafeCoerce

toNonDocumentTypeChildNode :: HTMLTableRowElement -> NonDocumentTypeChildNode
toNonDocumentTypeChildNode = unsafeCoerce

toParentNode :: HTMLTableRowElement -> ParentNode
toParentNode = unsafeCoerce

toEventTarget :: HTMLTableRowElement -> EventTarget
toEventTarget = unsafeCoerce

foreign import rowIndex :: HTMLTableRowElement -> Effect Int

foreign import sectionRowIndex :: HTMLTableRowElement -> Effect Int

foreign import cells :: HTMLTableRowElement -> Effect HTMLCollection

insertCell :: HTMLTableRowElement -> Effect HTMLElement
insertCell = insertCell' (-1)

foreign import insertCell' :: Int -> HTMLTableRowElement -> Effect HTMLElement

foreign import deleteCell :: Int -> HTMLTableRowElement -> Effect Unit
