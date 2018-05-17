#!/bin/bash
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

# topa1@ray23:scripts $ date
# Wed May 16 16:40:06 PDT 2018

# topa1@ray23:scripts $ pwd
# /g/g13/topa1/spack/spack.ray.current/scripts

# topa1@ray23:scripts $ spack arch
# linux-rhel7-ppc64le

# topa1@ray23:scripts $ gcc --version
# gcc (GCC) 4.9.3

export SECONDS=0

l_compilers=""
## clang
l_compilers="${l_compilers} clang@4.0.0"
l_compilers="${l_compilers} clang@3.9.1  clang@3.8.0"
## gcc
l_compilers="${l_compilers} gcc@8.1.0"
l_compilers="${l_compilers} gcc@7.3.0  gcc@7.2.0  gcc@7.1.0"
l_compilers="${l_compilers} gcc@6.4.0  gcc@6.3.0  gcc@6.2.0  gcc@6.1.0"
l_compilers="${l_compilers} gcc@5.5.0  gcc@5.4.0  gcc@5.3.0  gcc@5.2.0  gcc@5.1.0"
l_compilers="${l_compilers} gcc@4.9.4  gcc@4.9.3  gcc@4.9.2  gcc@4.8.5  gcc@4.8.4"
## xl
l_compilers="${l_compilers} xl@16.1    xl@15.1    xl@13.1"
l_compilers="${l_compilers} xl_r@16.1  xl_r@15.1  xl_r@13.1"

census=( ${l_compilers} )
echo "${#census[@]} Spack-recognized compilers loaded on ${host_name}"

# topa1@ray23:spack.ray.current $ date
# Thu May 17 11:28:51 PDT 2018

# topa1@ray23:spack.ray.current $ pwd
# /g/g13/topa1/spack/spack.ray.current

# topa1@ray23:spack.ray.current $ spack arch
# linux-rhel7-ppc64le

# topa1@ray23:spack.ray.current $ spack compilers
# ==> Available compilers
# -- clang rhel7-ppc64le ------------------------------------------
# clang@4.0.0  clang@3.9.1  clang@3.8.0
#
# -- gcc rhel7-ppc64le --------------------------------------------
# gcc@8.1.0  gcc@7.2.0  gcc@6.4.0  gcc@6.2.0  gcc@5.5.0  gcc@5.3.0  gcc@5.1.0  gcc@4.9.3  gcc@4.8.5
# gcc@7.3.0  gcc@7.1.0  gcc@6.3.0  gcc@6.1.0  gcc@5.4.0  gcc@5.2.0  gcc@4.9.4  gcc@4.9.2  gcc@4.8.4
#
# -- xl rhel7-ppc64le ---------------------------------------------
# xl@16.1  xl@15.1  xl@13.1
#
# -- xl_r rhel7-ppc64le -------------------------------------------
# xl_r@16.1  xl_r@15.1  xl_r@13.1
