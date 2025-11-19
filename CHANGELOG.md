# Changelog

Notable changes to this project are documented in this file. The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/) and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

Breaking changes:

New features:

Bugfixes:
- Fixed `visibilityState` for `HTMLDocument` (#86 by @cwinebr)

Other improvements:

## [v4.1.1](https://github.com/purescript-web/purescript-web-html/releases/tag/v4.1.1) - 2025-11-18

New features:
- Added `HTMLDialogElement` module (#77 by @kgmt0)

## [v4.1.0](https://github.com/purescript-web/purescript-web-html/releases/tag/v4.1.0) - 2022-09-19

New features:
- Added `close` function for `Window` (#78 by @jmp-0x7C0)
- Added `visibilityState` for `HTMLDocument` (#79 by @garyb)

Other improvements:
- Added `purs-tidy` config and format checking (#79 by @garyb)
- `HTMLDocument`'s FFI is now implemented in terms of `EffectFn` (#79 by @garyb)

## [v4.0.0](https://github.com/purescript-web/purescript-web-html/releases/tag/v4.0.0) - 2022-04-27

Breaking changes:
- Migrate FFI to ES modules (#71 by @JordanMartinez)
- Make `autocomplete` take a `String` arg, not Boolean (#72 by @JordanMartinez)
- Move `getBoundingClientRect` to `purescript-web-dom` (#73 by @JordanMartinez)
- Drop duplicated `set/getClassName` and `classList` (#74 by @JordanMartinez)
  These three entities are already defined in `purescript-web-dom`

New features:

Bugfixes:

Other improvements:

## [v3.2.1](https://github.com/purescript-web/purescript-web-html/releases/tag/v3.2.1) - 2021-02-09

Bugfixes:
- Added missing type class instance names for `DataTransferItemKind` (#69 by @ptrfrncsmrph)

## [v3.2.0](https://github.com/purescript-web/purescript-web-html/releases/tag/v3.2.0) - 2021-10-06

New features:
- Added `items` function for `DataTransfer` and related types (`DataTransferItem`, `DataTransferItemList`) (#55 by @ptrfrncsmrph)
- Added `languages` value for `Navigator` (#59 by @toastal)
- Added `HTMLHtmlElement` module and `documentElement` function `HTMLDocument` (#60 by @toastal)
- Added `onLine` value for `Navigator` (#61 by @toastal)
- Added `setDragImage` function for `DataTransfer` (#65 by @ajarista)

Bugfixes:
- Removed duplicated `cells` export from the FFI in HTMLTableRowElement.js (#58 by @thomashoneyman)

## [v3.1.0](https://github.com/purescript-web/purescript-web-html/releases/tag/v3.1.0) - 2021-05-06

New features:
- Exported `fromHTMLMediaElement`, `stepUp`, and `stepDown` (#57 by @JordanMartinez)

Other improvements:
- Fixed warnings found by v0.14.1 PS release (#57 by @JordanMartinez)

## [v3.0.1](https://github.com/purescript-web/purescript-web-html/releases/tag/v3.0.1) - 2021-03-13

New features:
- Added `fromEventTarget` function for `Window` (#53 by @thomashoneyman)

## [v3.0.0](https://github.com/purescript-web/purescript-web-html/releases/tag/v3.0.0) - 2021-02-26

Breaking changes:
- Added support for PureScript 0.14 and dropped support for all previous versions (#45)
- Removed unnecessary `Unit` argument in creation functions for `HTMLImageElement` and `HTMLAudioElement` (#46)
- Fixed return type of `scrollX` and `scrollY` to be `Effect Number`, as these can return subpixel values (#17)
- Removed `Newtype` instances for types with hidden constructors (#39)
- Changed `HTMLInputElement.accept` attribute type to `String` (#47) 

New features:
- Added `HTMLHyperlinkElementUtils` module (#44)
- Added `create` and `create'` functions for `Audio` (#32)
- Added missing attributes for `HTMLImage`, including `srcset`, `currentSrc`, `sizes`, `referrerPolicy`, `decoding`, `loading` (#40)
- Added common `PropName`, `AttrName`, and `ClassName` which can be reused across libraries representing properties, attributes, and CSS classes (#30)

Other improvements:
- Migrated CI to GitHub Actions and updated installation instructions to use Spago (#41)
- Removed primes from foreign modules exports in preparation for PureScript 0.15 (#24)
- Removed `return {}` from FFI implementations for a small performance improvement (#35)
- Removed unused explicit exports (#39)
- Updated HTML spec link (#34)
- Added a CHANGELOG.md file and new pull request template (#48, #49, #50)

## [v2.3.0](https://github.com/purescript-web/purescript-web-html/releases/tag/v2.3.0) - 2019-09-15

- Added `head` for `HTMLDocument` (@elliotdavies)

## [v2.2.2](https://github.com/purescript-web/purescript-web-html/releases/tag/v2.2.2) - 2019-08-18

- Raised upper bound for `purescript-web-dom`

## [v2.2.1](https://github.com/purescript-web/purescript-web-html/releases/tag/v2.2.1) - 2019-06-02

- Updated dependency ranges for compatibility with latest `purescript-web-dom`

## [v2.2.0](https://github.com/purescript-web/purescript-web-html/releases/tag/v2.2.0) - 2019-05-26

- Added `opener` and `parent` for `Window` (@jonathanlking)

## [v2.1.0](https://github.com/purescript-web/purescript-web-html/releases/tag/v2.1.0) - 2019-05-08

- Fixed `checkValidity` functions and added `reportValidity` (@bosyi)

## [v2.0.1](https://github.com/purescript-web/purescript-web-html/releases/tag/v2.0.1) - 2019-04-13

- Corrected type for `HTMLDocument.fromDocument` (@galenhuntington)

## [v2.0.0](https://github.com/purescript-web/purescript-web-html/releases/tag/v2.0.0) - 2019-02-23

- Bumped `-web-events` dependency, `Event.defaultPrevented` is now effectful.

## [v1.2.0](https://github.com/purescript-web/purescript-web-html/releases/tag/v1.2.0) - 2018-10-06

- Added `referrer`, `title`, `setTitle` for `HTMLDocument` (@elliotdavies)
- Added `language` and `userAgent` for `navigator` (@elliotdavies)

## [v1.1.1](https://github.com/purescript-web/purescript-web-html/releases/tag/v1.1.1) - 2018-09-22

- Added missing export for `currentScript`

## [v1.1.0](https://github.com/purescript-web/purescript-web-html/releases/tag/v1.1.0) - 2018-09-21

- Added `currentScript` for `HTMLDocument` (@cprussin)

## [v1.0.0](https://github.com/purescript-web/purescript-web-html/releases/tag/v1.0.0) - 2018-05-25

- Initial release
