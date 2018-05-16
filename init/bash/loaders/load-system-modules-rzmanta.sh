#!/bin/bash
printf '%s\n' "+++  $(pwd)/$(tput bold)${BASH_SOURCE[0]}$(tput sgr0) $(date)"

# source load-compilers-darwin-fe.sh

export SECONDS=0

function loader(){
  module purge
  echo ""; echo "module load ${1}"
                 module load ${1}
  echo ""; echo "spack compiler add"
                 spack compiler add
  echo ""; echo "module unload ${1}"
                 module unload ${1}
}
echo ""; echo "spack compilers before"
               spack compilers

# modules
# Bash script generated in Mathematica by:
# nb: query-nodes-01.nb
# date: May 16, 2018, time: 13:42:59
# user: l127914, CPU: pn1249300,  MM v. 11.3.0 for Mac OS X x86
# directory: /Users/l127914/Mathematica_files/nb/lanl/ompi/query/

loader clang/3.9.1
loader clang/4.0.0
loader clang/coral-2017.03.15
loader clang/coral-2017.03.29
loader clang/coral-2017.05.03
loader clang/coral-2017.05.19
loader clang/coral-2017.06.08
loader clang/coral-2017.06.12
loader clang/coral-2017.06.14
loader clang/coral-2017.06.27
loader clang/coral-2017.06.29
loader clang/coral-2017.08.31
loader clang/coral-2017.09.06
loader clang/coral-2017.09.13
loader clang/coral-2017.09.18
loader clang/coral-2017.10.06
loader clang/coral-2017.10.13
loader clang/coral-2017.11.09
loader clang/coral-2017.11.30
loader clang/coral-2017.12.06
loader clang/coral-2018.02.09
loader clang/coral-2018.04.17
loader pgi/16.10
loader pgi/17.1
loader pgi/17.10
loader pgi/17.3
loader pgi/17.4
loader pgi/17.7
loader pgi/17.9
loader pgi/18.1
loader pgi/18.3
loader pgi/18.4
loader spectrum-mpi/2017.04.03
loader spectrum-mpi/2017.08.24
loader spectrum-mpi/2017.11.10
loader spectrum-mpi/2018.02.05
loader spectrum-mpi/2018.04.27
loader xl/2016.12.02
loader xl/2018.04.29
loader xl/beta-2017.03.28
loader xl/beta-2017.04.11
loader xl/beta-2017.05.08
loader xl/beta-2017.06.07
loader xl/beta-2017.06.14
loader xl/beta-2017.06.29
loader xl/beta-2017.07.28
loader xl/beta-2017.09.13
loader xl/beta-2017.10.13
loader xl/beta-2017.11.28
loader xl/beta-2018.02.05
loader xl/beta-2018.02.22
loader xl/beta-2018.03.21
loader xl/beta-2018.04.06

echo ""; echo "spack compilers after"
               spack compilers

echo "elapsed time for loading compilers = ${SECONDS} s"
