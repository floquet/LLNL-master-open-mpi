#!/bin/bash
printf '%s\n' "+++  $(pwd)/${BASH_SOURCE[0]} $(date)"
# dantopa@sn080.localdomain:spack-snow $ gcc --version
# gcc (GCC) 6.4.0

# dantopa@sn080.localdomain:spack-snow $ spack arch
# linux-rhel7-x86_64

export l_compilers=""

## clang
l_compilers="               clang@5.0.0"
l_compilers="${l_compilers} clang@4.0.1 clang@4.0.0"
l_compilers="${l_compilers} clang@3.9.1 clang@3.9.0  clang@3.8.1  clang@3.8.0  clang@3.7.1  clang@3.7.0"
# ## gcc
l_compilers="${l_compilers} gcc@7.3.0  gcc@7.2.0  gcc@7.1.0"
l_compilers="${l_compilers} gcc@6.4.0  gcc@6.3.0  gcc@6.2.0  gcc@6.1.0"
l_compilers="${l_compilers} gcc@5.5.0  gcc@5.4.0  gcc@5.3.0  gcc@5.2.0  gcc@5.1.0"
l_compilers="${l_compilers} gcc@4.9.4  gcc@4.9.3  gcc@4.9.2  gcc@4.9.1  gcc@4.8.5  gcc@4.8.4"
## intel
l_compilers="${l_compilers} intel@18.0.2  intel@18.0.1  intel@18.0.0"
l_compilers="${l_compilers} intel@17.0.4  intel@17.0.2  intel@17.0.1"
l_compilers="${l_compilers} intel@16.0.3"
l_compilers="${l_compilers} intel@15.0.4"
## pgi
# l_compilers="${l_compilers} pgi@17.10  pgi@16.10  pgi@15.10"

census=( ${l_compilers} )
echo "${#census[@]} Spack-recognized compilers loaded"

# dantopa@sn-fey2.lanl.gov:spack.current.snow $ date
# Thu May  3 17:15:03 MDT 2018

# dantopa@sn-fey2.lanl.gov:spack.current.snow $ pwd
# /net/scratch3/dantopa/spack.current.snow

# dantopa@sn-fey2.lanl.gov:spack.current.snow $ spack compilers
# ==> Available compilers
# -- clang rhel7-x86_64 -------------------------------------------
# clang@5.0.0  clang@4.0.0  clang@3.9.0  clang@3.8.0  clang@3.7.0
# clang@4.0.1  clang@3.9.1  clang@3.8.1  clang@3.7.1

# -- gcc rhel6-x86_64 ---------------------------------------------
# gcc@7.3.0  gcc@6.4.0  gcc@6.1.0  gcc@5.3.0  gcc@4.9.4  gcc@4.9.1  gcc@4.6.1
# gcc@7.2.0  gcc@6.3.0  gcc@5.5.0  gcc@5.2.0  gcc@4.9.3  gcc@4.8.5  gcc@4.4.7
# gcc@7.1.0  gcc@6.2.0  gcc@5.4.0  gcc@5.1.0  gcc@4.9.2  gcc@4.8.4  gcc@3.4.6

# -- gcc rhel7-x86_64 ---------------------------------------------
# gcc@7.3.0  gcc@7.1.0  gcc@6.3.0  gcc@6.1.0  gcc@5.4.0  gcc@5.2.0  gcc@4.9.4  gcc@4.9.2  gcc@4.8.5
# gcc@7.2.0  gcc@6.4.0  gcc@6.2.0  gcc@5.5.0  gcc@5.3.0  gcc@5.1.0  gcc@4.9.3  gcc@4.9.1  gcc@4.8.4

# -- intel rhel7-x86_64 -------------------------------------------
# intel@18.0.2  intel@18.0.0  intel@17.0.4  intel@17.0.1  intel@15.0.4
# intel@18.0.1  intel@17.0.4  intel@17.0.2  intel@16.0.3

# -- pgi rhel7-x86_64 ---------------------------------------------
# pgi@17.10  pgi@16.10  pgi@15.10
  
