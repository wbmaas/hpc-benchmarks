#!/bin/bash

export OMP_PROC_BIND=CLOSE
export OMP_PLACES=CORES

for nt in 2 4 8 12 16 
do
	echo "Running with $nt threads"
	export OMP_NUM_THREADS=$nt
	for iter in 1 2 3	
	do
		./sc_omp 10 20 5000 65536 65536 500 none output.txt $nt >> out/sc.$nt.txt
	done

done

