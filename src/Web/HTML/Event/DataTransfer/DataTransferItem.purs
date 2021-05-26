module Web.HTML.Event.DataTransfer.DataTransferItem
  ( DataTransferItem
  , DataTransferItemList
  ) where

import Prelude
import Data.Maybe (Maybe)
import Data.Nullable (Nullable)
import Data.Nullable as Nullable

-- | Returns the drag data item kind, which is either "string" or "file".
foreign import kind :: DataTransferItem -> String

-- | A Unicode string giving the type or format of the data, generally given by
-- | a MIME type. Some values that are not MIME types are special-cased for
-- | legacy reasons. The API does not enforce the use of MIME types; other
-- | values can be used as well. In all cases, however, the values are all
-- | converted to ASCII lowercase by the API.
-- | There is a limit of one text item per item type string.
foreign import type_ :: DataTransferItem -> String

-- | Access an item in the `DataTransferItemList` by index.
dataTransferItem :: Int -> DataTransferItemList -> Maybe DataTransferItem
dataTransferItem = map Nullable.toMaybe <$> _dataTransferItem

foreign import _dataTransferItem :: Int -> DataTransferItemList -> Nullable DataTransferItem

length :: DataTransferItemList -> Int
length = _length

foreign import _length :: DataTransferItemList -> Int

foreign import data DataTransferItem :: Type

foreign import data DataTransferItemList :: Type
