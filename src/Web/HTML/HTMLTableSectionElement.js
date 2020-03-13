"use strict";

exports.rows = function (section) {
  return function () {
    return section.rows;
  };
};

// ----------------------------------------------------------------------------

exports.insertRowAt = function (index) {
  return function (section) {
    return function () {
      return section.insertRow(index);
    };
  };
};

// ----------------------------------------------------------------------------

exports.deleteRow = function (index) {
  return function (section) {
    return function () {
      section.deleteRow(index);
    };
  };
};
