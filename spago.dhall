{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ name = "web-html"
, dependencies =
  [ "js-date"
  , "psci-support"
  , "web-dom"
  , "web-file"
  , "web-storage"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
}
