#!/bin/sh

set -e

[ -d /src ] || exit 1

cd $(dirname $0)
home=$PWD

rm -rf /src-copy
mkdir /src-copy

cp --recursive . /src-copy/

cd /src-copy/browser-version

node build.js

cp -v out/*.js $home/browser-version/out/