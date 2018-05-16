#!/bin/bash
printf '%s\n' "+++  $(pwd)/${BASH_SOURCE[0]} $(date)"
# dantopa@cn145:compute $ gcc --version
# gcc (GCC) 4.8.5 20150623 (Red Hat 4.8.5-16)

export l_compilers=""
## clang
l_compilers="${l_compilers} clang@5.0.1  clang@5.0.0"
l_compilers="${l_compilers} clang@4.0.1"
l_compilers="${l_compilers} clang@3.9.1  clang@3.8.1  clang@3.7.1  clang@3.5.2"
## gcc
l_compilers="${l_compilers} gcc@8.1.0"
l_compilers="${l_compilers} gcc@7.3.0  gcc@7.2.0  gcc@7.1.0"
l_compilers="${l_compilers} gcc@6.4.0  gcc@6.3.0  gcc@6.2.0  gcc@6.1.0"
l_compilers="${l_compilers} gcc@5.5.0  gcc@5.4.0  gcc@5.3.0  gcc@5.2.0  gcc@5.1.0"
l_compilers="${l_compilers} gcc@4.9.3  gcc@4.9.2  gcc@4.9.1  gcc@4.9.0  gcc@4.8.5  gcc@4.6.4"
## intel
l_compilers="${l_compilers} intel@18.0.2  intel@18.0.1  intel@17.0.6  intel@17.0.1  intel@16.0.4  intel@16.0.3  intel@16.0.1  intel@16.0.0"
## pgi
l_compilers="${l_compilers} pgi@18.3  pgi@17.10  pgi@17.4  pgi@16.10"

census=( ${l_compilers} )
echo "${#census[@]} Spack-recognized compilers loaded"

# dantopa@cn145:compute $ spack compilers
# ==> Available compilers
# -- clang centos7-x86_64 -----------------------------------------
# clang@5.0.1  clang@5.0.0  clang@4.0.1  clang@3.9.1  clang@3.8.1  clang@3.7.1  clang@3.5.2

# -- clang rhel7-ppc64le ------------------------------------------
# clang@7.0.0

# -- gcc centos7-x86_64 -------------------------------------------
# gcc@7.3.0  gcc@7.2.0  gcc@7.1.0  gcc@6.4.0  gcc@6.3.0  gcc@6.2.0  gcc@6.1.0  gcc@5.5.0  gcc@5.4.0  gcc@5.3.0  gcc@5.2.0  gcc@5.1.0  gcc@4.9.3  gcc@4.9.2  gcc@4.9.1  gcc@4.9.0  gcc@4.8.5  gcc@4.6.4

# -- gcc rhel7-ppc64le --------------------------------------------
# gcc@7.3.0  gcc@7.2.0  gcc@7.1.0  gcc@6.4.0  gcc@6.3.0  gcc@5.5.0  gcc@5.4.0  gcc@4.8.5

# -- intel centos7-x86_64 -----------------------------------------
# intel@18.0.2  intel@18.0.1  intel@17.0.6  intel@17.0.1  intel@16.0.4  intel@16.0.3  intel@16.0.1  intel@16.0.0

# -- pgi centos7-x86_64 -------------------------------------------
# pgi@18.3  pgi@17.10  pgi@17.4  pgi@16.10

# -- pgi rhel7-ppc64le --------------------------------------------
# pgi@18.3  pgi@17.10  pgi@17.5  pgi@16.10

# -- xl rhel7-ppc64le ---------------------------------------------
# xl@13.1.7  xl@13.1.6

# -- xl_r rhel7-ppc64le -------------------------------------------
# xl_r@13.1.7  xl_r@13.1.6
