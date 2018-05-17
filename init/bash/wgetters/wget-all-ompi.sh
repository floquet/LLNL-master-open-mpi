#!/bin/bash
printf '%s\n' "+++  $(pwd)/${BASH_SOURCE[0]} $(date)"
http://www.open-mpi.org/software/ompi/v3.0/downloads/openmpi-3.0.0.tar.bz2
what="llvm cfe clang-tools-extra compiler-rt libcxx libcxxabi libunwind lldb openmp polly"
version=""
version="${version}  3.1.0  3.0.1  2.1.0  2.0.0   1.10.3  1.8.7  1.8.2  1.7.3  1.6.4  1.5.5  1.5    1.4.1  1.3.1  1.2.6  1.2.1  1.1.2  1.0"
version="${version}  3.0.0  2.0.4  1.10.7  1.10.2  1.8.6  1.8.1  1.7.2  1.6.3  1.5.4  1.4.5  1.4    1.3    1.2.5  1.2    1.1.1"
version="${version}  2.1.3  2.0.3  1.10.6  1.10.1  1.8.5  1.8    1.7.1  1.6.2  1.5.3  1.4.4  1.3.4  1.2.9  1.2.4  1.1.5  1.1"
version="${version}  2.1.2  2.0.2  1.10.5  1.10.0  1.8.4  1.7.5  1.7    1.6.1  1.5.2  1.4.3  1.3.3  1.2.8  1.2.3  1.1.4  1.0.2"
version="${version}  2.1.1  2.0.1  1.10.4  1.8.8   1.8.3  1.7.4  1.6.5  1.6    1.5.1  1.4.2  1.3.2  1.2.7  1.2.2  1.1.3  1.0.1"

for w in ${what}; do
    echo ""
    echo "wget http://www.open-mpi.org/software/ompi/${version}/${w}-${version}.src.tar.xz"
          wget http://llvm.org/releases/${version}/${w}-${version}.src.tar.xz
    echo "mv ${w}-${version}.src.tar.xz ${w}-${version}.tar.xz"
          mv ${w}-${version}.src.tar.xz ${w}-${version}.tar.xz
done
