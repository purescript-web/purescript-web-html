export function _documentElement(doc) {
  return function () {
    return doc.documentElement;
  };
}

export function _head(doc) {
  return function () {
    return doc.head;
  };
}

export function _body(doc) {
  return function () {
    return doc.body;
  };
}

export function _readyState(doc) {
  return function () {
    return doc.readyState;
  };
}

export function _activeElement(doc) {
  return function () {
    return doc.activeElement;
  };
}

export function _currentScript(doc) {
  return function () {
    return doc.currentScript;
  };
}

export function referrer(doc) {
  return function () {
    return doc.referrer;
  };
}

export function title(doc) {
  return function () {
    return doc.title;
  };
}

export function setTitle(title) {
  return function (doc) {
    return function () {
      doc.title = title;
    };
  };
}
