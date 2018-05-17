#!/bin/bash
# . source build-generic gcc
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

function pause(){
    echo ""
    echo "press RETURN to continue; ctrl+c to stop"
    read -p "$*"
}

export where="${master}/init/bash/builders/list-versions-${1}.sh"

echo "gcc system compiler = ${gcc_system_compiler}"
echo "looking for version list in ${where}"

pause

source "${master}/init/bash/builders/list-versions-${1}.sh" # establishes ${what} and ${versions}

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
    echo "spack install ${what} @ ${v} % ${gcc_system_compiler} ${myArch}"
          spack install ${what} @ ${v} % ${gcc_system_compiler} ${myArch}
    echo ""
          spack clean -a
    echo ""
    echo "spack compiler find $(spack location --install-dir ${what} @ ${v})"
          spack compiler find $(spack location --install-dir ${what} @ ${v})
    date
    echo "time to install ${what} @ ${v} % ${gcc_system_compiler} = $((SECONDS-task_seconds))s"
done
echo "time for all ${counter} ${what} installs = ${SECONDS} s"

# . snaphot.sh
