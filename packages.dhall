let upstream =
      https://github.com/purescript/package-sets/releases/download/psc-0.15.8-20230425/packages.dhall
        sha256:74bd0986f8c25c67be10cd702466425caaefe495981a49b21092cb746ca63768

in  upstream

  with virtual-dom-react-basic =
      { dependencies =
          [ "console"
          , "effect"
          , "foreign"
          , "foreign-object"
          , "maybe"
          , "prelude"
          , "react-basic"
          , "react-basic-dom"
          , "strings"
          , "tuples"
          , "unsafe-coerce"
          ]
      , repo =
          "https://github.com/thought2/purescript-virtual-dom-react-basic.git"
      , version =
          "main"
      }

  with virtual-dom-halogen =
      { dependencies =
          [ "bifunctors"
          , "foreign"
          , "halogen"
          , "prelude"
          , "strings"
          , "tuples"
          , "unsafe-coerce"
          , "web-events"
          ]
      , repo =
          "https://github.com/thought2/purescript-virtual-dom-halogen.git"
      , version =
          "main"
      }
