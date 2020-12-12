"use strict";

exports.create = function () {
  return new Image();
};

exports.createWithDimensions = function (width) {
  return function (height) {
    return function () {
      return new Image(width, height);
    };
  };
};

// ----------------------------------------------------------------------------

exports.alt = function (image) {
  return function () {
    return image.alt;
  };
};

exports.setAlt = function (alt) {
  return function (image) {
    return function () {
      image.alt = alt;
    };
  };
};

// ----------------------------------------------------------------------------

exports.src = function (image) {
  return function () {
    return image.src;
  };
};

exports.setSrc = function (src) {
  return function (image) {
    return function () {
      image.src = src;
    };
  };
};

// ----------------------------------------------------------------------------

exports.srcset = function (image) {
  return function () {
    return image.srcset;
  };
};

exports.setSrcset = function (srcset) {
  return function (image) {
    return function () {
      image.srcset = srcset;
    };
  };
};

// ----------------------------------------------------------------------------

exports.sizes = function (image) {
  return function () {
    return image.sizes;
  };
};

exports.setSizes = function (sizes) {
  return function (image) {
    return function () {
      image.sizes = sizes;
    };
  };
};

// ----------------------------------------------------------------------------

exports.currentSrc = function (image) {
  return function () {
    return image.currentSrc;
  };
};

// ----------------------------------------------------------------------------

exports._crossOrigin = function (image) {
  return image.crossOrigin;
};

exports._setCrossOrigin = function (crossOrigin, image) {
  image.crossOrigin = crossOrigin;
};

// ----------------------------------------------------------------------------

exports.useMap = function (image) {
  return function () {
    return image.useMap;
  };
};

exports.setUseMap = function (useMap) {
  return function (image) {
    return function () {
      image.useMap = useMap;
    };
  };
};

// ----------------------------------------------------------------------------

exports.isMap = function (image) {
  return function () {
    return image.isMap;
  };
};

exports.setIsMap = function (isMap) {
  return function (image) {
    return function () {
      image.isMap = isMap;
    };
  };
};

// ----------------------------------------------------------------------------

exports.width = function (image) {
  return function () {
    return image.width;
  };
};

exports.setWidth = function (width) {
  return function (image) {
    return function () {
      image.width = width;
    };
  };
};

// ----------------------------------------------------------------------------

exports.height = function (image) {
  return function () {
    return image.height;
  };
};

exports.setHeight = function (height) {
  return function (image) {
    return function () {
      image.height = height;
    };
  };
};

// ----------------------------------------------------------------------------

exports.naturalWidth = function (image) {
  return function () {
    return image.naturalWidth;
  };
};

exports.naturalHeight = function (image) {
  return function () {
    return image.naturalHeight;
  };
};

// ----------------------------------------------------------------------------

exports.referrerPolicy = function (image) {
  return function () {
    return image.referrerPolicy;
  };
};

exports.setReferrerPolicy = function (referrerPolicy) {
  return function (image) {
    return function () {
      image.referrerPolicy = referrerPolicy;
    };
  };
};

// ----------------------------------------------------------------------------

exports._decoding = function (image) {
  return image.decoding;
};

exports._setDecoding = function (decoding, image) {
  image.decoding = decoding;
};

// ----------------------------------------------------------------------------

exports._loading = function (image) {
  return image.loading;
};

exports._setLoading = function (loading, image) {
  image.loading = loading;
};

// ----------------------------------------------------------------------------

exports.complete = function (image) {
  return function () {
    return image.complete;
  };
};
