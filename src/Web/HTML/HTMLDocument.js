"use strict";

exports._body = function (doc) {
  return function () {
    return doc.body;
  };
};

exports._readyState = function (doc) {
  return function () {
    return doc.readyState;
  };
};

exports._activeElement = function (doc) {
  return function () {
    return doc.activeElement;
  };
};

exports._currentScript = function (doc) {
  return function () {
    return doc.currentScript;
  };
};

exports.referrer = function (doc) {
  return function () {
    return doc.referrer;
  };
};

exports.title = function (doc) {
  return function () {
    return doc.title;
  };
};

exports.setTitle = function (title) {
  return function (doc) {
    return function () {
      doc.title = title;
      return {};
    };
  };
};