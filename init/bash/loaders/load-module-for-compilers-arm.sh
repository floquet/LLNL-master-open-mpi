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
l_modules="${l_modules} Cortex-A57/RHEL/7/arm-hpc-compiler-18.2/armpl_time_limited/18.2.0 Generic-AArch64/RHEL/7/gcc-7.1.0/armpl_time_limited/18.2.0"
l_modules="${l_modules} Cortex-A57/RHEL/7/gcc-7.1.0/armpl_time_limited/18.2.0                     Generic-AArch64/RHEL/7/gcc/7.1.0"
l_modules="${l_modules} Cortex-A72/RHEL/7/arm-hpc-compiler-18.2/armpl_time_limited/18.2.0         Generic-AArch64/RHEL/7/gcc_runtimes/7.1.0"
l_modules="${l_modules} Cortex-A72/RHEL/7/gcc-7.1.0/armpl_time_limited/18.2.0                     Generic-AArch64/RHEL/7/suites/arm-compiler-for-hpc_eval/18.2"
l_modules="${l_modules} Falkor/RHEL/7/arm-hpc-compiler-18.2/armpl_time_limited/18.2.0             ThunderX/RHEL/7/arm-hpc-compiler-18.2/armpl_time_limited/18.2.0"
l_modules="${l_modules} Falkor/RHEL/7/gcc-7.1.0/armpl_time_limited/18.2.0                         ThunderX/RHEL/7/gcc-7.1.0/armpl_time_limited/18.2.0"
l_modules="${l_modules} Generic-AArch64/RHEL/7/arm-hpc-compiler-18.2/armpl_time_limited/18.2.0    ThunderX2CN99/RHEL/7/arm-hpc-compiler-18.2/armpl_time_limited/18.2.0"
l_modules="${l_modules} Generic-AArch64/RHEL/7/arm-hpc-compiler/18.2                              ThunderX2CN99/RHEL/7/gcc-7.1.0/armpl_time_limited/18.2.0"
l_modules="${l_modules} Generic-AArch64/RHEL/7/arm-instruction-emulator/18.0"

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
