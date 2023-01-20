set -e


python postAnalyzer.py 

bash hadd_files.sh all
bash organize.sh
bash get_shape_rootfile.sh
python gather_hist_v3.py
#bash do_make_plots.sh
#bash do_make_plots_wsys.sh
