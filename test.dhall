{ name = "virtual-dom-test"
, dependencies =
  [ "console"
  , "effect"
  , "either"
  , "foreign"
  , "maybe"
  , "prelude"
  , "record"
  , "strings"
  , "transformers"
  , "tuples"
  , "variant"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}
