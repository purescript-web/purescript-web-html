export function open(dialog) {
  return function () {
    return dialog.open;
  };
}

export function setOpen(value) {
  return function (dialog) {
    return function () {
      dialog.open = value;
    };
  };
}

// ----------------------------------------------------------------------------

export function returnValue(dialog) {
  return function () {
    return dialog.returnValue;
  };
}

export function setReturnValue(value) {
  return function (dialog) {
    return function () {
      dialog.returnValue = value;
    };
  };
}

// ----------------------------------------------------------------------------

export function show(dialog) {
  return function () {
    return dialog.show();
  };
}

export function showModal(dialog) {
  return function () {
    return dialog.showModal();
  };
}

// ----------------------------------------------------------------------------

export function _close(value) {
  return function (dialog) {
    return function () {
      dialog.close(value);
    };
  };
}
