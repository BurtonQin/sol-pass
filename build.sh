#!/usr/bin/env bash
set -xe

if [ -z "${LLVM_DIR}" ]; then
	echo "Please set LLVM_DIR"
	exit 1
fi
	
mkdir -p build
cd build
cmake -DLT_LLVM_INSTALL_DIR=${LLVM_DIR} ..
make
