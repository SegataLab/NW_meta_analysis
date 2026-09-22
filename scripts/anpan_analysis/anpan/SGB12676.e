This is anpan version 0.3.0
- Get help: Visit the biobakery help forum at https://forum.biobakery.org/
- Parallelize: Before calling anpan, run future::plan() in a way that's appropriate for your system.
- Show progress: Before calling anpan, run library(progressr); handlers(global=TRUE)
This is cmdstanr version 0.5.3
- CmdStanR documentation and vignettes: mc-stan.org/cmdstanr
- Use set_cmdstan_path() to set the path to CmdStan
- Use install_cmdstan() to install CmdStan
The C++ toolchain required for CmdStan is setup properly!
CmdStan path set to: /shares/CIBIO-Storage/CM/scratch/users/aitor.blancomiguez/cmdstan-2.31.0
(1/4) Checking inputs.
Dropping 5 tips from the tree (out of 105) not present in the metadata.
Dropping 12770 samples from the metadata (out of 12870 in total) not present in the tree.
Error in anpan_pglmm(meta_file = meta_file, tree_file = tree_file, outcome = "non_westernized",  : 
  Could not compute the Cholesky factorization of the correlation matrix. It's probably not positive definite up to numerical precision. Try olap_tree_and_meta() and get_cor_mat() to examine the correlation matrix directly.
Execution halted
