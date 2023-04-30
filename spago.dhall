{ name = "tagless-virtual-dom"
, dependencies =
  [ "either", "foreign", "maybe", "prelude", "transformers", "web-events" ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
}
