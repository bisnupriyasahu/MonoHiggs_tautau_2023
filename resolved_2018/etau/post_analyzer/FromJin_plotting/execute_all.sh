set -e

# sh copyFiles.sh
# sh hadd_files.sh


# cd plotting_script
if [ "$(ls -A *.root)" ]; then
    echo "Take action root files exits"
    rm *.root
fi

outDIR="sample"
if [ -d "$outDIR" ]; then
    echo "$outDIR exists"
    if [ "$(ls -A $outDIR)" ]; then
	echo "Take action $outDIR is not Empty .... removing existing files ....."
	rm $outDIR/*.root
    else
	echo " $outDIR is Empty"
    fi
else
    echo "$outDIR created"
    mkdir $outDIR
fi

python postAnalyzer.py 

bash hadd_files.sh all
bash organize.sh
bash get_shape_rootfile.sh
python gather_hist_v3.py
python gather_hist_v4.py

#bash do_make_plots.sh
#bash do_make_plots_wsys.sh
