dev:
    yarn run parcel serve web/index.html

build:
    spago build

test:
    spago --config test.dhall build

build-prod:
    yarn run parcel build --dist-dir dist web/index.html

codegen:
    node codegen/index.js
    purs-tidy format-in-place --width 100 'src/TaglessVirtualDOM/HTML/**/*.purs'
    purs-tidy format-in-place --width 100 'src/TaglessVirtualDOM/SVG/**/*.purs'

gen-readme:
    purs-to-md test/SampleReadme.purs README.md

format:
    purs-tidy format-in-place 'src/**/*.purs'
    purs-tidy format-in-place 'test/**/*.purs'

check-format:
    purs-tidy check 'src/**/*.purs'
    purs-tidy check 'test/**/*.purs'