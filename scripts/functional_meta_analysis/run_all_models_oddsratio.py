#!/usr/bin/env python

import pandas as pd
import numpy as np
from scipy import stats as sts
import statsmodels.api as sm
import statsmodels.formula.api as smf
import os, sys
sys.path.append("/shares/CIBIO-Storage/CM/scratch/users/paolo.manghi/metaSinC/metasinc/")
from statsmodels.stats.multitest import multipletests
from meta_analyses import generalized_meta_analysis as gma # effects, variances, study_pvalues, study_names, n_controls, n_cases, response_var, "DL", None

MIN_STUD=5

##                    nSGB, ySGB
##contingency = W     [ [ xx, xx   ]
##              NW      [ yy, yy ] ]

def measure_differential_genes2(dataframe, genes, SGBs):
    res = {}
    for gene in genes:
        res[gene] = {}
        for SGB in SGBs:
            this = dataframe.loc[ ["Lifestyle", "Completeness", "Contamination", gene], dataframe.loc["SGB"]==SGB ].T
            data = this.astype({gene: float, "Lifestyle": str, "Completeness": float, "Contamination": float})
            if (data.loc[data["Lifestyle"]=="non-Westernized", gene].sum()>=25) and (data.loc[data["Lifestyle"]=="Westernized", gene].sum()>=25):
                mod = smf.logit("Q(\"%s\") ~ Lifestyle + Contamination" %gene, data=data)
                mod_fit = mod.fit(method='bfgs')
                print(mod_fit.summary())

                lor = mod_fit.params.loc["Lifestyle[T.non-Westernized]"]
                se =  mod_fit.bse.loc["Lifestyle[T.non-Westernized]"]
                pv =  mod_fit.pvalues.loc["Lifestyle[T.non-Westernized]"]

                if (lor==lor) and (pv==pv):
                    res[ gene ][ SGB ] = [ "-", lor, pv, se ]
    return res
    
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
                #chi_obj = sts.chi2_contingency(ctm) 
                ctm += 1
                print(ctm)

                _,pv = sts.fisher_exact(ctm-1)
                OR_obj = sts.contingency.odds_ratio(ctm.astype(int))
                OR = OR_obj.statistic
                LOR = np.log(OR)

                #chi_st, pv = chi_obj.statistic, chi_obj.pvalue
                #chi = np.sqrt(chi_st / np.sum(ctm-1))
                #print(chi, chi_st, pv)

                if LOR == LOR:
                    se = np.sqrt( (np.sum(ctm[:,0]) * np.sum(ctm[:,1]) * np.sum(ctm[0,:]) * np.sum(ctm[1,:]))/(np.sum(ctm)*np.sum(ctm)*(np.sum(ctm)-1)) )

                    print(LOR, se, pv)

                    ##se = np.sqrt(1/(np.sum(ctm)-3))
                    #n = np.sum(ctm)
                    res[ gene ][ SGB ] = [ OR, LOR, pv, se ]
                    ##print(gene, " => ", SGB, " || ", [ OR, LOR, pv, se ])
    return res

def meta_analysis( res_genes, genes, SGBs, outfile  ):
    outfilew = open(outfile, "w")

    # ++ Write header ++
    outfilew.write("gene\tmeta-lor\tmeta-std\tmeta-pval\tn-studies\t")
    #outfilew.write("gene\tmeta-chi\tmeta-n\tmeta-pval\t")

    for sgb in SGBs:
        for suff in ["lor", "se", "pval"]:
            outfilew.write(sgb + "_" + suff + "\t")
    outfilew.write("\n")

    # ++ Compute and write meta-analysis for each ++
    genes = sorted(list(res_genes.keys()))

    for gene in genes:
        sgbs = [ sgb for sgb in SGBs if sgb in res_genes[gene] ]
        if len(sgbs):
            ma = gma(\
                [ res_genes[gene][sgb][1] for sgb in sgbs ], \
                [(res_genes[gene][sgb][3]**2.) for sgb in sgbs ], \
                [ res_genes[gene][sgb][2] for sgb in sgbs ], \
                sgbs, [None], [None], gene, "PM", None)
  
            if (ma.RE == ma.RE) and (ma.n_studies >= MIN_STUD):
                outfilew.write(gene + "\t" + str(ma.RE) + "\t" + str(ma.stdErr) + "\t" + str(ma.Pval) + "\t" + str(ma.n_studies) + "\t")
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

    if not os.path.isfile(datatable_file.replace("db_tables", "oddsratio_metaanalyses_results2")):
        meta_analysis( measure_differential_genes2(datatable, genes, SGBs), genes, SGBs, datatable_file.replace("db_tables", "oddsratio_metaanalyses_results2") )

    metaa = pd.read_csv(datatable_file.replace("db_tables", "oddsratio_metaanalyses_results2"), sep="\t", header=0, index_col=0, low_memory=False)
    cols = [c for c in metaa if c.endswith('_lor')]

    for c in cols:
        if all([(x!=x) for x in metaa[c]]):
            del metaa[c]
            del metaa[c.replace("_lor", "_se")]
            del metaa[c.replace("_lor", "_pval")]

    cols = metaa.columns
    for c in cols:
        if c.startswith("Unnamed"):
            metaa[c]

    cp = 0
    for i,c in enumerate(metaa.columns):
        if c.endswith("pval"):
            p = metaa[c].values.astype(float)

            mask = np.isfinite( p )
            print(c, p.shape, np.sum(mask.astype(int)))

            if np.sum(mask.astype(int)) == len(p):
                pval_corrected = multipletests(p, method='fdr_bh')[1]

            else:
                pval_corrected = np.empty(p.shape) #, np.nan)
                pval_corrected.fill(np.nan)

                pval_corrected[mask] = multipletests(p[mask], method='fdr_bh')[1]

            metaa.insert(i+cp+1, c.replace("pval", "qval"), pval_corrected)
            cp += 1
            #metaa[c].fillna(1.0, inplace=True)
            #metaa[c.replace("pval", "qval")].fillna(1.0, inplace=True)

    metaa.insert(4, "meta-ci", [(str(re-1.96*se)+";"+str(re+1.96*se)) for re,se in zip(metaa["meta-lor"], metaa["meta-std"])])
    metaa = metaa.fillna("NA")
    metaa.to_csv(datatable_file.replace("db_tables", "oddsratio_metaanalyses_results2").replace(".tsv", "_fdr_adjusted.tsv"), sep="\t", header=True, index=True)

if __name__ == "__main__":
    main(sys.argv[1])
