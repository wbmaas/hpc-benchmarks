#!/bin/bash

export OMP_PROC_BIND=CLOSE
export OMP_PLACES=CORES

for nt in 2 4 8 12 16 
do
	echo "Running with $nt threads"
	export OMP_NUM_THREADS=$nt
	for iter in 1 2 3
	do
		./lulesh2.0 -i 5000 -s 50 >> out/lulesh.$nt.txt
	done
done

