{ name = "virtual-dom-test"
, dependencies =
  [ "aff"
  , "console"
  , "effect"
  , "either"
  , "foreign"
  , "halogen"
  , "maybe"
  , "prelude"
  , "react-basic-dom"
  , "react-basic-hooks"
  , "record"
  , "strings"
  , "transformers"
  , "tuples"
  , "variant"
  , "virtual-dom-halogen"
  , "virtual-dom-react-basic"
  , "web-dom"
  , "web-html"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}
