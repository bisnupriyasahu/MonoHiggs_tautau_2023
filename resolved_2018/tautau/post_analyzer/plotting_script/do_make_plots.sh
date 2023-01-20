set -e

#declare -a plotList=("tau1Pt" "tau2Pt" "higgsPt" "nJet" "visMass" "metLongXaxis" "mT_muMet" "deltaR" "tot_TMass_full") 
#declare -a plotList=("tau1Pt" "tau2Pt" "higgsPt" "nJet" "metLongXaxis" "tot_TMass_new") 
declare -a plotList=("tau1Pt" "tau2Pt" "higgsPt") #"nJet" "metLongXaxis") 
#declare -a plotList=("tot_TMass_new")

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
	python3 makeplot.py -name $hist -cat 0 -ch tautau -xaxis $hist -year 2018 --blindingRatio 5 
    done
    wait
done


