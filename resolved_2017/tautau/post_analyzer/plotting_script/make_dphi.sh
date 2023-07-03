set -e


declare -a plotList=("delptaPhi_HptMet") 

declare -a indexList=( "_9")

FILE=eventYield.csv
if [ -f "$FILE" ]; then
    echo "$FILE exists."
    rm eventYield.csv
fi
for i in "${indexList[@]}"
do
    for j in "${plotList[@]}"
    do  
	hist=$j$i
	python3 make_wo_data.py -name $hist -cat 0 -ch mutau -xaxis $hist -year 2017 --blindingRatio 1 
	python3 make_wo_data.py -name $hist -cat 0 -ch mutau -xaxis $hist -year 2017 --blindingRatio 1 -lY
    done
    wait
done

wait
# python3 makeplot.py -in $inFile -name cutflow_n -cat 0 -ch mutau -xaxis "cutflow" -lY  -year 2017 --blindingRatio 5
#cp plots_wsys/plot_delptaPhi_HptMet_9_mutau.png 
