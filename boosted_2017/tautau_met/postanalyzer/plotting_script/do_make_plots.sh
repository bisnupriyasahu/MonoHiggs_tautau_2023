set -e

#declare -a plotList=("tau1Pt" "tau2Pt" "higgsPt" "tot_TMass_full" "nJet" "visMass" "met" "metLongXaxis" "mT_muMet" "deltaR" "tot_TMass_new") 
declare -a plotList=("tau1Pt" "tau2Pt" "higgsPt") # "nJet" "metLongXaxis") 
#declare -a plotList=("tot_TMass_full")
declare -a indexList=("_9")
#declare -a indexList=("_6")


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
	python3 makeplot.py -name $hist -cat 0 -ch tautau -xaxis $hist -year 2017 --blindingRatio 5
    done
    wait
done


#python3 makeplot.py -name tot_TMass_full_9 -cat 0 -ch tautau -xaxis tot_TMass_full_9 -year 2017 --blindingRatio 1 
