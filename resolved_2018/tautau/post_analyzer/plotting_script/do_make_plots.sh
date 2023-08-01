set -e

#declare -a plotList=("tau1Pt" "tau2Pt" "higgsPt" "nJet" "visMass" "metLongXaxis" "mT_muMet" "deltaR" "tot_TMass_full") 
#declare -a plotList=("tau1Pt" "tau1Eta" "tau2Pt" "tau2Eta" "higgsPt" "nJet" "metLongXaxis" "deltaR" "tot_TMass_new" "visMass") 
#declare -a plotList=("metLongXaxis" "tot_TMass_new") 
#declare -a plotList=("higgsPt" "nJet" "metLongXaxis" )
declare -a plotList=("tot_TMass_new")
#declare -a plotList=("nJet")
#declare -a plotList=("tau1Pt" )

declare -a indexList=("_9b")
#declare -a indexList=("_5")


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
	#python3 makeplot.py -name $hist -cat 0 -ch tautau -xaxis $hist -year 2018 --blindingRatio 5
	python3 makeplot.py -name $hist -cat 0 -ch tautau -xaxis $hist -year 2018 --blindingRatio 1
    done
    wait
done


