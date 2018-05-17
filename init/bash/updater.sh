#!/bin/bash
# . updater.sh <node>
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

echo "\${Master}     = ${Master}"
echo "\${SPACK_ROOT} = ${SPACK_ROOT}"

dirSource="${Master}/init/bash"

echo 'cp \${dirSource}/build-open-mpi.sh \${SPACK_ROOT}/.'
      cp  ${dirSource}/build-open-mpi.sh  ${SPACK_ROOT}/.

echo 'cp \${dirSource}/load-ompi-versions-spack.sh \${SPACK_ROOT}/.'
      cp  ${dirSource}/load-ompi-versions-spack.sh  ${SPACK_ROOT}/.
