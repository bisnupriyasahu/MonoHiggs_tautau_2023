set -e

#declare -a plotList=("elePt") 
#declare -a plotList=("elePt" "tauPt" "eleEta"  "tauEta" "higgsPt" "nJet" "visMass" "metLongXaxis" "deltaR") 
#declare -a plotList=( "higgsPt")
#declare -a plotList=("elePt") 
declare -a plotList=("tot_TMass_new") 

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
	####### #if 'tot_TMass_new' in $hist:
	python3 makeplot.py -name $hist -cat 0 -ch etau -xaxis $hist -year 2018 --blindingRatio 1 # blinded
	#python3 makeplot.py -name $hist -cat 0 -ch etau -xaxis $hist -year 2018 --blindingRatio 5 # unblinded 1/5th data
    done
    wait
done

#python2 makeplot.py -name tot_TMass_full_9 -cat 0 -ch etau -xaxis tot_TMass_full_9 -year 2017 --blindingRatio 1 
