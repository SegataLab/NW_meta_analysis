#!/bin/bash

python ../../../../../../projects/paolomanghi_cmd3/resubmission/curatedMetagenomicDataAnalyses/python_tools/metaanalyze.py ../db_tables/cazy_u50_10prev.tsv -z gene__ --formula "Lifestyle + Contamination + Completeness" -cc "non-Westernized:Westernized" -OR -H DL -si SGB -of ../metaanalyses_results/cazy_u50_10prev.tsv
