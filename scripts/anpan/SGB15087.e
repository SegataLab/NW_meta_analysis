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
Dropping 12438 samples from the metadata (out of 12870 in total) not present in the tree.
Plotting correlation matrix...
Prior scale on covariate effects aren't specified. Setting to 1 / (1 standard deviation) for each centered covariate. These values are:

    linear_term prior_sd
 1:  countryARG   20.785
 2:  countryAUT   20.785
 3:  countryCHN    3.929
 4:  countryCMR    6.642
 5:  countryCOL   12.028
 6:  countryDEU    8.535
 7:  countryDNK    3.336
 8:  countryESP   20.785
 9:  countryETH    6.341
10:  countryFIN   20.785
11:  countryFJI    3.709
12:  countryFRA   14.714
13:  countryGBR    3.070
14:  countryGHA    5.641
15:  countryGNB   20.785
16:  countryIDN   14.714
17:  countryIND   12.028
18:  countryIRL   10.429
19:  countryISR    3.814
20:  countryITA    6.341
21:  countryJPN    9.339
22:  countryKAZ    3.870
23:  countryKOR   20.785
24:  countryLUX   20.785
25:  countryMDG   20.785
26:  countryMNG    4.126
27:  countryNLD    5.641
28:  countryPER    5.847
29:  countrySWE    5.289
30:  countryTZA    4.200
31:  countryUSA    3.929
    linear_term prior_sd



It would be better to set the beta_sd argument based on scientific background knowledge.
(2/4) Fitting model(s).
Init values were only set for a subset of parameters. 
Missing init values for the following parameters:
 - chain 1: beta, centered_cov_intercept, std_phylo_effects
 - chain 2: beta, centered_cov_intercept, std_phylo_effects
 - chain 3: beta, centered_cov_intercept, std_phylo_effects
 - chain 4: beta, centered_cov_intercept, std_phylo_effects

Chain 2 Informational Message: The current Metropolis proposal is about to be rejected because of the following issue:
Chain 2 Exception: gamma_lpdf: Random variable is 0, but must be positive finite! (in '/tmp/RtmpiAe9mj/model-a9322f6cef67.stan', line 42, column 2 to column 93)
Chain 2 If this warning occurs sporadically, such as for highly constrained variable types like covariance matrices, then the sampler is fine,
Chain 2 but if this warning occurs often then your model may be either severely ill-conditioned or misspecified.
Chain 2 
Chain 2 Informational Message: The current Metropolis proposal is about to be rejected because of the following issue:
Chain 2 Exception: gamma_lpdf: Random variable is 0, but must be positive finite! (in '/tmp/RtmpiAe9mj/model-a9322f6cef67.stan', line 42, column 2 to column 93)
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
Chain 4 Exception: normal_id_glm_lpdf: Scale vector is inf, but must be positive finite! (in '/tmp/RtmpiAe9mj/model-a9322f6cef67.stan', line 38, column 2 to column 62)
Chain 4 If this warning occurs sporadically, such as for highly constrained variable types like covariance matrices, then the sampler is fine,
Chain 4 but if this warning occurs often then your model may be either severely ill-conditioned or misspecified.
Chain 4 
Warning: 3 of 4000 (0.0%) transitions ended with a divergence.
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
Chain 1 Informational Message: The current Metropolis proposal is about to be rejected because of the following issue:
Chain 1 Exception: normal_id_glm_lpdf: Scale vector is 0, but must be positive finite! (in '/tmp/RtmpiAe9mj/model-a93277bcb82e.stan', line 27, column 2 to column 82)
Chain 1 If this warning occurs sporadically, such as for highly constrained variable types like covariance matrices, then the sampler is fine,
Chain 1 but if this warning occurs often then your model may be either severely ill-conditioned or misspecified.
Chain 1 
Chain 2 Informational Message: The current Metropolis proposal is about to be rejected because of the following issue:
Chain 2 Exception: normal_id_glm_lpdf: Scale vector is 0, but must be positive finite! (in '/tmp/RtmpiAe9mj/model-a93277bcb82e.stan', line 27, column 2 to column 82)
Chain 2 If this warning occurs sporadically, such as for highly constrained variable types like covariance matrices, then the sampler is fine,
Chain 2 but if this warning occurs often then your model may be either severely ill-conditioned or misspecified.
Chain 2 
Chain 3 Informational Message: The current Metropolis proposal is about to be rejected because of the following issue:
Chain 3 Exception: normal_id_glm_lpdf: Scale vector is 0, but must be positive finite! (in '/tmp/RtmpiAe9mj/model-a93277bcb82e.stan', line 27, column 2 to column 82)
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
The phylogenetic model seems to fit worse, but the difference doesn't seem clear (less than 2 standard errors difference in ELPD).
(4/4) Running diagnostics:
Warning messages:
1: In RColorBrewer::brewer.pal(n, pal) :
  n too large, allowed maximum for palette Set1 is 9
Returning the palette you asked for with that many colors

2: Some Pareto k diagnostic values are too high. See help('pareto-k-diagnostic') for details.
 
3: Some Pareto k diagnostic values are too high. See help('pareto-k-diagnostic') for details.
 
Dropping 12438 samples from the metadata (out of 12870 in total) not present in the tree.
