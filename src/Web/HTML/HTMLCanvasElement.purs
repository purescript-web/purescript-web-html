module Web.HTML.HTMLCanvasElement where

import Effect (Effect)
import Foreign (Foreign, F, unsafeReadTagged)
import Prelude (Unit)
import Unsafe.Coerce (unsafeCoerce)
import Web.HTML.HTMLElement (HTMLElement)

foreign import data HTMLCanvasElement :: Type

toHTMLElement :: HTMLCanvasElement -> HTMLElement
toHTMLElement = unsafeCoerce

read :: Foreign -> F HTMLCanvasElement
read = unsafeReadTagged "HTMLCanvasElement"

-- typedef (CanvasRenderingContext2D or WebGLRenderingContext) RenderingContext;

foreign import width :: HTMLCanvasElement -> Effect Int
foreign import setWidth :: Int -> HTMLCanvasElement -> Effect Unit

foreign import height :: HTMLCanvasElement -> Effect Int
foreign import setHeight :: Int -> HTMLCanvasElement -> Effect Unit

--   RenderingContext? getContext(DOMString contextId, any... arguments);

--   DOMString toDataURL(optional DOMString type, any... arguments);
--   void toBlob(FileCallback? _callback, optional DOMString type, any... arguments);
-- };
