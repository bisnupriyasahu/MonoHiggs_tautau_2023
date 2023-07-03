set -e

#declare -a plotList=("elePt") 

#declare -a plotList=("tau1Pt" "tau2Pt" "higgsPt" "tot_TMass_full" "nJet" "visMass" "metLongXaxis" "deltaR") 
#declare -a plotList=("tau1Pt" "tau2Pt" "higgsPt" "nJet" "metLongXaxis")  
declare -a plotList=("cutflow_n")  
#declare -a plotList=("cutflow_n_fr")  

declare -a indexList=("")


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
	python3 makeplot.py -name $hist -cat 0 -ch etau -xaxis $hist -year 2017 --blindingRatio 1 
    done
    wait
done

#python3 makeplot.py -name tot_TMass_full_9 -cat 0 -ch etau -xaxis tot_TMass_full_9 -year 2017 --blindingRatio 1 
