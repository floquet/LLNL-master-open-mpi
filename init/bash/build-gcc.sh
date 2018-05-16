#!/bin/bash
printf '%s\n' "+++  $(pwd)/${BASH_SOURCE[0]} $(date)"
# dantopa@cn818:spack.current.arm $ date
# Mon May  7 17:29:18 MDT 2018

# dantopa@cn818:spack.current.arm $ pwd
# /scratch/users/dantopa/spack.current.arm

# dantopa@cn818:spack.current.arm $ spack arch
# linux-rhel7-aarch64

# dantopa@cn818:spack.current.arm $ gcc --version
# gcc (GCC) 4.8.5 20150623 (Red Hat 4.8.5-28)

SECONDS=0
counter=0

what="gcc"

versions=""
versions="${versions} 8.1.0"
versions="${versions} 7.3.0  7.2.0  7.1.0"
versions="${versions} 6.4.0  6.3.0  6.2.0  6.1.0"
versions="${versions} 5.5.0  5.4.0  5.3.0  5.2.0  5.1.0"
versions="${versions} 4.9.4  4.9.3  4.9.2  4.9.1  4.8.5  4.8.4" # 4.7.4  4.6.4  4.5.4"

c_base="gcc@4.8.5"

myArch="arch=$(spack arch)"

echo ""
echo "spack compiler find"
      spack compiler find

for v in ${versions}; do
    task_seconds=${SECONDS}
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
