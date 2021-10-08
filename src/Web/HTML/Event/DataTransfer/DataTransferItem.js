"use strict";

exports._kind = function (text, file, dataTransferItem) {
  if (dataTransferItem.kind === "string") {
    return text;
  } else {
    return file;
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
