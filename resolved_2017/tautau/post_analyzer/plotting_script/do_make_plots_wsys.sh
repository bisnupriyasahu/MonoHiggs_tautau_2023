set -e

inFile=f_mutau_initial.root
#inFile=$1
declare -a plotList=("muPt" "muEta" "tauPt" "tauEta" "deltaR" "higgsPt" "nJet" "visMass" "met" "metPhi" "metLongXaxis" "tot_TMass" "tot_TMass_full") 

declare -a indexList=("_5" "_9")

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
	python makeplot_wsys.py -in $inFile -name $hist -cat 0 -ch mutau -xaxis $hist -year 2017 --blindingRatio 5 
	python makeplot_wsys.py -in $inFile -name $hist -cat 0 -ch mutau -xaxis $hist -year 2017 --blindingRatio 5 -lY
    done
    wait
done

wait
# python makeplot.py -in $inFile -name cutflow_n -cat 0 -ch mutau -xaxis "cutflow" -lY  -year 2017 --blindingRatio 5
