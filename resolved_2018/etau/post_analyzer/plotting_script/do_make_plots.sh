set -e

#declare -a plotList=("deltaR") 
#declare -a plotList=("elePt" "tauPt" "higgsPt" "tot_TMass_full" "nJet" "visMass" "met" "metLongXaxis" "mT_eleMet" "deltaR") 
declare -a plotList=("elePt" "tauPt" "higgsPt" "nJet" "metLongXaxis" ) 

declare -a indexList=("_9b")


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
	python3 makeplot.py -name $hist -cat 0 -ch etau -xaxis $hist -year 2018 --blindingRatio 5 
    done
    wait
done

#python2 makeplot.py -name tot_TMass_full_9 -cat 0 -ch etau -xaxis tot_TMass_full_9 -year 2017 --blindingRatio 1 
