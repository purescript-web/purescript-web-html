"use strict";

exports.create = function () {
  return function () {
    return new Audio();
  };
};

exports.createWithURL = function (url) {
  return function () {
    return new Audio(url);
  };
};
