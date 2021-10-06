"use strict";

exports.language = function (navigator) {
  return function () {
    return navigator.language;
  };
};

exports.languages = function (navigator) {
  return function () {
    return navigator.languages;
  };
};

exports.onLine = function (navigator) {
  return function () {
    return navigator.onLine;
  };
};

exports.platform = function (navigator) {
  return function () {
    return navigator.platform;
  };
};

exports.userAgent = function (navigator) {
  return function () {
    return navigator.userAgent;
  };
};
