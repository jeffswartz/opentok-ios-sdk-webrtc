#!/bin/sh
# Run this from the build subdirectory on a Mac that has appledoc installed.
# See https://github.com/tomaz/appledoc

set -e

cd ..
git submodule update
cd build

appledoc --project-name 'OpenTok 2.0 iOS SDK' --exit-threshold 3 --ignore 'components' --explicit-crossref --project-company 'TokBox, Inc' --company-id com.tokbox.opentokiossdk --no-create-docset --no-repeat-first-par -o ./docs --ignore ViewController.h -h ./src

cp -r ./docs/html/* ..
rm -rf docs