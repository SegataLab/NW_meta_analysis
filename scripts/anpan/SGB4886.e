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
Dropping 12192 samples from the metadata (out of 12870 in total) not present in the tree.
Plotting correlation matrix...
Prior scale on covariate effects aren't specified. Setting to 1 / (1 standard deviation) for each centered covariate. These values are:

    linear_term prior_sd
 1:  countryARG    9.886
 2:  countryCAN   13.048
 3:  countryCHN    8.731
 4:  countryCMR    5.303
 5:  countryDEU    9.886
 6:  countryDNK    3.573
 7:  countryESP   13.048
 8:  countryEST   26.038
 9:  countryETH    9.254
10:  countryFIN   13.048
11:  countryFJI    4.579
12:  countryGBR    2.918
13:  countryGHA    9.886
14:  countryGNB    8.731
15:  countryIND   10.670
16:  countryIRL    7.287
17:  countryISR    3.349
18:  countryITA    7.287
19:  countryJPN   18.426
20:  countryKAZ    4.014
21:  countryLUX   26.038
22:  countryMDG    9.886
23:  countryMNG    6.391
24:  countryNLD    3.205
25:  countryPER   26.038
26:  countryRUS   26.038
27:  countrySWE    6.794
28:  countryTZA    6.055
29:  countryUSA    2.585
    linear_term prior_sd



It would be better to set the beta_sd argument based on scientific background knowledge.
(2/4) Fitting model(s).
Init values were only set for a subset of parameters. 
Missing init values for the following parameters:
 - chain 1: beta, centered_cov_intercept, std_phylo_effects
 - chain 2: beta, centered_cov_intercept, std_phylo_effects
 - chain 3: beta, centered_cov_intercept, std_phylo_effects
 - chain 4: beta, centered_cov_intercept, std_phylo_effects

Chain 1 Informational Message: The current Metropolis proposal is about to be rejected because of the following issue:
Chain 1 Exception: normal_id_glm_lpdf: Scale vector is inf, but must be positive finite! (in '/tmp/RtmpiAe9mj/model-a9322f6cef67.stan', line 38, column 2 to column 62)
Chain 1 If this warning occurs sporadically, such as for highly constrained variable types like covariance matrices, then the sampler is fine,
Chain 1 but if this warning occurs often then your model may be either severely ill-conditioned or misspecified.
Chain 1 
Chain 1 Informational Message: The current Metropolis proposal is about to be rejected because of the following issue:
Chain 1 Exception: normal_id_glm_lpdf: Scale vector is inf, but must be positive finite! (in '/tmp/RtmpiAe9mj/model-a9322f6cef67.stan', line 38, column 2 to column 62)
Chain 1 If this warning occurs sporadically, such as for highly constrained variable types like covariance matrices, then the sampler is fine,
Chain 1 but if this warning occurs often then your model may be either severely ill-conditioned or misspecified.
Chain 1 
Chain 1 Informational Message: The current Metropolis proposal is about to be rejected because of the following issue:
Chain 1 Exception: normal_id_glm_lpdf: Scale vector is inf, but must be positive finite! (in '/tmp/RtmpiAe9mj/model-a9322f6cef67.stan', line 38, column 2 to column 62)
Chain 1 If this warning occurs sporadically, such as for highly constrained variable types like covariance matrices, then the sampler is fine,
Chain 1 but if this warning occurs often then your model may be either severely ill-conditioned or misspecified.
Chain 1 
Chain 1 Informational Message: The current Metropolis proposal is about to be rejected because of the following issue:
Chain 1 Exception: normal_id_glm_lpdf: Scale vector is inf, but must be positive finite! (in '/tmp/RtmpiAe9mj/model-a9322f6cef67.stan', line 38, column 2 to column 62)
Chain 1 If this warning occurs sporadically, such as for highly constrained variable types like covariance matrices, then the sampler is fine,
Chain 1 but if this warning occurs often then your model may be either severely ill-conditioned or misspecified.
Chain 1 
Chain 2 Informational Message: The current Metropolis proposal is about to be rejected because of the following issue:
Chain 2 Exception: normal_id_glm_lpdf: Scale vector is inf, but must be positive finite! (in '/tmp/RtmpiAe9mj/model-a9322f6cef67.stan', line 38, column 2 to column 62)
Chain 2 If this warning occurs sporadically, such as for highly constrained variable types like covariance matrices, then the sampler is fine,
Chain 2 but if this warning occurs often then your model may be either severely ill-conditioned or misspecified.
Chain 2 
Chain 2 Informational Message: The current Metropolis proposal is about to be rejected because of the following issue:
Chain 2 Exception: normal_id_glm_lpdf: Scale vector is inf, but must be positive finite! (in '/tmp/RtmpiAe9mj/model-a9322f6cef67.stan', line 38, column 2 to column 62)
Chain 2 If this warning occurs sporadically, such as for highly constrained variable types like covariance matrices, then the sampler is fine,
Chain 2 but if this warning occurs often then your model may be either severely ill-conditioned or misspecified.
Chain 2 
Chain 2 Informational Message: The current Metropolis proposal is about to be rejected because of the following issue:
Chain 2 Exception: normal_id_glm_lpdf: Matrix of independent variables is inf, but must be finite! (in '/tmp/RtmpiAe9mj/model-a9322f6cef67.stan', line 38, column 2 to column 62)
Chain 2 If this warning occurs sporadically, such as for highly constrained variable types like covariance matrices, then the sampler is fine,
Chain 2 but if this warning occurs often then your model may be either severely ill-conditioned or misspecified.
Chain 2 
Chain 3 Informational Message: The current Metropolis proposal is about to be rejected because of the following issue:
Chain 3 Exception: normal_id_glm_lpdf: Scale vector is inf, but must be positive finite! (in '/tmp/RtmpiAe9mj/model-a9322f6cef67.stan', line 38, column 2 to column 62)
Chain 3 If this warning occurs sporadically, such as for highly constrained variable types like covariance matrices, then the sampler is fine,
Chain 3 but if this warning occurs often then your model may be either severely ill-conditioned or misspecified.
Chain 3 
Chain 3 Informational Message: The current Metropolis proposal is about to be rejected because of the following issue:
Chain 3 Exception: normal_id_glm_lpdf: Scale vector is inf, but must be positive finite! (in '/tmp/RtmpiAe9mj/model-a9322f6cef67.stan', line 38, column 2 to column 62)
Chain 3 If this warning occurs sporadically, such as for highly constrained variable types like covariance matrices, then the sampler is fine,
Chain 3 but if this warning occurs often then your model may be either severely ill-conditioned or misspecified.
Chain 3 
Chain 3 Informational Message: The current Metropolis proposal is about to be rejected because of the following issue:
Chain 3 Exception: normal_id_glm_lpdf: Scale vector is inf, but must be positive finite! (in '/tmp/RtmpiAe9mj/model-a9322f6cef67.stan', line 38, column 2 to column 62)
Chain 3 If this warning occurs sporadically, such as for highly constrained variable types like covariance matrices, then the sampler is fine,
Chain 3 but if this warning occurs often then your model may be either severely ill-conditioned or misspecified.
Chain 3 
Chain 3 Informational Message: The current Metropolis proposal is about to be rejected because of the following issue:
Chain 3 Exception: normal_id_glm_lpdf: Scale vector is inf, but must be positive finite! (in '/tmp/RtmpiAe9mj/model-a9322f6cef67.stan', line 38, column 2 to column 62)
Chain 3 If this warning occurs sporadically, such as for highly constrained variable types like covariance matrices, then the sampler is fine,
Chain 3 but if this warning occurs often then your model may be either severely ill-conditioned or misspecified.
Chain 3 
Chain 4 Informational Message: The current Metropolis proposal is about to be rejected because of the following issue:
Chain 4 Exception: normal_id_glm_lpdf: Scale vector is inf, but must be positive finite! (in '/tmp/RtmpiAe9mj/model-a9322f6cef67.stan', line 38, column 2 to column 62)
Chain 4 If this warning occurs sporadically, such as for highly constrained variable types like covariance matrices, then the sampler is fine,
Chain 4 but if this warning occurs often then your model may be either severely ill-conditioned or misspecified.
Chain 4 
Chain 4 Informational Message: The current Metropolis proposal is about to be rejected because of the following issue:
Chain 4 Exception: normal_id_glm_lpdf: Scale vector is inf, but must be positive finite! (in '/tmp/RtmpiAe9mj/model-a9322f6cef67.stan', line 38, column 2 to column 62)
Chain 4 If this warning occurs sporadically, such as for highly constrained variable types like covariance matrices, then the sampler is fine,
Chain 4 but if this warning occurs often then your model may be either severely ill-conditioned or misspecified.
Chain 4 
Chain 4 Informational Message: The current Metropolis proposal is about to be rejected because of the following issue:
Chain 4 Exception: normal_id_glm_lpdf: Scale vector is inf, but must be positive finite! (in '/tmp/RtmpiAe9mj/model-a9322f6cef67.stan', line 38, column 2 to column 62)
Chain 4 If this warning occurs sporadically, such as for highly constrained variable types like covariance matrices, then the sampler is fine,
Chain 4 but if this warning occurs often then your model may be either severely ill-conditioned or misspecified.
Chain 4 
Chain 4 Informational Message: The current Metropolis proposal is about to be rejected because of the following issue:
Chain 4 Exception: gamma_lpdf: Random variable is 0, but must be positive finite! (in '/tmp/RtmpiAe9mj/model-a9322f6cef67.stan', line 42, column 2 to column 93)
Chain 4 If this warning occurs sporadically, such as for highly constrained variable types like covariance matrices, then the sampler is fine,
Chain 4 but if this warning occurs often then your model may be either severely ill-conditioned or misspecified.
Chain 4 
Warning: 1 of 4000 (0.0%) transitions ended with a divergence.
See https://mc-stan.org/misc/warnings for details.

Init values were only set for a subset of parameters. 
Missing init values for the following parameters:
 - chain 1: beta, centered_cov_intercept
 - chain 2: beta, centered_cov_intercept
 - chain 3: beta, centered_cov_intercept
 - chain 4: beta, centered_cov_intercept

Chain 1 Informational Message: The current Metropolis proposal is about to be rejected because of the following issue:
Chain 1 Exception: normal_id_glm_lpdf: Scale vector is inf, but must be positive finite! (in '/tmp/RtmpiAe9mj/model-a93277bcb82e.stan', line 27, column 2 to column 82)
Chain 1 If this warning occurs sporadically, such as for highly constrained variable types like covariance matrices, then the sampler is fine,
Chain 1 but if this warning occurs often then your model may be either severely ill-conditioned or misspecified.
Chain 1 
Chain 1 Informational Message: The current Metropolis proposal is about to be rejected because of the following issue:
Chain 1 Exception: normal_id_glm_lpdf: Scale vector is inf, but must be positive finite! (in '/tmp/RtmpiAe9mj/model-a93277bcb82e.stan', line 27, column 2 to column 82)
Chain 1 If this warning occurs sporadically, such as for highly constrained variable types like covariance matrices, then the sampler is fine,
Chain 1 but if this warning occurs often then your model may be either severely ill-conditioned or misspecified.
Chain 1 
Chain 2 Informational Message: The current Metropolis proposal is about to be rejected because of the following issue:
Chain 2 Exception: normal_id_glm_lpdf: Scale vector is inf, but must be positive finite! (in '/tmp/RtmpiAe9mj/model-a93277bcb82e.stan', line 27, column 2 to column 82)
Chain 2 If this warning occurs sporadically, such as for highly constrained variable types like covariance matrices, then the sampler is fine,
Chain 2 but if this warning occurs often then your model may be either severely ill-conditioned or misspecified.
Chain 2 
Chain 3 Informational Message: The current Metropolis proposal is about to be rejected because of the following issue:
Chain 3 Exception: normal_id_glm_lpdf: Scale vector is inf, but must be positive finite! (in '/tmp/RtmpiAe9mj/model-a93277bcb82e.stan', line 27, column 2 to column 82)
Chain 3 If this warning occurs sporadically, such as for highly constrained variable types like covariance matrices, then the sampler is fine,
Chain 3 but if this warning occurs often then your model may be either severely ill-conditioned or misspecified.
Chain 3 
Chain 4 Informational Message: The current Metropolis proposal is about to be rejected because of the following issue:
Chain 4 Exception: normal_id_glm_lpdf: Scale vector is inf, but must be positive finite! (in '/tmp/RtmpiAe9mj/model-a93277bcb82e.stan', line 27, column 2 to column 82)
Chain 4 If this warning occurs sporadically, such as for highly constrained variable types like covariance matrices, then the sampler is fine,
Chain 4 but if this warning occurs often then your model may be either severely ill-conditioned or misspecified.
Chain 4 
(3/4) Evaluating loo comparison.
- 0/2 preparing loo inputs
- 1/2 precomputing conditional covariance arrays
- 2/2 computing integrated importance weights for loo CV
loo comparison: 
The phylogenetic model seems to fit worse, and the difference seems clear (more than 2 standard errors difference in ELPD). However the ELPD difference is less than 4, so the difference is small.
(4/4) Running diagnostics:
Warning messages:
1: In RColorBrewer::brewer.pal(n, pal) :
  n too large, allowed maximum for palette Set1 is 9
Returning the palette you asked for with that many colors

2: Some Pareto k diagnostic values are too high. See help('pareto-k-diagnostic') for details.
 
3: Some Pareto k diagnostic values are too high. See help('pareto-k-diagnostic') for details.
 
Dropping 12192 samples from the metadata (out of 12870 in total) not present in the tree.
