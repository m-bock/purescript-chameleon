{ name = "virtual-dom"
, dependencies =
  [ "arrays"
  , "either"
  , "foldable-traversable"
  , "foreign"
  , "maybe"
  , "newtype"
  , "prelude"
  , "strings"
  , "these"
  , "transformers"
  , "tuples"
  , "unordered-collections"
  , "variant"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
}
