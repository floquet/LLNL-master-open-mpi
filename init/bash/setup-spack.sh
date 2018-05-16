#!/bin/bash
printf '%s\n' "+++  $(pwd)/${BASH_SOURCE[0]} $(date)"

## assume ${SPACK_ROOT} is setup
## cd to ${Amarillo}/ompi-master/init/bash

echo "cp build-open-mpi.sh                          ${SPACK_ROOT}/."
      cp build-open-mpi.sh                          ${SPACK_ROOT}/.
echo "cp load-ompi-versions-spack.sh                ${SPACK_ROOT}/."
      cp load-ompi-versions-spack.sh                ${SPACK_ROOT}/.
echo "cp loaders/load-spack-compilers-${host_name}* ${SPACK_ROOT}/."
      cp loaders/load-spack-compilers-${host_name}* ${SPACK_ROOT}/.

echo "cp ../yaml/packages.yaml     ${SPACK_ROOT}/etc/spack/defaults/."
      cp ../yaml/packages.yaml     ${SPACK_ROOT}/etc/spack/defaults/.

echo "cp ../yaml/mirrors.yaml      ${SPACK_ROOT}/etc/spack/defaults/."
      cp ../yaml/mirrors.yaml      ${SPACK_ROOT}/etc/spack/defaults/.

echo "cp ../yaml/lmod-modules.yaml ${SPACK_ROOT}/etc/spack/defaults/."
      cp ../yaml/lmod-modules.yaml ${SPACK_ROOT}/etc/spack/defaults/.

echo "cp ../yaml/tcl-modules.yaml  ${SPACK_ROOT}/etc/spack/defaults/."
      cp ../yaml/tcl-modules.yaml  ${SPACK_ROOT}/etc/spack/defaults/.
