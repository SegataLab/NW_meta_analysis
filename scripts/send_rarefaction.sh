#!/bin/bash
db_version=mpa_vJan21_CHOCOPhlAnSGB_202103
for f in RubelMA_2020 LokmerA_2019 SmitsSA_2017 RampelliS_2015 CM_tanzania CM_tanzania2 CM_tanzania_TB_DAR CM_colombia Obregon-TitoAJ_2015
do for s in  /shares/CIBIO-Storage/CM/scratch/data/meta/${f}/metaphlan-4.beta.1_vJan21_CHOCOPhlAnSGB_202103/*
do sample=$(basename $s)
echo $s
if [ -s ${s}/${sample}_2M_.tsv ]
then
    echo "Already processed"
else
    qsub -q CIBIO_cpuQ -l mem=15GB -o ${sample}.o -e ${sample}.e -l ncpus=1 -v db_version=${db_version},bt2=${s}/$sample.bowtie2.bz2,out=${s}/${sample}_2M.tsv,rarefaction=2000000 /shares/CIBIO-Storage/CM/scratch/users/aitor.blancomiguez/hpc_scripts/metaphlan4_rarefaction.pbs
fi
done 
done
