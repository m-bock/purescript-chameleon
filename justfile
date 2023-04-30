dev:
    yarn run parcel serve web/index.html

build:
    spago build

test:
    spago --config test.dhall build

build-prod:
    yarn run parcel build --dist-dir dist web/index.html

codegen:
    node scripts/codegen.js