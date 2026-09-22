#!/usr/bin/env Rscript
args = commandArgs(trailingOnly=TRUE)
library(anpan)
library(cmdstanr)
check_cmdstan_toolchain()
#install_cmdstan(dir="/shares/CIBIO-Storage/CM/scratch/users/aitor.blancomiguez", cores = 10)
set_cmdstan_path("/shares/CIBIO-Storage/CM/scratch/users/aitor.blancomiguez/cmdstan-2.31.0")
sgb=args[1]
meta_file="/shares/CIBIO-Storage/CM/scratch/users/aitor.blancomiguez/analyses/nw_metanalysis/strainphlan/output/SGB3957/RAxML_bestTree.t__SGB3957.StrainPhlAn3.metadata.tsv"
tree_file=paste("/shares/CIBIO-Storage/CM/scratch/users/aitor.blancomiguez/analyses/nw_metanalysis/strainphlan/output/",sgb,"/RAxML_bestTree.t__",sgb,".StrainPhlAn3.tre", sep="")
tree_post_file=paste("/shares/CIBIO-Storage/CM/scratch/users/aitor.blancomiguez/analyses/nw_metanalysis/strainphlan/output/",sgb,"/RAxML_bestTree.t__",sgb,".StrainPhlAn3.tre.post.nocountry.png", sep="")
metadata=read.csv(meta_file, sep="\t")
result=anpan_pglmm(meta_file=meta_file, tree_file=tree_file, outcome="non_westernized")
result$loo$comparison
png(tree_post_file, width=1500, height=700)
plot_tree_with_post(tree_file = tree_file, meta_file=meta_file, fit = result$pglmm_fit, outcome="non_westernized", labels="sample_id")
dev.off()
