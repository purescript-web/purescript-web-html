module Web.HTML.Navigator where

import Effect (Effect)

foreign import data Navigator :: Type

foreign import platform :: Navigator -> Effect String
