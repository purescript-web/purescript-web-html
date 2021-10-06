"use strict";

exports._files = function (dataTransfer) {
  return dataTransfer.files;
};

exports.types = function (dataTransfer) {
  return dataTransfer.types;
};

exports._getData = function (format) {
  return function (dataTransfer) {
    return function () {
      return dataTransfer.getData(format);
    };
  };
};

exports._setData = function (format) {
  return function (data) {
    return function (dataTransfer) {
      return function () {
        return dataTransfer.setData(format, data);
      };
    };
  };
};

exports._setDragImage = function (dataTransfer) {
  return function (image) {
    return function (x) {
      return function (y) {
        return function () {
          return dataTransfer.setDragImage(image, x, y);
        };
      };
    };
  };
};

exports._dropEffect = function (dataTransfer) {
  return function () {
    return dataTransfer.dropEffect;
  };
};

exports._setDropEffect = function (e) {
  return function (dataTransfer) {
    return function () {
      dataTransfer.dropEffect = e;
    };
  };
};
