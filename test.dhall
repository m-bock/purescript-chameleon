{ name = "tagless-virtual-dom-test"
, dependencies =
  [ "aff"
  , "bifunctors"
  , "console"
  , "effect"
  , "either"
  , "exceptions"
  , "foreign"
  , "foreign-object"
  , "halogen"
  , "maybe"
  , "prelude"
  , "react-basic-dom"
  , "react-basic-hooks"
  , "strings"
  , "transformers"
  , "unsafe-coerce"
  , "web-dom"
  , "web-events"
  , "web-html"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}
