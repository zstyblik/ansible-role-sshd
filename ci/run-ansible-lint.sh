#!/usr/bin/env bash
set -e
set -u

cd "$(dirname -- "${0}")/.."

ansible-lint -s .
