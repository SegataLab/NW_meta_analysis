#!/usr/bin/env python

import numpy as np
import pandas as pd
import sys, os
import argparse as ap
from scipy import stats as sts
import matplotlib
matplotlib.use("Agg")
from matplotlib import pyplot as plt
import matplotlib.gridspec as gridspec
import seaborn as sns
from matplotlib import rc
matplotlib.rcParams["svg.fonttype"] = "none"

sns.set_context("paper", \
    rc={"font.size": 16, "axes.titlesize": 16, "axes.labelsize": 16, \
    "axes.ticklabelssize": 16, "xtick.labelsize": 16, "ytick.labelsize": 16})

def params():
    P = ap.ArgumentParser()
    add = P.add_argument
    add("analysis_table")
    add("list_of_markers")
    add("title")
    return P.parse_args()

def plot_prevalences(params):
    table = pd.read_csv(params.analysis_table, sep="\t", header=0, index_col=0, low_memory=False)
    list_of_genes = params.list_of_markers
    title = params.title

    with open(list_of_genes) as lf:
        genes = [line.rstrip() for line in lf.readlines()]

    table = table.loc[["SGB", "Completeness", "Contamination", "Lifestyle"] + genes]
    SGBs = table.loc["SGB"].unique().tolist()

    fig = plt.figure(figsize=(10, 20))
    gs = gridspec.GridSpec(1,1)
    ax = plt.subplot(gs[0, 0])

    def get_prevs(SGB, gene, table):
        this = table.loc[ ["Lifestyle", "Completeness", "Contamination", gene], table.loc["SGB"]==SGB ].T
        data = this.astype( {gene: float, "Lifestyle": str, "Completeness": float, "Contamination": float} )

        s_nw = data.loc[data["Lifestyle"]=="non-Westernized", gene]
        s_ww = data.loc[data["Lifestyle"]=="Westernized", gene]

        if (s_nw.sum()/s_nw.count() >= 0.1) or (s_ww.sum()/s_ww.count() >= 0.1):
            return s_nw.sum()/s_nw.count(), s_ww.sum()/s_ww.count(), SGB

        return "NULL"
 
    gene_frame = []
 
    #if (data.loc[data["Lifestyle"]=="non-Westernized", gene].sum()/data.loc[data["Lifestyle"]=="non-Westernized", gene].count() >= 0.1) or \
    #           (data.loc[data["Lifestyle"]=="Westernized", gene].sum()/data.loc[data["Lifestyle"]=="Westernized", gene].count() >= 0.1):

    for gene in genes:
        p = [ get_prevs(SGB, gene, table) for SGB in SGBs ] 
        p = [ pp for pp in p if not isinstance(pp, str) ]
 
        ppos = [ pp[1] for pp in p ]
        pneg = [ pp[0] for pp in p ]
        sgbs = [ pp[2] for pp in p ]
 
        frame_to_plot = pd.DataFrame({"prevalence": ppos + pneg, "gene": gene, \
            "lifestyle": ["westernized" for l in range(len(ppos))] + ["non-westernized" for l in range(len(pneg))]}, index=sgbs + sgbs)

        if not len(gene_frame):
            gene_frame = frame_to_plot
        else:
            gene_frame = pd.concat([gene_frame, frame_to_plot])

    print(gene_frame)
    gene_frame.to_csv("observation.tsv", sep="\t", header=True, index=True)
    
    #P = sns.stripplot(data=gene_frame, x="prevalence", y="gene", hue="lifestyle", ax=ax, dodge=True, palette={"westernized": "steelblue", "non-westernized": "gold"})
    P38 = sns.boxplot(data=gene_frame, x="prevalence", y="gene", hue="lifestyle", ax=ax,  palette={"westernized": "steelblue", "non-westernized": "gold"}) ##fill=False) #palette="dark:white")
    [plt.savefig("../images/%s.%s" %(title, fmt), dpi=200) for fmt in ["svg", "png"]]
    plt.close()

if __name__ == "__main__":
    plot_prevalences(params()) ##list_of_genes="pfam_to_plot.txt")
