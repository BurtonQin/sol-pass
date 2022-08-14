#!/usr/bin/env bash
set -xe

if [ $# -eq 0 ]
  then
    echo "Usage: ./run.sh <path/to/bc_or_ll>"
	exit 1
fi

# Legacy PM
opt -load ./build/lib/libSolAnalysisPass.so -enable-new-pm=0 -legacy-static-cc -analyze "$1"

# New PM
# opt -load-pass-plugin=./build/lib/libSolAnalysisPass.so -passes="print<static-cc>" -disable-output "$1"


