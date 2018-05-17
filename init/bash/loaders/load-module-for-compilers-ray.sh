#!/bin/bash
# . load-modules-for-compilers.#!/bin/sh

printf '%s\n' "+++  $(pwd)/${BASH_SOURCE[0]} $(date)"

function loader(){
    echo ""
    echo "module purge"
          module purge
    echo ""
    echo "module load ${1}"
          module load ${1}
    echo ""
    echo "spack compiler add"
          spack compiler add
}

export SECONDS=0

l_modules=""
l_modules="${l_modules} clang/4.0.0 clang/3.9.1"
l_modules="${l_modules} clang/coral-2018.04.17"
l_modules="${l_modules} gcc/4.9.3 gcc/4.8-redhat"
l_modules="${l_modules} pgi/18.4 pgi/18.3 pgi/18.1"
l_modules="${l_modules} pgi/17.10 pgi/17.9 pgi/17.7 pgi/17.4 pgi/17.3 pgi/17.1 pgi/17.1"
l_modules="${l_modules} pgi/16.10"
l_modules="${l_modules} xl/beta-2018.04.06 xl/2016.12.02 xl/2018.04.29"
l_modules="${l_modules} cuda/9.2.64 cuda/9.1.85 cuda/9.1.76 cuda/9.0.184 cuda/9.0.176 cuda/8.0"

echo ""
echo "Spack compilers: BEFORE"
echo "spack compilers"
      spack compilers

for m in ${l_modules}; do
    loader ${m}
done

echo ""
echo "Spack compilers: AFTER"
echo "spack compilers"
      spack compilers

# topa1@rzmanta23:spack.rzmanta.hot $ date
# Wed May 16 13:34:14 PDT 2018

# topa1@rzmanta23:spack.rzmanta.hot $ pwd
# /g/g13/topa1/spack/spack.rzmanta.hot

# topa1@rzmanta23:spack.rzmanta.hot $ spack arch
# linux-rhel7-ppc64le

# topa1@rzmanta23:spack.rzmanta.hot $ spack compilers
# ==> Available compilers
# -- clang rhel7-ppc64le ------------------------------------------
# clang@4.0.0  clang@3.9.1  clang@3.8.0

# -- gcc rhel6-x86_64 ---------------------------------------------
# gcc@4.6.1  gcc@4.4.7  gcc@3.4.6

# -- gcc rhel7-ppc64le --------------------------------------------
# gcc@8.1.0  gcc@7.2.0  gcc@6.4.0  gcc@6.2.0  gcc@5.5.0  gcc@5.3.0  gcc@5.1.0  gcc@4.9.3  gcc@4.8.5
# gcc@7.3.0  gcc@7.1.0  gcc@6.3.0  gcc@6.1.0  gcc@5.4.0  gcc@5.2.0  gcc@4.9.4  gcc@4.9.2  gcc@4.8.4

# -- intel rhel6-x86_64 -------------------------------------------
# intel@18.0.1  intel@16.0.2  intel@15.0.1  intel@14.0.1  intel@13.0.0  intel@12.0.4
# intel@17.0.2  intel@16.0.1  intel@15.0.0  intel@14.0.0  intel@12.1.5  intel@11.1
# intel@17.0.0  intel@16.0.0  intel@14.0.4  intel@13.1.1  intel@12.1.3  intel@10.1
# intel@16.0.4  intel@15.0.4  intel@14.0.3  intel@13.1.0  intel@12.1.2  intel@10.0
# intel@16.0.3  intel@15.0.3  intel@14.0.2  intel@13.0.1  intel@12.1.0  intel@9.1

# -- pgi rhel6-x86_64 ---------------------------------------------
# pgi@17.1  pgi@16.5  pgi@15.10  pgi@15.1   pgi@14.3   pgi@13.2  pgi@12.1   pgi@10.9  pgi@8.0
# pgi@16.9  pgi@16.3  pgi@15.7   pgi@14.10  pgi@13.10  pgi@13.1  pgi@11.10  pgi@10.2  pgi@7.1
# pgi@16.7  pgi@16.1  pgi@15.5   pgi@14.7   pgi@13.6   pgi@12.8  pgi@11.1   pgi@9.0   pgi@7.0

# -- xl rhel7-ppc64le ---------------------------------------------
# xl@16.1  xl@15.1  xl@14.1  xl@13.1

# -- xl_r rhel7-ppc64le -------------------------------------------
# xl_r@16.1  xl_r@15.1  xl_r@14.1  xl_r@13.1
