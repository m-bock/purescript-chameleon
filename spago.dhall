{ name = "virtual-dom"
, dependencies =
  [ "either"
  , "foldable-traversable"
  , "foreign"
  , "maybe"
  , "prelude"
  , "strings"
  , "these"
  , "transformers"
  , "tuples"
  , "variant"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
}
