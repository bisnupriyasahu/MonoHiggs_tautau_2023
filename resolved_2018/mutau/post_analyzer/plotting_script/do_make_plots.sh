set -e

declare -a plotList=("muPt" "tauPt" "higgsPt" "nJet" "visMass"  "metLongXaxis" "deltaR") 
#declare -a plotList=("muPt" "tauPt" "higgsPt" "nJet" "metLongXaxis") 
#declare -a plotList=("tot_TMass_new")
#declare -a plotList=("higgsPt")
#declare -a plotList=("muPt" "tauPt" "higgsPt")
#declare -a indexList=("_9b")
declare -a indexList=("_5")

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
	#python3 makeplot.py -name $hist -cat 0 -ch mutau -xaxis $hist -year 2018 --blindingRatio 5 
	python3 makeplot.py -name $hist -cat 0 -ch mutau -xaxis $hist -year 2018 --blindingRatio 1
    done
    wait
done

# python3 makeplot.py -name muPt_9 -cat 0 -ch mutau -xaxis muPt_9 -year 2018 --blindingRatio 5 
#python3 makeplot.py -name tot_TMass_full_9 -cat 0 -ch mutau -xaxis tot_TMass_full_9 -year 2018 --blindingRatio 1 
