#!/bin/bash
printf '%s\n' "+++  $(pwd)/${BASH_SOURCE[0]} $(date)"

what="llvm cfe clang-tools-extra compiler-rt libcxx libcxxabi libunwind lld lldb openmp polly"
versions="6.0.0  5.0.1  5.0.0  4.0.1  4.0.0  3.9.1  3.9.0  3.8.1  3.8.0  3.7.1  3.7.0  3.6.2  3.5.1  3.0"

for v in ${versions}; do
    for w in ${what}; do
        echo ""
        echo "wget http://llvm.org/releases/${v}/${w}-${v}.src.tar.xz"
              wget http://llvm.org/releases/${v}/${w}-${v}.src.tar.xz
        echo "mv ${w}-${v}.src.tar.xz ${w}-${v}.tar.xz"
              mv ${w}-${v}.src.tar.xz ${w}-${v}.tar.xz
    done
done
