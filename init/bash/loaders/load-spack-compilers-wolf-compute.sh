#!/bin/bash
printf '%s\n' "+++  $(pwd)/${BASH_SOURCE[0]} $(date)"
# dantopa@wf-fey1.lanl.gov:spack.current.wolf $ date
# Mon May  7 19:22:03 MDT 2018

# dantopa@wf-fey1.lanl.gov:spack.current.wolf $ pwd
# /tmp/dantopa/spack.current.wolf

# dantopa@wf-fey1.lanl.gov:spack.current.wolf $ gcc --version
# gcc (GCC) 4.4.7 20120313 (Red Hat 4.4.7-18)

export l_compilers=""
## gcc
l_compilers="${l_compilers} gcc@7.3.0  gcc@7.2.0  gcc@7.1.0"
l_compilers="${l_compilers} gcc@6.4.0  gcc@6.3.0  gcc@6.2.0  gcc@6.1.0"
l_compilers="${l_compilers} gcc@5.5.0  gcc@5.4.0  gcc@5.3.0  gcc@5.2.0  gcc@5.1.0"
l_compilers="${l_compilers} gcc@4.9.4  gcc@4.9.3  gcc@4.9.2  gcc@4.9.1  gcc@4.8.5"
l_compilers="${l_compilers} gcc@4.8.4  gcc@4.8.2  gcc@4.7.2  gcc@4.6.1  gcc@4.7.0 gcc@4.4.7"
l_compilers="${l_compilers} gcc@3.4.6"
## intel
l_compilers="${l_compilers} intel@17.0.4  intel@17.0.1"
l_compilers="${l_compilers} intel@16.0.3"
l_compilers="${l_compilers} intel@15.0.4  intel@15.0.3  intel@15.0.0"
l_compilers="${l_compilers} intel@14.0.4  intel@14.0.2"
l_compilers="${l_compilers} intel@13.1.3  intel@13.1.0  intel@13.0.1"
l_compilers="${l_compilers} intel@14.0.4  intel@14.0.2"
l_compilers="${l_compilers} intel@12.1.5  intel@12.1.2"
l_compilers="${l_compilers} intel@11.1"
## pgi
l_compilers="${l_compilers} pgi@17.10"
l_compilers="${l_compilers} pgi@16.10"
l_compilers="${l_compilers} pgi@15.10"
l_compilers="${l_compilers} pgi@14.10"
l_compilers="${l_compilers} pgi@13.10  pgi@13.7  pgi@13.2"
l_compilers="${l_compilers} pgi@12.10  pgi@12.6"
l_compilers="${l_compilers} pgi@10.9"

census=( ${l_compilers} )
echo "${#census[@]} Spack-recognized compilers loaded"

# dantopa@wf-fey1.lanl.gov:spack.current.wolf $ date
# Mon May  7 19:19:57 MDT 2018

# dantopa@wf-fey1.lanl.gov:spack.current.wolf $ pwd
# /tmp/dantopa/spack.current.wolf

# dantopa@wf-fey1.lanl.gov:spack.current.wolf $ spack arch
# linux-rhel6-x86_64

# dantopa@wf-fey1.lanl.gov:spack.current.wolf $ spack compilers
# ==> Available compilers
# -- clang rhel7-x86_64 -------------------------------------------
# clang@5.0.0  clang@4.0.0  clang@3.9.0  clang@3.8.0  clang@3.7.0
# clang@4.0.1  clang@3.9.1  clang@3.8.1  clang@3.7.1

# -- gcc rhel6-x86_64 ---------------------------------------------
# gcc@7.3.0  gcc@6.4.0  gcc@6.1.0  gcc@5.3.0  gcc@4.9.4  gcc@4.9.1  gcc@4.8.2  gcc@4.6.1
# gcc@7.2.0  gcc@6.3.0  gcc@5.5.0  gcc@5.2.0  gcc@4.9.3  gcc@4.8.5  gcc@4.7.2  gcc@4.4.7
# gcc@7.1.0  gcc@6.2.0  gcc@5.4.0  gcc@5.1.0  gcc@4.9.2  gcc@4.8.4  gcc@4.7.0  gcc@3.4.6

# -- gcc rhel7-x86_64 ---------------------------------------------
# gcc@7.3.0  gcc@7.1.0  gcc@6.3.0  gcc@6.1.0  gcc@5.4.0  gcc@5.2.0  gcc@4.9.4  gcc@4.9.2  gcc@4.8.5
# gcc@7.2.0  gcc@6.4.0  gcc@6.2.0  gcc@5.5.0  gcc@5.3.0  gcc@5.1.0  gcc@4.9.3  gcc@4.9.1  gcc@4.8.4

# -- intel rhel6-x86_64 -------------------------------------------
# intel@17.0.4  intel@16.0.3  intel@15.0.3  intel@14.0.4  intel@13.1.3  intel@13.0.1  intel@12.1.2
# intel@17.0.1  intel@15.0.4  intel@15.0.0  intel@14.0.2  intel@13.1.0  intel@12.1.5  intel@11.1

# -- intel rhel7-x86_64 -------------------------------------------
# intel@18.0.2  intel@18.0.0  intel@17.0.4  intel@17.0.1  intel@15.0.4
# intel@18.0.1  intel@17.0.4  intel@17.0.2  intel@16.0.3

# -- pgi rhel6-x86_64 ---------------------------------------------
# pgi@17.10  pgi@15.10  pgi@13.10  pgi@13.2   pgi@12.6
# pgi@16.10  pgi@14.10  pgi@13.7   pgi@12.10  pgi@10.9

# -- pgi rhel7-x86_64 ---------------------------------------------
# pgi@17.10  pgi@16.10  pgi@15.10
