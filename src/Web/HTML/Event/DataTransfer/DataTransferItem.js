"use strict";

exports._kind = function (nothing, just, text, file, dataTransferItem) {
  if (dataTransferItem.kind === "string") {
    return just(text);
  } else if (dataTransferItem.kind === "file") {
    return just(file);
  } else {
    return nothing;
  }
};

exports.type_ = function (dataTransferItem) {
  return dataTransferItem.type;
};

exports._dataTransferItem = function (index) {
  return function (dataTransferItemList) {
    return dataTransferItemList[index];
  };
};

exports._length = function (dataTransferItemList) {
  return dataTransferItemList.length;
};
