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
Dropping 10077 samples from the metadata (out of 12870 in total) not present in the tree.
Plotting correlation matrix...
Prior scale on covariate effects aren't specified. Setting to 1 / (1 standard deviation) for each centered covariate. These values are:

    linear_term prior_sd
 1:  countryARG   16.739
 2:  countryAUT   52.849
 3:  countryCAN   13.248
 4:  countryCHN    2.907
 5:  countryCMR   30.523
 6:  countryDEU    6.185
 7:  countryDNK    5.232
 8:  countryESP   11.574
 9:  countryEST   14.689
10:  countryFIN    7.071
11:  countryFJI   12.495
12:  countryFRA   14.689
13:  countryGBR    2.612
14:  countryGHA   17.642
15:  countryIND   19.996
16:  countryIRL   13.248
17:  countryISR    3.046
18:  countryITA    7.773
19:  countryJPN    4.492
20:  countryKAZ   11.310
21:  countryKOR   18.708
22:  countryLUX   15.963
23:  countryMNG   12.164
24:  countryNLD    4.507
25:  countryRUS   11.574
26:  countrySLV   52.849
27:  countrySWE    5.788
28:  countryTZA   14.689
29:  countryUSA    2.325
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
Chain 1 Exception: normal_id_glm_lpdf: Scale vector is 0, but must be positive finite! (in '/tmp/RtmpiAe9mj/model-a9322f6cef67.stan', line 38, column 2 to column 62)
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
Chain 2 Exception: gamma_lpdf: Random variable is 0, but must be positive finite! (in '/tmp/RtmpiAe9mj/model-a9322f6cef67.stan', line 42, column 2 to column 93)
Chain 2 If this warning occurs sporadically, such as for highly constrained variable types like covariance matrices, then the sampler is fine,
Chain 2 but if this warning occurs often then your model may be either severely ill-conditioned or misspecified.
Chain 2 
Chain 2 Informational Message: The current Metropolis proposal is about to be rejected because of the following issue:
Chain 2 Exception: normal_id_glm_lpdf: Scale vector is 0, but must be positive finite! (in '/tmp/RtmpiAe9mj/model-a9322f6cef67.stan', line 38, column 2 to column 62)
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
Chain 4 Informational Message: The current Metropolis proposal is about to be rejected because of the following issue:
Chain 4 Exception: normal_id_glm_lpdf: Scale vector is inf, but must be positive finite! (in '/tmp/RtmpiAe9mj/model-a9322f6cef67.stan', line 38, column 2 to column 62)
Chain 4 If this warning occurs sporadically, such as for highly constrained variable types like covariance matrices, then the sampler is fine,
Chain 4 but if this warning occurs often then your model may be either severely ill-conditioned or misspecified.
Chain 4 
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
Chain 1 Informational Message: The current Metropolis proposal is about to be rejected because of the following issue:
Chain 1 Exception: normal_id_glm_lpdf: Scale vector is 0, but must be positive finite! (in '/tmp/RtmpiAe9mj/model-a93277bcb82e.stan', line 27, column 2 to column 82)
Chain 1 If this warning occurs sporadically, such as for highly constrained variable types like covariance matrices, then the sampler is fine,
Chain 1 but if this warning occurs often then your model may be either severely ill-conditioned or misspecified.
Chain 1 
Chain 2 Informational Message: The current Metropolis proposal is about to be rejected because of the following issue:
Chain 2 Exception: normal_id_glm_lpdf: Scale vector is inf, but must be positive finite! (in '/tmp/RtmpiAe9mj/model-a93277bcb82e.stan', line 27, column 2 to column 82)
Chain 2 If this warning occurs sporadically, such as for highly constrained variable types like covariance matrices, then the sampler is fine,
Chain 2 but if this warning occurs often then your model may be either severely ill-conditioned or misspecified.
Chain 2 
Chain 2 Informational Message: The current Metropolis proposal is about to be rejected because of the following issue:
Chain 2 Exception: normal_id_glm_lpdf: Scale vector is inf, but must be positive finite! (in '/tmp/RtmpiAe9mj/model-a93277bcb82e.stan', line 27, column 2 to column 82)
Chain 2 If this warning occurs sporadically, such as for highly constrained variable types like covariance matrices, then the sampler is fine,
Chain 2 but if this warning occurs often then your model may be either severely ill-conditioned or misspecified.
Chain 2 
Chain 2 Informational Message: The current Metropolis proposal is about to be rejected because of the following issue:
Chain 2 Exception: normal_id_glm_lpdf: Scale vector is inf, but must be positive finite! (in '/tmp/RtmpiAe9mj/model-a93277bcb82e.stan', line 27, column 2 to column 82)
Chain 2 If this warning occurs sporadically, such as for highly constrained variable types like covariance matrices, then the sampler is fine,
Chain 2 but if this warning occurs often then your model may be either severely ill-conditioned or misspecified.
Chain 2 
Chain 2 Informational Message: The current Metropolis proposal is about to be rejected because of the following issue:
Chain 2 Exception: normal_id_glm_lpdf: Scale vector is inf, but must be positive finite! (in '/tmp/RtmpiAe9mj/model-a93277bcb82e.stan', line 27, column 2 to column 82)
Chain 2 If this warning occurs sporadically, such as for highly constrained variable types like covariance matrices, then the sampler is fine,
Chain 2 but if this warning occurs often then your model may be either severely ill-conditioned or misspecified.
Chain 2 
Chain 2 Informational Message: The current Metropolis proposal is about to be rejected because of the following issue:
Chain 2 Exception: normal_id_glm_lpdf: Scale vector is inf, but must be positive finite! (in '/tmp/RtmpiAe9mj/model-a93277bcb82e.stan', line 27, column 2 to column 82)
Chain 2 If this warning occurs sporadically, such as for highly constrained variable types like covariance matrices, then the sampler is fine,
Chain 2 but if this warning occurs often then your model may be either severely ill-conditioned or misspecified.
Chain 2 
Chain 3 Informational Message: The current Metropolis proposal is about to be rejected because of the following issue:
Chain 3 Exception: normal_id_glm_lpdf: Scale vector is 0, but must be positive finite! (in '/tmp/RtmpiAe9mj/model-a93277bcb82e.stan', line 27, column 2 to column 82)
Chain 3 If this warning occurs sporadically, such as for highly constrained variable types like covariance matrices, then the sampler is fine,
Chain 3 but if this warning occurs often then your model may be either severely ill-conditioned or misspecified.
Chain 3 
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
Chain 4 Informational Message: The current Metropolis proposal is about to be rejected because of the following issue:
Chain 4 Exception: normal_id_glm_lpdf: Scale vector is inf, but must be positive finite! (in '/tmp/RtmpiAe9mj/model-a93277bcb82e.stan', line 27, column 2 to column 82)
Chain 4 If this warning occurs sporadically, such as for highly constrained variable types like covariance matrices, then the sampler is fine,
Chain 4 but if this warning occurs often then your model may be either severely ill-conditioned or misspecified.
Chain 4 
Chain 4 Informational Message: The current Metropolis proposal is about to be rejected because of the following issue:
Chain 4 Exception: normal_id_glm_lpdf: Scale vector is 0, but must be positive finite! (in '/tmp/RtmpiAe9mj/model-a93277bcb82e.stan', line 27, column 2 to column 82)
Chain 4 If this warning occurs sporadically, such as for highly constrained variable types like covariance matrices, then the sampler is fine,
Chain 4 but if this warning occurs often then your model may be either severely ill-conditioned or misspecified.
Chain 4 
Chain 4 Informational Message: The current Metropolis proposal is about to be rejected because of the following issue:
Chain 4 Exception: normal_id_glm_lpdf: Scale vector is 0, but must be positive finite! (in '/tmp/RtmpiAe9mj/model-a93277bcb82e.stan', line 27, column 2 to column 82)
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
 
Dropping 10077 samples from the metadata (out of 12870 in total) not present in the tree.
