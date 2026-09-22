#!/bin/bash

projs="/shares/CIBIO-Storage/CM/scratch/projects/"

#python ${projs}paolomanghi_cmd3/resubmission/curatedMetagenomicDataAnalyses/python_tools/draw_figure_with_ma.py \
#    ../oddsratio_metaanalyses_results3/pfam_u50_10prev_fdr_adjusted.tsv -x "log odds" --imp 40 -ar 0.05 -as 0.05 \
#    --outfile ../images/pfam_condensed_forest --neg_max_rho 2.5 --pos_max_rho 2.5 --legloc "lower right" -ms 5 \
#    --title "Genomic traits association (Pfam)" -rq "meta-qval" -re "meta-lor" -rs "meta-std" -es _lor -qs _qval -ses _se \
#    --color_red goldenrod --color_blue cornflowerblue --color_black black -il 0.5 -ci "meta-ci" \
#    -ns "Westernized associated" -ps "non-Westernized associated"

#python ${projs}paolomanghi_cmd3/resubmission/curatedMetagenomicDataAnalyses/python_tools/draw_figure_with_ma.py \
#    ../oddsratio_metaanalyses_results3/cazy_u50_fdr_adjusted.tsv -x "log odds" --imp 40 -ar 0.05 -as 0.05 \
#    --outfile ../images/cazy_condensed_forest --neg_max_rho 2.5 --pos_max_rho 2.5 --legloc "lower right" -ms 5 \
#    --title "Genomic traits association (CAZY)" -rq "meta-qval" -re "meta-lor" -rs "meta-std" -es _lor -qs _qval -ses _se \
#    --color_red goldenrod --color_blue cornflowerblue --color_black black -il 0.5 -ci "meta-ci" \
#    -ns "Westernized associated" -ps "non-Westernized associated"

#python ${projs}paolomanghi_cmd3/resubmission/curatedMetagenomicDataAnalyses/python_tools/draw_figure_with_ma.py \
#    ../oddsratio_metaanalyses_results3/eggnog_u50_10prev_fdr_adjusted.tsv -x "log odds" --imp 40 -ar 0.05 -as 0.05 \
#    --outfile ../images/eggnog_condensed_forest --neg_max_rho 2.5 --pos_max_rho 2.5 --legloc "lower right" -ms 5 \
#    --title "Genomic traits association (EggNog)" -rq "meta-qval" -re "meta-lor" -rs "meta-std" -es _lor -qs _qval \
#    -ses _se --color_red goldenrod --color_blue cornflowerblue --color_black black -il 0.5 -ci "meta-ci" \
#    -ns "Westernized associated" -ps "non-Westernized associated"

#python ${projs}paolomanghi_cmd3/resubmission/curatedMetagenomicDataAnalyses/python_tools/draw_figure_with_ma.py \
#    ../oddsratio_metaanalyses_results3/level4ec_u50_10prev_fdr_adjusted.tsv -x "log odds" --imp 40 -ar 0.05 -as 0.05 \
#    --outfile ../images/level4ec_condensed_forest --neg_max_rho 2.5 --pos_max_rho 2.5 --legloc "lower right" -ms 5 \
#    --title "Genomic traits association (E.C.)" -rq "meta-qval" -re "meta-lor" -rs "meta-std" -es _lor -qs _qval \
#    -ses _se --color_red goldenrod --color_blue cornflowerblue --color_black black -il 0.5 -ci "meta-ci" \
#    -ns "Westernized associated" -ps "non-Westernized associated"

python plot_prevalences.py ../db_tables/pfam_u50_10prev.tsv top_40_PFAM.txt pfam_u50_prevalences
python plot_prevalences.py ../db_tables/level4ec_u50_10prev.tsv top_40_ECnumbers.txt level4ec_u50_prevalences
python plot_prevalences.py ../db_tables/eggnog_u50_10prev.tsv top_40_EggNog.txt eggnog_u50_prevalences
 
#python ${projs}paolomanghi_cmd3/resubmission/curatedMetagenomicDataAnalyses/python_tools/draw_figure_with_ma.py \
#    ../oddsratio_metaanalyses_results3/ko_u50_10prev_fdr_adjusted.tsv -x "log odds" --imp 40 -ar 0.05 -as 0.05 \
#    --outfile ../images/ko_condensed_forest --neg_max_rho 2.5 --pos_max_rho 2.5 --legloc "lower right" -ms 5 \
#    --title "Genomic traits association (KOs)" -rq "meta-qval" -re "meta-lor" -rs "meta-std" -es _lor -qs _qval \
#    -ses _se --color_red goldenrod --color_blue cornflowerblue --color_black black -il 0.5 -ci "meta-ci" \
#    -ns "Westernized associated" -ps "non-Westernized associated"

#python ${projs}paolomanghi_cmd3/resubmission/curatedMetagenomicDataAnalyses/python_tools/draw_figure_with_ma.py \
#    ../oddsratio_metaanalyses_results3/go_u50_10prev_fdr_adjusted.tsv -x "log odds" --imp 40 -ar 0.05 -as 0.05 \
#    --outfile ../images/go_condensed_forest --neg_max_rho 2.5 --pos_max_rho 2.5 --legloc "lower right" -ms 5 \
#    --title "Genomic traits association (GO)" -rq "meta-qval" -re "meta-lor" -rs "meta-std" -es _lor -qs _qval \
#    -ses _se --color_red goldenrod --color_blue cornflowerblue --color_black black -il 0.5 -ci "meta-ci" \
#    -ns "Westernized associated" -ps "non-Westernized associated"

python plot_prevalences.py ../db_tables/go_u50_10prev.tsv top_40_GOs.txt go_u50_prevalences
python plot_prevalences.py ../db_tables/ko_u50_10prev.tsv top_40_KOs.txt ko_u50_prevalences
