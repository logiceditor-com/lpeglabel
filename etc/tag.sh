#! /usr/bin/env bash

set -euox pipefail

BASE_TAG="v1.6.0"
TAG="$(git describe --tags --exclude "${BASE_TAG}.*.*" | sed 's/-1//g' | sed 's/-/./g')"
git tag "${TAG}"
git push origin "${TAG}"
