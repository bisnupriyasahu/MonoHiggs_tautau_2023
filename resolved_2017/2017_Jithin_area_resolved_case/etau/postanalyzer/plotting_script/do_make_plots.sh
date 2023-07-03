set -e

#declare -a plotList=("elePt") 
declare -a plotList=("elePt" "tauPt" "higgsPt" "nJet" "visMass" "metLongXaxis" "mT_eleMet" "deltaR" "tot_TMass_full") 
#declare -a plotList=("higgsPt") 

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
	python3 makeplot.py -name $hist -cat 0 -ch etau -xaxis $hist -year 2017 --blindingRatio 5 
    done
    wait
done

#python3 makeplot.py -name tot_TMass_full_9 -cat 0 -ch etau -xaxis tot_TMass_full_9 -year 2017 --blindingRatio 1 