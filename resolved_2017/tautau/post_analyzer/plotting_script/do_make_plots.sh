set -e

#declare -a plotList=("elePt") 

#declare -a plotList=("tau1Pt" "tau2Pt" "higgsPt" "tot_TMass_new" "nJet" "visMass" "metLongXaxis" "deltaR" "tau1Eta" "tau2Eta" "tau1Phi" "tau2Phi") 
#declare -a plotList=("tau1Pt" "tau2Pt" "tau1Eta" "tau2Eta" "higgsPt" "nJet" "metLongXaxis" "deltaR" "visMass"  "tot_TMass_new")  
#declare -a plotList=("higgsPt" "nJet" "metLongXaxis" "tot_TMass_new")  
declare -a plotList=("tot_TMass_new" )  
#declare -a plotList=("tau1Pt" "higgsPt" "tot_TMass_new")  

declare -a indexList=("_9")
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
	#python3 makeplot.py -name $hist -cat 0 -ch tautau -xaxis $hist -year 2017 --blindingRatio  5 # unblinded  1/5th of data
	python3 makeplot.py -name $hist -cat 0 -ch tautau -xaxis $hist -year 2017 --blindingRatio 1  # full data set (blinded data )
    done
    wait
done

#python3 makeplot.py -name tot_TMass_full_9 -cat 0 -ch etau -xaxis tot_TMass_full_9 -year 2017 --blindingRatio 1 
