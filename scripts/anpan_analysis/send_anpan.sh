#!/bin/bash
queue=short_cpuQ
for f in /shares/CIBIO-Storage/CM/scratch/users/aitor.blancomiguez/analyses/nw_metanalysis/strainphlan/output/SGB*; do
	sgb=$(basename $f)
	echo $sgb
#	qsub -l mem=15GB -l ncpus=10 -v sgb=$sgb -q $queue -o ./anpan/${sgb}.o -e ./anpan/${sgb}.e -N anpan_${sgb} ./send_anpan.pbs
#	exit 0
done
