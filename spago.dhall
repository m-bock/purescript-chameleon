{ name = "virtual-dom"
, dependencies =
  [ "arrays"
  , "either"
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
