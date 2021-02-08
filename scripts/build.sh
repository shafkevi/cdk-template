#!/bin/bash

set -e

CWD=$(pwd -P)

rsync -azr --delete secrets/ dist/secrets/
rsync -azr --delete assets/ dist/assets/

npx tsc
