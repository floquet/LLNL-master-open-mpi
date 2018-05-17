#!/bin/bash
# . source build-generic gcc gcc@4.9.3
printf '%s\n' "+++  $(pwd)/${BASH_SOURCE[0]} $(date)"

source "list-versions-${1}.sh" # establishes ${what} and ${versions}

SECONDS=0
counter=0

myArch="arch=$(spack arch)"

echo ""
echo "spack compiler find"
      spack compiler find

for v in ${versions}; do
    task_seconds=${SECONDS}
    counter=$((counter+1))
    echo ""
    echo "**   **   **   **   **   **"
    echo "**   **   **   **   **   **"
    echo ""
    echo "spack install ${what} @ ${v} % ${2} ${myArch}"
          spack install ${what} @ ${v} % ${2} ${myArch}
    echo ""
          spack clean -a
    echo ""
    echo "spack compiler find $(spack location --install-dir ${what} @ ${v})"
          spack compiler find $(spack location --install-dir ${what} @ ${v})
    date
    echo "time to install ${what} @ ${v} % ${2} = $((SECONDS-task_seconds))s"
done
echo "time for all ${counter} ${what} installs = ${SECONDS} s"

# . snaphot.sh
