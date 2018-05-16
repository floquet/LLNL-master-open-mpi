 #!/bin/bash
 #SBATCH -N 16
 #SBATCH -A dantopa

printf '%s\n' "+++  $(pwd)/${BASH_SOURCE[0]} $(date)"

bench_marks="osu_bibw osu_latency  osu_latency_mt  osu_mbw_mr  osu_multi_lat"

dir_osu=${vol}"osu-micro-benchmarks-master/mpi/pt2pt/"

cd ${dir_osu}
mkdir -p results

SECONDS=0

for b in ${bench_marks}; do
    echo ""; echo "running ${b}..."
    echo "mpirun -np 2 -N 1 ${b} > ${dir_osu}results/${b}.txt"
          mpirun -np 2 -N 1 ${b} > ${dir_osu}results/${b}.txt
done

echo ""
echo "elapsed time for all Open MPI benchmarks = ${SECONDS} s"
