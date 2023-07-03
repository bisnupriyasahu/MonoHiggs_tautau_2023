set -e

#declare -a plotList=("higgsPt") 
#declare -a plotList=("muPt" "muEta" "muPhi" "tauPt" "tauEta" "tauPhi" "higgsPt" "nJet" "visMass" "metLongXaxis" "deltaR" "tot_TMass_new") 
declare -a plotList=("muPt" "muEta"  "tauPt" "tauEta"  "higgsPt" "nJet" "visMass" "metLongXaxis" "deltaR" ) 
#declare -a plotList=( "tot_TMass_new" "higgsPt" "muPt") 
#declare -a plotList=("higgsPt" ) 

declare -a indexList=("_5")
#declare -a indexList=("_9")


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
	#python3 makeplot.py -name $hist -cat 0 -ch mutau -xaxis $hist -year 2017 --blindingRatio 5 # unblinded  1/5th of data
	python3 makeplot.py -name $hist -cat 0 -ch mutau -xaxis $hist -year 2017 --blindingRatio 1  # blinded: full data set for limits, total transverse mass
    done
    wait
done

#python3 makeplot.py -name tot_TMass_full_9 -cat 0 -ch mutau -xaxis tot_TMass_full_9 -year 2017 --blindingRatio 1 
