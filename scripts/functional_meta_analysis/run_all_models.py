#!/usr/bin/env python

import pandas as pd
import numpy as np
from scipy import stats as sts
import statsmodels.api as sm
import statsmodels.formula.api as smf
import os, sys
sys.path.append("/shares/CIBIO-Storage/CM/scratch/users/paolo.manghi/metaSinC/metasinc/")
from meta_analyses import correlation_meta_analysis
# ++generalized_meta_analysis as gma # effects, variances, study_pvalues, study_names, n_controls, n_cases, response_var, "DL", None

##                    nSGB, ySGB
##contingency = W     [ [ xx, xx   ]
##              NW      [ yy, yy ] ]

def measure_differential_genes(dataframe, genes, SGBs):
    res = {}
    for gene in genes:
        res[gene] = {}
        ctm = np.array([[0., 0.], [0., 0.]], dtype=np.float64)
        for SGB in SGBs:
            this = dataframe.loc[ ["Lifestyle", gene], dataframe.loc["SGB"]==SGB ]
            nw = this.loc[ gene, this.loc["Lifestyle"] == "non-Westernized"].values.astype(float)
            ww = this.loc[ gene, this.loc["Lifestyle"] == "Westernized"].values.astype(float)

            pnw = np.count_nonzero(nw)
            pww = np.count_nonzero(ww)

            ctm[ 0,0 ] = len(ww) - pww
            ctm[ 0,1 ] = len(nw) - pnw
            ctm[ 1,0 ] = pnw
            ctm[ 1,1 ] = pww

            if (np.sum(ctm[0, :])>0) and (np.sum(ctm[1, :])>0):
 
                chi_obj = sts.chi2_contingency(ctm)
 
                #ctm += 1
                print(ctm)

                #_,pv = sts.fisher_exact(ctm-1)
                #OR_obj = sts.contingency.odds_ratio(ctm.astype(int))
                #OR = OR_obj.statistic
                #LOR = np.log(OR)

                chi_st, pv = chi_obj.statistic, chi_obj.pvalue
                chi = np.sqrt(chi_st / np.sum(ctm-1))
                print(chi, chi_st, pv)

                if chi == chi:
                    ##se = np.sqrt((ctm[:,0]*ctm[:,1]*ctm[0,:]*ctm[1,:])/(np.sum(ctm)*np.sum(ctm)*(np.sum(ctm)-1)))
                    ##se = np.sqrt(1/(np.sum(ctm)-3))
                    n = np.sum(ctm)
                    res[ gene ][ SGB ] = [ chi_st, chi, pv, n ]
                    ##print(gene, " => ", SGB, " || ", [ OR, LOR, pv, se ])
    return res

def meta_analysis( res_genes, genes, SGBs, outfile  ):
    outfilew = open(outfile, "w")

    # ++ Write header ++
    #outfilew.write("gene\tmeta-lor\tmeta-std\tmeta-pval\t")
    outfilew.write("gene\tmeta-chi\tmeta-n\tmeta-pval\t")

    for sgb in SGBs:
        for suff in ["chi", "n", "pval"]:
            outfilew.write(sgb + "_" + suff + "\t")
    outfilew.write("\n")

    # ++ Compute and write meta-analysis for each ++
    genes = sorted(list(res_genes.keys()))

    for gene in genes:
        sgbs = [ sgb for sgb in SGBs if sgb in res_genes[gene] ]
        if len(sgbs):
            ma = correlation_meta_analysis(\
                [ res_genes[gene][sgb][1] for sgb in sgbs ], \
                [ res_genes[gene][sgb][3] for sgb in sgbs ], \
                [ res_genes[gene][sgb][2] for sgb in sgbs ], \
                sgbs, \
                gene, "PM")
  
            if ma.RE == ma.RE:
                outfilew.write(gene + "\t" + str(ma.RE) + "\t" + str(ma.stdErr) + "\t" + str(ma.Pval) + "\t")
                for sgb in SGBs:
                    if sgb in sgbs:
                        outfilew.write( str(res_genes[gene][sgb][1]) + "\t" + str(res_genes[gene][sgb][3]) + "\t" + str(res_genes[gene][sgb][2]) + "\t")
                    else:
                        outfilew.write( "NA\tNA\tNA\t" )
 
                outfilew.write("\n")
    outfilew.close()

def main(datatable_file):
    datatable = pd.read_csv(datatable_file, sep="\t", header=0, index_col=0, low_memory=False)
    print(datatable)
    SGBs = datatable.loc["SGB"].unique().tolist()
    genes = [ i for i in datatable.index if i.startswith("gene__") ]

    meta_analysis( measure_differential_genes(datatable, genes, SGBs), genes, SGBs, datatable_file.replace("db_tables", "metaanalyses_results") )

if __name__ == "__main__":
    main(sys.argv[1])
