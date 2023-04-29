
dev:
    yarn run parcel serve web/index.html

build:
    spago build

build-prod:
    yarn run parcel build --dist-dir dist web/index.html