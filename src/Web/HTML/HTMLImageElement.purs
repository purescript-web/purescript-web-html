module Web.HTML.HTMLImageElement
  ( HTMLImageElement
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
  , create
  , create'
  , alt
  , setAlt
  , src
  , setSrc
  , crossOrigin
  , setCrossOrigin
  , useMap
  , setUseMap
  , isMap
  , setIsMap
  , width
  , setWidth
  , height
  , setHeight
  , naturalWidth
  , naturalHeight
  , complete
  ) where

import Data.Maybe (Maybe)
import Effect (Effect)
import Prelude (Unit)
import Unsafe.Coerce (unsafeCoerce)
import Web.DOM (ChildNode, Element, Node, NonDocumentTypeChildNode, ParentNode)
import Web.Event.EventTarget (EventTarget)
import Web.HTML.HTMLElement (HTMLElement)
import Web.Internal.FFI (unsafeReadProtoTagged)

foreign import data HTMLImageElement :: Type

fromHTMLElement :: HTMLElement -> Maybe HTMLImageElement
fromHTMLElement = unsafeReadProtoTagged "HTMLImageElement"

fromElement :: Element -> Maybe HTMLImageElement
fromElement = unsafeReadProtoTagged "HTMLImageElement"

fromNode :: Node -> Maybe HTMLImageElement
fromNode = unsafeReadProtoTagged "HTMLImageElement"

fromChildNode :: ChildNode -> Maybe HTMLImageElement
fromChildNode = unsafeReadProtoTagged "HTMLImageElement"

fromNonDocumentTypeChildNode :: NonDocumentTypeChildNode -> Maybe HTMLImageElement
fromNonDocumentTypeChildNode = unsafeReadProtoTagged "HTMLImageElement"

fromParentNode :: ParentNode -> Maybe HTMLImageElement
fromParentNode = unsafeReadProtoTagged "HTMLImageElement"

fromEventTarget :: EventTarget -> Maybe HTMLImageElement
fromEventTarget = unsafeReadProtoTagged "HTMLImageElement"

toHTMLElement :: HTMLImageElement -> HTMLElement
toHTMLElement = unsafeCoerce

toElement :: HTMLImageElement -> Element
toElement = unsafeCoerce

toNode :: HTMLImageElement -> Node
toNode = unsafeCoerce

toChildNode :: HTMLImageElement -> ChildNode
toChildNode = unsafeCoerce

toNonDocumentTypeChildNode :: HTMLImageElement -> NonDocumentTypeChildNode
toNonDocumentTypeChildNode = unsafeCoerce

toParentNode :: HTMLImageElement -> ParentNode
toParentNode = unsafeCoerce

toEventTarget :: HTMLImageElement -> EventTarget
toEventTarget = unsafeCoerce


foreign import create :: Unit -> Effect HTMLImageElement
foreign import createWithDimensions :: Int -> Int -> Effect HTMLImageElement

create' :: Int -> Int -> Effect HTMLImageElement
create' = createWithDimensions

foreign import alt :: HTMLImageElement -> Effect String
foreign import setAlt :: String -> HTMLImageElement -> Effect Unit

foreign import src :: HTMLImageElement -> Effect String
foreign import setSrc :: String -> HTMLImageElement -> Effect Unit

foreign import crossOrigin :: HTMLImageElement -> Effect String
foreign import setCrossOrigin :: String -> HTMLImageElement -> Effect Unit

foreign import useMap :: HTMLImageElement -> Effect String
foreign import setUseMap :: String -> HTMLImageElement -> Effect Unit

foreign import isMap :: HTMLImageElement -> Effect Boolean
foreign import setIsMap :: Boolean -> HTMLImageElement -> Effect Unit

foreign import width :: HTMLImageElement -> Effect Int
foreign import setWidth :: Int -> HTMLImageElement -> Effect Unit

foreign import height :: HTMLImageElement -> Effect Int
foreign import setHeight :: Int -> HTMLImageElement -> Effect Unit

foreign import naturalWidth :: HTMLImageElement -> Effect Int
foreign import naturalHeight :: HTMLImageElement -> Effect Int
foreign import complete :: HTMLImageElement -> Effect Boolean
