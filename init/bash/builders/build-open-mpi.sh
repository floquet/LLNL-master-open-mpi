#!/bin/bash
# . build-open-mpi.sh <node>
printf '%s\n' "$(date), $(tput bold)${BASH_SOURCE[0]}$(tput sgr0)"

## point ${master} to master-ompi database

function pause(){
    echo ""
    echo "press RETURN to continue; ctrl+c to stop"
    read -p "$*"
}

SECONDS=0
ymd=$(date +%Y-%m-%d)  # date tag to distinguish runs

tpl="openmpi"
myArch="$(spack arch)"
klingons=""

source "${master}/init/bash/loaders/load-open-mpi-versions-spack.sh"
source "${master}/init/bash/loaders/load-spack-compilers-${host_name}-${1}.sh"

export myTimings="${SPACK_ROOT}/${tpl}-${HOSTNAME}-${ymd}-timings.txt"
echo "${tpl} build times for ${host_name} ${1}" >  ${myTimings}
echo "\${HOSTNAME}   = ${HOSTNAME}"             >> ${myTimings}
echo "\${USER}       = ${USER}"                 >> ${myTimings}
echo "\${HOME}       = ${HOME}"                 >> ${myTimings}
echo "\${SPACK_ROOT} = ${SPACK_ROOT}"           >> ${myTimings}
echo "uname:"                                   >> ${myTimings}
echo "  machine name:          $(uname -m)"     >> ${myTimings}
echo "  network node hostname: $(uname -n)"     >> ${myTimings}
echo "  hardware platform:     $(uname -i)"     >> ${myTimings}
echo "  processor type:        $(uname -p)"     >> ${myTimings}
echo "  operating system:      $(uname -o)"     >> ${myTimings}
echo "  kernel name:           $(uname -svr)"   >> ${myTimings}
echo ""                                         >> ${myTimings}
git log -1                                      >> ${myTimings} 2>&1
echo ""                                         >> ${myTimings}
date                                            >> ${myTimings}
echo ""                                         >> ${myTimings}
echo "Open MPI versions:"                       >> ${myTimings}
echo "${v_ompi}"                                >> ${myTimings}
echo ""                                         >> ${myTimings}
echo "Compilers:"                               >> ${myTimings}
echo "${l_compilers}"                           >> ${myTimings}
echo ""                                         >> ${myTimings}

export spackCommands="${SPACK_ROOT}/spack-commands.txt"
echo $(date) >  ${spackCommands}
echo ""      >> ${spackCommands}

export g_db_path="${master}/${host_name}/${1}"
echo "spack command file = ${spackCommands}"
echo "timings file       = ${myTimings}"
echo ""
echo "machine name    = ${host_name}"
echo "node type       = ${1}"
echo "master database = ${master}"
echo "g_db_path       = ${g_db_path}"

pause

for v in ${v_ompi}; do
    version_seconds=${SECONDS}
    for c in ${l_compilers}; do
        export l_data_path="${myArch}/${tpl}-${v}/${c}/${ymd}"
        export g_data_path="${g_db_path}/${l_data_path}"
        export f_commands="${g_data_path}/build-command.txt"
        mkdir -p "${g_data_path}"
        export FileName="${g_data_path}/screen-output.txt"
        task_seconds=${SECONDS}
        echo ""
        echo "spack install ${tpl} @ ${v} % ${c} ${klingons} arch=${myArch} > ${FileName} 2>&1" >> ${spackCommands}
        echo "spack install ${tpl} @ ${v} % ${c} ${klingons} arch=${myArch} > ${FileName} 2>&1" >> ${f_commands}
        echo "spack install ${tpl} @ ${v} % ${c} ${klingons} arch=${myArch} > ${FileName} 2>&1"
              spack install ${tpl} @ ${v} % ${c} ${klingons} arch=${myArch} > ${FileName} 2>&1
        echo ""
        echo "elapsed time for building ${tpl} @ ${v} % ${c} = $(( SECONDS - task_seconds )) s" >> ${myTimings}
        echo "elapsed time for building ${tpl} @ ${v} % ${c} = $(( SECONDS - task_seconds )) s" >> ${f_commands}
        echo ""
        echo "grabbing debug files..."
        echo 'cp -a "$(spack location -i ${tpl} @ ${v} % ${c} )/.spack" "${g_data_path}"'
              cp -a "$(spack location -i ${tpl} @ ${v} % ${c} )/.spack" "${g_data_path}"
        echo ""
        echo "spack clean -a"
              spack clean -a
    done
    echo ""
    echo "++  elapsed time for building ${tpl} @ ${v} = $(( SECONDS - version_seconds )) s" >> ${myTimings}
    echo "++  elapsed time for building ${tpl} @ ${v} = $(( SECONDS - version_seconds )) s" >  "${g_data_path}/${tpl}-${v}-timings.txt"
done

echo "++  ++  elapsed time for all ${tpl} builds = ${SECONDS} s" >> ${myTimings}
echo "++  ++  elapsed time for all ${tpl} builds = ${SECONDS} s" >  "${g_data_path}/${tpl}-timings.txt"

cp ${myTimings} ${g_db_path}/${myArch}

function shared (){
    echo ""                       >> ${1}
    echo "\$(pwd) = $(pwd)"       >> ${1}
    echo ""                       >> ${1}
    echo "spack arch = ${myArch}" >> ${1}
    echo ""                       >> ${1}
}

function find-ompi () {
    echo "${host_name} ${myArch} installs $(date)" >  ${1}
    shared ${1}
    echo "spack find ${tpl}"                       >> ${1}
          spack find ${tpl}                        >> ${1}
}
find-ompi                "spack-find-${tpl}-${ymd}.dat"
find-ompi "${g_data_path}/spack-find-${tpl}-${ymd}.dat"

function find-ldf-ompi () {
    echo "${host_name} ${myArch} installs $(date)" >  ${1}
    shared ${1}
    echo "spack find ${tpl}"                       >> ${1}
          spack find ${tpl}                        >> ${1}
}
find-ompi                "spack-find-ldf-${tpl}-${ymd}.dat"
find-ompi "${g_data_path}/spack-find-ldf-${tpl}-${ymd}.dat"

spack-compilers () {
    echo "${host_name} compilers $(date)" >  ${1}
    shared ${1}
    echo "spack compilers"                >> ${1}
          spack compilers                 >> ${1}
        }
spack-compilers                        "${host_name}-spack-compilers-${ymd}.dat"
spack-compilers "${g_db_path}/${myArch}/${host_name}-spack-compilers-${ymd}.dat"

# copy scripts
sp
cp ${SPACK_ROOT}/*.sh  "${master}/${host_name}/${1}/${ymd}"
cp ${SPACK_ROOT}/*.txt "${master}/${host_name}/${1}/${ymd}"
