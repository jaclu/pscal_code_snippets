#!/bin/sh

# Full path to repo folder

echo
echo "verifying dirname -- | show where this script is located"
echo "d_bp1 [$(dirname -- "$0")]"

echo
echo 'using packet folder via cd'
echo "d_bp1 [$(cd "$(dirname -- "$0")"/.. && pwd)]"

echo
echo "Needed in order to handle weird folders starting with -"
echo "using packet folder via cd --"
echo "d_bp2 [$(cd -- "$(dirname -- "$0")"/.. && pwd)]"
