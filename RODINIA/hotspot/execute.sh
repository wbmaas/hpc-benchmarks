#!/bin/bash

export OMP_PROC_BIND=CLOSE
export OMP_PLACES=CORES

for nt in 2 4 8 12 16 
do
	echo "Running with $nt threads"
	export OMP_NUM_THREADS=$nt
	for iter in 1 2 3
	do
		./hotspot 1024 1024 100000 $nt ../data/hotspot/temp_1024 ../data/hotspot/power_1024 output.out >> out/hotspot.$nt.txt
	done


done


