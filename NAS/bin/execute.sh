#!/bin/bash

export OMP_PROC_BIND=close
export OMP_PLACES=cores


for bench in bt.B.x cg.B.x ft.B.x lu.B.x mg.B.x sp.B.x ua.B.x
do

for nt in 2 4 8 12 16 
	do
	echo "Running $bench with $nt threads"
		export OMP_NUM_THREADS=$nt
		for iter in 1 2 3
		do
			./$bench >> out/$bench.$nt.txt
		done
	done
done

