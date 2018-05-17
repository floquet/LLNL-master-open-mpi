#!/bin/bash
printf '%s\n' "+++  $(pwd)/$(tput bold)${BASH_SOURCE[0]}$(tput sgr0) $(date)"

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
## intel
l_compilers="${l_compilers} intel@18.0.1"
l_compilers="${l_compilers} intel@17.0.2  intel@17.0.0"
l_compilers="${l_compilers} intel@16.0.4  intel@16.0.3  intel@16.0.2  intel@16.0.1  intel@16.0.0"
l_compilers="${l_compilers} intel@15.0.4  intel@15.0.3  intel@15.0.1  intel@15.0.0"
l_compilers="${l_compilers} intel@14.0.4  intel@14.0.3  intel@14.0.2  intel@14.0.1  intel@14.0.1"
l_compilers="${l_compilers} intel@13.1.1  intel@13.1.0  intel@13.0.1  intel@13.0.0"
l_compilers="${l_compilers} intel@12.1.5  intel@12.1.3  intel@12.1.2  intel@12.1.0  intel@12.0.4"
l_compilers="${l_compilers} intel@11.1"
l_compilers="${l_compilers} intel@10.1    intel@10.0"
l_compilers="${l_compilers} intel@9.1"
## pgi
l_compilers="${l_compilers} pgi@17.1"
l_compilers="${l_compilers} pgi@16.9   pgi@16.7   pgi@16.5   pgi@16.3  pgi@16.1"
l_compilers="${l_compilers} pgi@15.10  pgi@15.7   pgi@15.5   pgi@15.1"
l_compilers="${l_compilers} pgi@14.10  pgi@14.7   pgi@14.3"
l_compilers="${l_compilers} pgi@13.10  pgi@13.6   pgi@13.2   pgi@13.1"
l_compilers="${l_compilers} pgi@12.8   pgi@12.1"
l_compilers="${l_compilers} pgi@11.10  pgi@11.1"
l_compilers="${l_compilers} pgi@10.9   pgi@10.2"
l_compilers="${l_compilers} pgi@9.0"
l_compilers="${l_compilers} pgi@8.0"
l_compilers="${l_compilers} pgi@7.1    pgi@7.0"

census=( ${l_compilers} )
echo "${#census[@]} Spack-recognized compilers loaded"

# topa1@ray23:spack.ray.current $ date
# Thu May 17 11:14:11 PDT 2018

# topa1@ray23:spack.ray.current $ pwd
# /g/g13/topa1/spack/spack.ray.current

# topa1@ray23:spack.ray.current $ spack arch
# spacklinux-rhel7-ppc64le

# topa1@ray23:spack.ray.current $ spack compilers
# ==> Available compilers
# -- clang rhel7-ppc64le ------------------------------------------
# clang@3.8.0
#
# -- gcc rhel7-ppc64le --------------------------------------------
# gcc@8.1.0  gcc@7.2.0  gcc@6.4.0  gcc@6.2.0  gcc@5.5.0  gcc@5.3.0  gcc@5.1.0  gcc@4.9.3  gcc@4.8.5
# gcc@7.3.0  gcc@7.1.0  gcc@6.3.0  gcc@6.1.0  gcc@5.4.0  gcc@5.2.0  gcc@4.9.4  gcc@4.9.2  gcc@4.8.4
#
# -- xl rhel7-ppc64le ---------------------------------------------
# xl@16.1
#
# -- xl_r rhel7-ppc64le -------------------------------------------
# xl_r@16.1
