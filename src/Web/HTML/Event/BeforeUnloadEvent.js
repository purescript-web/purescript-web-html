"use strict";

exports.returnValue = function (e) {
  return function () {
    return e.returnValue;
  };
};

exports.setReturnValue = function (v) {
  return function (e) {
    return function () {
      e.returnValue = v;
    };
  };
};
