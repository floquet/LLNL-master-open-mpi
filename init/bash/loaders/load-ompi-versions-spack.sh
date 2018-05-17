#!/bin/bash
printf '%s\n' "+++  ${BASH_SOURCE[0]} $(date)"

export v_ompi=""
## 3
export v_ompi="${v_ompi} 3.1.0 3.0.1 3.0.0"
## 2
export v_ompi="${v_ompi} 2.1.3 2.1.2  2.1.1  2.1.0  2.0.4  2.0.3  2.0.2  2.0.1  2.0.0"
## 1
export v_ompi="${v_ompi} 1.10.7"
# export v_ompi="${v_ompi} 1.10.7 1.10.6 1.10.5 1.10.4 1.10.3 1.10.2 1.10.1 1.10.0"
# export v_ompi="${v_ompi} 1.8.8  1.8.7  1.8.6  1.8.5  1.8.4  1.8.3  1.8.2  1.8.1  1.8"
# export v_ompi="${v_ompi} 1.7.5  1.7.4  1.7.3  1.7.2  1.7.1  1.7"
# export v_ompi="${v_ompi} 1.6.5  1.6.4  1.6.3  1.6.2  1.6.1  1.6"
# export v_ompi="${v_ompi} 1.5.5  1.5.4  1.5.3  1.5.2  1.5.1  1.5"
# export v_ompi="${v_ompi} 1.4.5  1.4.4  1.4.3  1.4.2  1.4.1  1.4"
# export v_ompi="${v_ompi} 1.3.4  1.3.3  1.3.2  1.3.1  1.3"
# export v_ompi="${v_ompi} 1.2.9  1.2.8  1.2.7  1.2.6  1.2.5  1.2.4  1.2.3  1.2.2  1.2.1  1.2"
# export v_ompi="${v_ompi} 1.1.5  1.1.4  1.1.3  1.1.2  1.1.1  1.1"
# export v_ompi="${v_ompi} 1.0.2  1.0.1  1.0"

census=( ${v_ompi} )
echo "${#census[@]} versions of Open MPI are loaded"
# echo "latest version   = ${v_ompi[1]}"
# echo "earliest version = ${v_ompi[-1]}"
#
# for v in ${v_ompi}; do
#     echo "verion ${v}"
# done

# dantopa@ccscs4.lanl.gov:spack.current.ccscs4 $ date
# Tue May  8 16:23:34 MDT 2018

# dantopa@ccscs4.lanl.gov:spack.current.ccscs4 $ pwd
# /scratch/dantopa/spack.current.ccscs4

# dantopa@ccscs4.lanl.gov:spack.current.ccscs4 $ spack versions openmpi
# ==> Warning: Spack will not check SSL certificates. You need to update your Python to enable certificate verification.
# ==> Warning: Spack will not check SSL certificates. You need to update your Python to enable certificate verification.
# ==> Safe versions (already checksummed):
#   3.0.1  2.1.2  2.0.4  2.0.1   1.10.6  1.10.3  1.10.0  1.8.6  1.8.3  1.8    1.7.3  1.7    1.6.3  1.6    1.5.3  1.5    1.4.3  1.4    1.3.2  1.2.9  1.2.6  1.2.3  1.2    1.1.3  1.1    1.0
#   3.0.0  2.1.1  2.0.3  2.0.0   1.10.5  1.10.2  1.8.8   1.8.5  1.8.2  1.7.5  1.7.2  1.6.5  1.6.2  1.5.5  1.5.2  1.4.5  1.4.2  1.3.4  1.3.1  1.2.8  1.2.5  1.2.2  1.1.5  1.1.2  1.0.2
#   2.1.3  2.1.0  2.0.2  1.10.7  1.10.4  1.10.1  1.8.7   1.8.4  1.8.1  1.7.4  1.7.1  1.6.4  1.6.1  1.5.4  1.5.1  1.4.4  1.4.1  1.3.3  1.3    1.2.7  1.2.4  1.2.1  1.1.4  1.1.1  1.0.1
# ==> Remote versions (not yet checksummed):
#   3.1.0  3.0.1rc4  3.0.1rc3  3.0.1rc2  3.0.0rc5
