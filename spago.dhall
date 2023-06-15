{ name = "virtual-dom"
, dependencies =
  [ "arrays"
  , "either"
  , "foldable-traversable"
  , "foreign"
  , "maybe"
  , "prelude"
  , "strings"
  , "transformers"
  , "tuples"
  , "variant"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
}
