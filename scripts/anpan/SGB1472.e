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
Dropping 12392 samples from the metadata (out of 12870 in total) not present in the tree.
Plotting correlation matrix...
Prior scale on covariate effects aren't specified. Setting to 1 / (1 standard deviation) for each centered covariate. These values are:

    linear_term prior_sd
 1:  countryAUT   21.863
 2:  countryCHN    6.385
 3:  countryCMR    3.997
 4:  countryCOL   12.649
 5:  countryDEU   15.476
 6:  countryDNK    4.767
 7:  countryEST   21.863
 8:  countryETH    7.787
 9:  countryFJI    3.455
10:  countryFRA    9.819
11:  countryGBR    5.394
12:  countryGHA    4.989
13:  countryGNB    3.835
14:  countryIDN   21.863
15:  countryIND    6.980
16:  countryIRL    6.662
17:  countryISR    3.997
18:  countryITA    8.316
19:  countryJPN   15.476
20:  countryKAZ    3.997
21:  countryKOR   10.966
22:  countryLUX    9.819
23:  countryMDG    5.248
24:  countryMNG    4.056
25:  countryNLD    3.785
26:  countryPER    7.350
27:  countrySLV    6.385
28:  countrySWE   12.649
29:  countryTZA    3.421
30:  countryUSA    5.394
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
Chain 1 Exception: gamma_lpdf: Random variable is 0, but must be positive finite! (in '/tmp/RtmpiAe9mj/model-a9322f6cef67.stan', line 42, column 2 to column 93)
Chain 1 If this warning occurs sporadically, such as for highly constrained variable types like covariance matrices, then the sampler is fine,
Chain 1 but if this warning occurs often then your model may be either severely ill-conditioned or misspecified.
Chain 1 
Chain 1 Informational Message: The current Metropolis proposal is about to be rejected because of the following issue:
Chain 1 Exception: gamma_lpdf: Random variable is 0, but must be positive finite! (in '/tmp/RtmpiAe9mj/model-a9322f6cef67.stan', line 42, column 2 to column 93)
Chain 1 If this warning occurs sporadically, such as for highly constrained variable types like covariance matrices, then the sampler is fine,
Chain 1 but if this warning occurs often then your model may be either severely ill-conditioned or misspecified.
Chain 1 
Chain 2 Informational Message: The current Metropolis proposal is about to be rejected because of the following issue:
Chain 2 Exception: normal_id_glm_lpdf: Scale vector is inf, but must be positive finite! (in '/tmp/RtmpiAe9mj/model-a9322f6cef67.stan', line 38, column 2 to column 62)
Chain 2 If this warning occurs sporadically, such as for highly constrained variable types like covariance matrices, then the sampler is fine,
Chain 2 but if this warning occurs often then your model may be either severely ill-conditioned or misspecified.
Chain 2 
Chain 3 Informational Message: The current Metropolis proposal is about to be rejected because of the following issue:
Chain 3 Exception: normal_id_glm_lpdf: Scale vector is inf, but must be positive finite! (in '/tmp/RtmpiAe9mj/model-a9322f6cef67.stan', line 38, column 2 to column 62)
Chain 3 If this warning occurs sporadically, such as for highly constrained variable types like covariance matrices, then the sampler is fine,
Chain 3 but if this warning occurs often then your model may be either severely ill-conditioned or misspecified.
Chain 3 
Chain 4 Informational Message: The current Metropolis proposal is about to be rejected because of the following issue:
Chain 4 Exception: normal_id_glm_lpdf: Scale vector is 0, but must be positive finite! (in '/tmp/RtmpiAe9mj/model-a9322f6cef67.stan', line 38, column 2 to column 62)
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
Chain 4 Exception: normal_id_glm_lpdf: Scale vector is 0, but must be positive finite! (in '/tmp/RtmpiAe9mj/model-a93277bcb82e.stan', line 27, column 2 to column 82)
Chain 4 If this warning occurs sporadically, such as for highly constrained variable types like covariance matrices, then the sampler is fine,
Chain 4 but if this warning occurs often then your model may be either severely ill-conditioned or misspecified.
Chain 4 
Chain 4 Informational Message: The current Metropolis proposal is about to be rejected because of the following issue:
Chain 4 Exception: normal_id_glm_lpdf: Matrix of independent variables is inf, but must be finite! (in '/tmp/RtmpiAe9mj/model-a93277bcb82e.stan', line 27, column 2 to column 82)
Chain 4 If this warning occurs sporadically, such as for highly constrained variable types like covariance matrices, then the sampler is fine,
Chain 4 but if this warning occurs often then your model may be either severely ill-conditioned or misspecified.
Chain 4 
(3/4) Evaluating loo comparison.
- 0/2 preparing loo inputs
- 1/2 precomputing conditional covariance arrays
- 2/2 computing integrated importance weights for loo CV
loo comparison: 
The phylogenetic model seems to fit better, but the difference doesn't seem clear (less than 2 standard errors difference in ELPD).
(4/4) Running diagnostics:
Warning messages:
1: In RColorBrewer::brewer.pal(n, pal) :
  n too large, allowed maximum for palette Set1 is 9
Returning the palette you asked for with that many colors

2: Some Pareto k diagnostic values are too high. See help('pareto-k-diagnostic') for details.
 
3: Some Pareto k diagnostic values are too high. See help('pareto-k-diagnostic') for details.
 
Dropping 12392 samples from the metadata (out of 12870 in total) not present in the tree.
