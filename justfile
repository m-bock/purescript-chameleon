dev:
    yarn run parcel serve web/index.html

build:
    spago build

test:
    spago test

build-prod:
    yarn run parcel build --dist-dir dist web/index.html

codegen:
    node codegen/index.js
    purs-tidy format-in-place --width 100 'src/Chameleon/HTML/**/*.purs'
    purs-tidy format-in-place --width 100 'src/Chameleon/SVG/**/*.purs'

gen-readme:
    node scripts/gen-readme.js
    
gen: gen-readme

format:
    purs-tidy format-in-place 'src/**/*.purs'
    purs-tidy format-in-place 'test/**/*.purs'

check-format:
    purs-tidy check 'src/**/*.purs'
    purs-tidy check 'test/**/*.purs'