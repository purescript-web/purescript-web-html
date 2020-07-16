"use strict";

exports._read = function (nothing, just, value) {
  var tag = Object.prototype.toString.call(value);
  if (tag.indexOf("[object HTML") === 0 && tag.indexOf("Element]") === tag.length - 8) {
    return just(value);
  } else {
    return nothing;
  }
};

// ----------------------------------------------------------------------------

exports.title = function (elt) {
  return function () {
    return elt.title;
  };
};

exports.setTitle = function (title) {
  return function (elt) {
    return function () {
      elt.title = title;
    };
  };
};

// ----------------------------------------------------------------------------

exports.lang = function (elt) {
  return function () {
    return elt.lang;
  };
};

exports.setLang = function (lang) {
  return function (elt) {
    return function () {
      elt.lang = lang;
    };
  };
};

// ----------------------------------------------------------------------------

exports.dir = function (elt) {
  return function () {
    return elt.dir;
  };
};

exports.setDir = function (dir) {
  return function (elt) {
    return function () {
      elt.dir = dir;
    };
  };
};

// ----------------------------------------------------------------------------

exports.className = function (elt) {
  return function () {
    return elt.className;
  };
};

exports.setClassName = function (className) {
  return function (elt) {
    return function () {
      elt.className = className;
    };
  };
};

exports.classList = function (element) {
  return function () {
    return element.classList;
  };
};

// ----------------------------------------------------------------------------

exports.hidden = function (elt) {
  return function () {
    return elt.hidden;
  };
};

exports.setHidden = function (hidden) {
  return function (elt) {
    return function () {
      elt.hidden = hidden;
    };
  };
};

// ----------------------------------------------------------------------------

exports.tabIndex = function (elt) {
  return function () {
    return elt.tabIndex;
  };
};

exports.setTabIndex = function (tabIndex) {
  return function (elt) {
    return function () {
      elt.tabIndex = tabIndex;
    };
  };
};

// ----------------------------------------------------------------------------

exports.draggable = function (elt) {
  return function () {
    return elt.draggable;
  };
};

exports.setDraggable = function (draggable) {
  return function (elt) {
    return function () {
      elt.draggable = draggable;
    };
  };
};

// ----------------------------------------------------------------------------

exports.contentEditable = function (elt) {
  return function () {
    return elt.contentEditable;
  };
};

exports.setContentEditable = function (contentEditable) {
  return function (elt) {
    return function () {
      elt.contentEditable = contentEditable;
    };
  };
};

exports.isContentEditable = function (elt) {
  return function () {
    return elt.isContentEditable;
  };
};

// ----------------------------------------------------------------------------

exports.spellcheck = function (elt) {
  return function () {
    return elt.spellcheck;
  };
};

exports.setSpellcheck = function (spellcheck) {
  return function (elt) {
    return function () {
      elt.spellcheck = spellcheck;
    };
  };
};

// ----------------------------------------------------------------------------

exports.click = function (elt) {
  return function () {
    return elt.click();
  };
};

exports.focus = function (elt) {
  return function () {
    return elt.focus();
  };
};

exports.blur = function (elt) {
  return function () {
    return elt.blur();
  };
};

// - CSSOM ---------------------------------------------------------------------

exports.getBoundingClientRect = function (el) {
  return function () {
    var rect = el.getBoundingClientRect();
    return {
      top: rect.top,
      right: rect.right,
      bottom: rect.bottom,
      left: rect.left,
      width: rect.width,
      height: rect.height
    };
  };
};

exports._offsetParent = function (el) {
  return function () {
    return el.offsetParent;
  };
};

exports.offsetTop = function (el) {
  return function () {
    return el.offsetTop;
  };
};

exports.offsetLeft = function (el) {
  return function () {
    return el.offsetLeft;
  };
};

exports.offsetWidth = function (el) {
  return function () {
    return el.offsetWidth;
  };
};

exports.offsetHeight = function (el) {
  return function () {
    return el.offsetHeight;
  };
};
