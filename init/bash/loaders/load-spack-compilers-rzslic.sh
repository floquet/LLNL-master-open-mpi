#!/bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

# topa1@rzmanta23:spack.rzmanta.hot $ date
# Tue May 15 12:37:24 PDT 2018

# topa1@rzmanta23:spack.rzmanta.hot $ pwd
# /g/g13/topa1/spack/spack.rzmanta.hot

# topa1@rzmanta23:spack.rzmanta.hot $ gcc --version
# gcc (GCC) 4.9.3

export l_compilers=""

## clang
l_compilers="${l_compilers} clang@3.8.0"

## gcc
l_compilers="${l_compilers} gcc@4.9.3  gcc@4.8.5"

## XL
l_compilers="${l_compilers} xl@16.1 xl_r@16.1"

census=( ${l_compilers} )
echo "${#census[@]} Spack-recognized compilers loaded"

# topa1@rzmanta23:spack.rzmanta.hot $ date
# Tue May 15 12:38:32 PDT 2018

# topa1@rzmanta23:spack.rzmanta.hot $ pwd
# /g/g13/topa1/spack/spack.rzmanta.hot

# topa1@rzmanta23:spack.rzmanta.hot $ spack arch
# linux-rhel7-ppc64le

# topa1@rzmanta23:spack.rzmanta.hot $ spack compilers
# ==> Available compilers
# -- clang rhel7-ppc64le ------------------------------------------
# clang@3.8.0
#
# -- gcc rhel7-ppc64le --------------------------------------------
# gcc@4.9.3  gcc@4.8.5
#
# -- xl rhel7-ppc64le ---------------------------------------------
# xl@16.1
#
# -- xl_r rhel7-ppc64le -------------------------------------------
# xl_r@16.1
