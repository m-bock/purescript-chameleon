{ name = "tagless-virtual-dom"
, dependencies =
  [ "either"
  , "foreign"
  , "maybe"
  , "prelude"
  , "strings"
  , "transformers"
  , "variant"
  , "web-events"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
}
