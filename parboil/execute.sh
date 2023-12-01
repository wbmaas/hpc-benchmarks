#!/bin/bash

export OMP_PROC_BIND=close
export OMP_PLACES=cores

./parboil clean bfs
./parboil compile bfs omp_base
./parboil clean lbm
./parboil compile lbm omp_cpu

for nt in 2 4 8 12 16 
do
	echo "Running with $nt threads"
	export OMP_NUM_THREADS=$nt
	for iter in 1 2 3
	do
		echo "Running bfs with $nt threads"
		./parboil run bfs omp_base SF >> out/bfs.$nt.txt
		echo "Running lbm with $nt threads"
		./parboil run lbm omp_cpu long >> out/lbm.$nt.txt
	done
done
