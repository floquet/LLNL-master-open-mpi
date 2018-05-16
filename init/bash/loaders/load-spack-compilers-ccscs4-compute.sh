#!/bin/bash
printf '%s\n' "+++  $(pwd)/${BASH_SOURCE[0]} $(date)"

# dantopa@ccscs7.lanl.gov:spack $ date
# Fri Apr 27 15:21:01 MDT 2018

# dantopa@ccscs7.lanl.gov:spack $ pwd
# /home/dantopa/howard/spack

# dantopa@ccscs7.lanl.gov:spack $ gcc --version
# gcc (GCC) 4.8.5 20150623 (Red Hat 4.8.5-28)

export l_compilers=""
## clang
l_compilers="${l_compilers} clang@6.0.0"
l_compilers="${l_compilers} clang@5.0.1  clang@5.0.0"
l_compilers="${l_compilers} clang@4.0.1  clang@4.0.0"
l_compilers="${l_compilers} clang@3.9.1  clang@3.9.0  clang@3.8.1  clang@3.8.0  clang@3.7.1  clang@3.7.0  clang@3.6.2  clang@3.5.1  clang@3.0"
## gcc
l_compilers="${l_compilers} gcc@8.1.0"
l_compilers="${l_compilers} gcc@7.3.0  gcc@7.2.0  gcc@7.1.0"
l_compilers="${l_compilers} gcc@6.4.0  gcc@6.3.0  gcc@6.2.0  gcc@6.1.0"
l_compilers="${l_compilers} gcc@5.5.0  gcc@5.4.0  gcc@5.3.0  gcc@5.2.0  gcc@5.1.0"
l_compilers="${l_compilers} gcc@4.9.4  gcc@4.9.3  gcc@4.9.2  gcc@4.9.1  gcc@4.8.5  gcc@4.8.4  gcc@4.7.4  gcc@4.6.4  gcc@4.5.4"

census=( ${l_compilers} )
echo "${#census[@]} Spack-recognized compilers loaded"

# dantopa@cn2001:power8 $ date
# Thu Apr 26 14:49:55 MDT 2018
