#!/bin/bash

sed -i "" -E "s/(FROM ghcr.io\/realm\/swiftlint:).*/\1$1/g" ./Dockerfile
git add Dockerfile
git commit -m "chore: swiftlint version $1"
git tag -a "v$1" -m "swiftlint version $1"
git push --tags
git reset --hard HEAD~1
