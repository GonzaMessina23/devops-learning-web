#!/bin/sh

set -e

echo "Checking project..."

test -f src/index.html
test -f src/style.css
grep -q "<html" src/index.html
test -s src/style.css

echo "All checks passed."
