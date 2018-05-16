#!/bin/bash
printf '%s\n' "+++  $(pwd)/${BASH_SOURCE[0]} $(date)"
# dantopa@wf-fey2.lanl.gov:spack-wolf $ date
# Sat Apr 28 11:08:56 MDT 2018

# dantopa@wf-fey2.lanl.gov:spack-wolf $ pwd
# /yellow/usr/projects/artab/users/dantopa/github/hpc/spack-wolf

# dantopa@wf-fey2.lanl.gov:spack-wolf $ gcc --version
# gcc (GCC) 4.4.7 20120313 (Red Hat 4.4.7-18)

SECONDS=0
counter=0

what="llvm"
versions="6.0.0"
versions="${versions} 5.0.1  5.0.0"
versions="${versions} 4.0.1  4.0.0"
versions="${versions} 3.9.1  3.9.0  3.8.1  3.8.0  3.7.1  3.7.0  3.6.2  3.5.1  3.0"

c_base="gcc@4.4.7"

myArch="arch=$(spack arch)"

echo ""
echo "spack compiler find"
      spack compiler find

for v in ${versions}; do
    task_seconds=0
    counter=$((counter+1))
    echo ""
    echo "###   ###   ###   ###   ###   ###"
    echo "###   ###   ###   ###   ###   ###"
    echo ""
    echo "spack install ${what} @ ${v} % ${c_base} ${myArch}"
          spack install ${what} @ ${v} % ${c_base} ${myArch}
    echo ""
          spack clean -a
    echo ""
    echo "spack compiler find $(spack location --install-dir ${what} @ ${v})"
          spack compiler find $(spack location --install-dir ${what} @ ${v})
    date
    echo "time to install ${what} @ ${v} % ${c_base} = $((SECONDS-task_seconds))s"
done
echo "time for all ${counter} ${what} installs = ${SECONDS} s"

. snaphot.sh
