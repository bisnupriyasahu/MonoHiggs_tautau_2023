set -e

declare -a plotList=("tauPt") 
#declare -a plotList=("muPt" "tauPt" "higgsPt" "tot_TMass_full" "nJet" "visMass" "metLongXaxis" "deltaR") '
#declare -a plotList=( "tot_TMass_new") 
#declare -a plotList=("muPt" "tauPt" "higgsPt" "nJet" "metLongXaxis" ) 

declare -a indexList=("_9")


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
	python3 makeplot.py -name $hist -cat 0 -ch mutau -xaxis $hist -year 2017 --blindingRatio 5 
    done
    wait
done

#python3 makeplot.py -name tot_TMass_full_9 -cat 0 -ch mutau -xaxis tot_TMass_full_9 -year 2017 --blindingRatio 1 
