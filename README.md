# Analyze LLVM bitcode from solang

## Install solang and its LLVM version

1. Build Solang's LLVM from source: <https://solang.readthedocs.io/en/latest/installing.html#building-llvm-from-source>
2. Build Solang from source: https://solang.readthedocs.io/en/latest/installing.html#build-from-source

## Generate LLVM bc or ll files

e.g., run command

```
$ solang compile solang/tests/codegen_testcases/solidity/temp1.sol --target substrate --emit llvm-ir
```

It will generate `c.ll` from `temp1.sol`.

## Build a Sol LLVM analysis pass

```
$ cd sol-pass
$ export LLVM_DIR=<path/to/solang-llvm>
$ ./build.sh  # Generate build/lib/libSolAnalysisPass.so
```

## Run the pass

```
$ ./run.sh <path/to/bc-or-ll>
```

It will print
```
=================================================
sol-pass: static analysis results
=================================================
NAME                 #N DIRECT CALLS
-------------------------------------------------
...
```
