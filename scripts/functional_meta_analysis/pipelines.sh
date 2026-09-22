#!/bin/bash


python ../../../../../../projects/paolomanghi_cmd3/resubmission/curatedMetagenomicDataAnalyses/python_tools/metaanalyze.py ../db_tables/cazy_u50_10prev.tsv \
     -z gene__ --formula "Lifestyle + Contamination + Completeness" -cc "non-Westernized:Westernized" -OR -H DL -si SGB

python ../../../../../../projects/paolomanghi_cmd3/resubmission/curatedMetagenomicDataAnalyses/python_tools/metaanalyze.py ../db_tables/eggnog_u50_10prev.tsv \
     -z gene__ --formula "Lifestyle + Contamination + Completeness" -cc "non-Westernized:Westernized" -OR -H DL -si SGB

python ../../../../../../projects/paolomanghi_cmd3/resubmission/curatedMetagenomicDataAnalyses/python_tools/metaanalyze.py ../db_tables/go_u50_10prev.tsv \
    -z gene__ --formula "Lifestyle + Contamination + Completeness" -cc "non-Westernized:Westernized" -OR -H DL -si SGB

python ../../../../../../projects/paolomanghi_cmd3/resubmission/curatedMetagenomicDataAnalyses/python_tools/metaanalyze.py ../db_tables/ko_u50_10prev.tsv \
    -z gene__ --formula "Lifestyle + Contamination + Completeness" -cc "non-Westernized:Westernized" -OR -H DL -si SGB

python ../../../../../../projects/paolomanghi_cmd3/resubmission/curatedMetagenomicDataAnalyses/python_tools/metaanalyze.py ../db_tables/level4ec_u50_10prev.tsv \
    -z gene__ --formula "Lifestyle + Contamination + Completeness" -cc "non-Westernized:Westernized" -OR -H DL -si SGB

python ../../../../../../projects/paolomanghi_cmd3/resubmission/curatedMetagenomicDataAnalyses/python_tools/metaanalyze.py ../db_tables/pfam_u50_10prev.tsv \
    -z gene__ --formula "Lifestyle + Contamination + Completeness" -cc "non-Westernized:Westernized" -OR -H DL -si SGB



## 

#python ../../paolomanghi_cmd3/resubmission/curatedMetagenomicDataAnalyses/python_tools/draw_figure_with_ma.py asn_abundances/mpa4_SGBs_IBD_metaanalysis.tsv \
#    --outfile images/IBD_staging_pap -re RE_Effect -x "SMD" -es "_Effect" -qs "_Qvalue" --imp 40 \
#    --neg_max_rho 2.5 --pos_max_rho 2.5 --title "Meta-analysis of IBD-associated SGBs" -ps "IBD" -ns "Health" \
#    --legloc "lower right" -ar 0.2 -as 0.2 --color_red goldenrod --color_blue cornflowerblue --color_black black -rq RE_Effect_Qvalue --confint RE_conf_int \
#    --markers -ms 3 --legloc "upper left" --markers
