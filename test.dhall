{ name = "virtual-dom-test"
, dependencies =
  [ "console"
  , "effect"
  , "either"
  , "foreign"
  , "maybe"
  , "prelude"
  , "strings"
  , "transformers"
  , "tuples"
  , "variant"
  , "these"
  , "foldable-traversable"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}
