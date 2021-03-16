"use strict";

exports.kind = function (dataTransferItem) {
  return dataTransferItem.kind;
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
