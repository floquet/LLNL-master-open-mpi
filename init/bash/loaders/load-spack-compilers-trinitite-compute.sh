#!/bin/bash
printf '%s\n' "+++  $(pwd)/${BASH_SOURCE[0]} $(date)"
# dantopa@nid00167:spack.current.trinitite.compute $ date
# Mon May  7 13:25:40 MDT 2018

# dantopa@nid00167:spack.current.trinitite.compute $ pwd
# /tmp/dantopa/spack.current.trinitite.compute

# dantopa@nid00167:spack.current.trinitite.compute $ gcc --version
# gcc (GCC) 6.3.0 20161221 (Cray Inc.)

export l_compilers=""
## gcc
l_compilers="${l_compilers} gcc@8.1.0"
l_compilers="${l_compilers} gcc@7.2.0  gcc@7.1.0"
l_compilers="${l_compilers} gcc@6.3.0  gcc@6.2.0  gcc@6.1.0"
l_compilers="${l_compilers} gcc@5.3.0  gcc@5.2.0"
l_compilers="${l_compilers} gcc@4.9.3"
## intel
l_compilers="${l_compilers} intel@17.0.4  intel@17.0.1"
l_compilers="${l_compilers} intel@16.0.3"
l_compilers="${l_compilers} intel@15.0.7  intel@15.0.5"

census=( ${l_compilers} )
echo "${#census[@]} Spack-recognized compilers loaded"

# dantopa@nid00167:spack.current.trinitite.compute $ date
# Mon May  7 13:20:51 MDT 2018

# dantopa@nid00167:spack.current.trinitite.compute $ pwd
# /tmp/dantopa/spack.current.trinitite.compute

# dantopa@nid00167:spack.current.trinitite.compute $ spack arch
# spack ccray-cnl6-haswell

# dantopa@nid00167:spack.current.trinitite.compute $ spack compilers
# ==> Available compilers
# -- cce CNL-any --------------------------------------------------
# cce@8.6.5  cce@8.6.1  cce@8.5.8  cce@8.5.6  cce@8.5.3  cce@8.5.0
# cce@8.6.2  cce@8.6.0  cce@8.5.7  cce@8.5.5  cce@8.5.2  cce@8.4.6

# -- cce cnl6-any -------------------------------------------------
# cce@8.6.5  cce@8.6.1  cce@8.5.8  cce@8.5.6  cce@8.5.3  cce@8.5.0
# cce@8.6.2  cce@8.6.0  cce@8.5.7  cce@8.5.5  cce@8.5.2  cce@8.4.6

# -- gcc CNL-any --------------------------------------------------
# gcc@7.2.0  gcc@7.1.0  gcc@6.3.0  gcc@6.2.0  gcc@6.1.0  gcc@5.3.0  gcc@5.2.0  gcc@4.9.3

# -- gcc cnl6-any -------------------------------------------------
# gcc@7.2.0  gcc@7.1.0  gcc@6.3.0  gcc@6.2.0  gcc@6.1.0  gcc@5.3.0  gcc@5.2.0  gcc@4.9.3

# -- gcc rhel7-x86_64 ---------------------------------------------
# gcc@5.3.0  gcc@4.8.5

# -- gcc sles12-x86_64 --------------------------------------------
# gcc@4.8

# -- intel CNL-any ------------------------------------------------
# intel@17.0.4  intel@17.0.1  intel@16.0.3  intel@15.0.7  intel@15.0.5

# -- intel cnl6-any -----------------------------------------------
# intel@17.0.4  intel@17.0.1  intel@16.0.3  intel@15.0.7  intel@15.0.5

# -- intel rhel7-x86_64 -------------------------------------------
# intel@17.0.4
