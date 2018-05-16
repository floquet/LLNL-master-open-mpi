#!/bin/bash
printf '%s\n' "+++  $(pwd)/${BASH_SOURCE[0]} $(date)"
# dantopa@cn2001:power8 $ pwd
# /usr/projects/artab/dantopa/github/hpc/power8

# dantopa@cn2001:power8 $ gcc --version
# gcc (GCC) 4.8.5 20150623 (Red Hat 4.8.5-16)

export l_compilers=""
## gcc
l_compilers="${l_compilers} gcc@7.3.0  gcc@7.2.0  gcc@7.1.0"
l_compilers="${l_compilers} gcc@6.4.0  gcc@6.3.0  gcc@6.2.0  gcc@6.1.0"
l_compilers="${l_compilers} gcc@5.5.0  gcc@5.4.0  gcc@5.3.0  gcc@5.2.0  gcc@5.1.0"
l_compilers="${l_compilers} gcc@4.9.4  gcc@4.9.3  gcc@4.9.2  gcc@4.9.1  gcc@4.8.5  gcc@4.8.4  gcc@4.6.1  gcc@4.4.7  gcc@3.4.6"

census=( ${l_compilers} )
echo "${#census[@]} Spack-recognized compilers loaded"

# dantopa@wf-fey1.lanl.gov:spack-wolf $ date
# Tue May  1 10:44:28 MDT 2018

# dantopa@wf-fey1.lanl.gov:spack-wolf $ pwd
# /yellow/usr/projects/artab/users/dantopa/github/hpc/spack-wolf

# dantopa@wf-fey1.lanl.gov:spack-wolf $ spack arch
# linux-rhel6-x86_64

# dantopa@wf-fey1.lanl.gov:spack-wolf $ spack compilers
# ==> Available compilers
# -- clang rhel7-x86_64 -------------------------------------------
# clang@5.0.0  clang@4.0.1  clang@4.0.0  clang@3.9.1  clang@3.9.0  clang@3.8.1  clang@3.8.0  clang@3.7.1  clang@3.7.0
#
# -- gcc rhel6-x86_64 ---------------------------------------------
# gcc@7.3.0  gcc@7.1.0  gcc@6.3.0  gcc@6.1.0  gcc@5.4.0  gcc@5.2.0  gcc@4.9.4  gcc@4.9.2  gcc@4.8.5  gcc@4.6.1  gcc@3.4.6
# gcc@7.2.0  gcc@6.4.0  gcc@6.2.0  gcc@5.5.0  gcc@5.3.0  gcc@5.1.0  gcc@4.9.3  gcc@4.9.1  gcc@4.8.4  gcc@4.4.7
#
# -- gcc rhel7-x86_64 ---------------------------------------------
# gcc@7.3.0  gcc@7.2.0  gcc@7.1.0  gcc@6.4.0  gcc@6.3.0  gcc@6.2.0  gcc@6.1.0  gcc@5.5.0  gcc@5.4.0  gcc@5.3.0  gcc@5.2.0  gcc@5.1.0  gcc@4.9.4  gcc@4.9.3  gcc@4.9.2  gcc@4.9.1  gcc@4.8.5  gcc@4.8.4
#
# -- intel rhel7-x86_64 -------------------------------------------
# intel@18.0.2  intel@18.0.1  intel@18.0.0  intel@17.0.4  intel@17.0.4  intel@17.0.2  intel@17.0.1  intel@16.0.3  intel@15.0.4
#
# -- pgi rhel7-x86_64 ---------------------------------------------
# pgi@17.10  pgi@16.10  pgi@15.10
