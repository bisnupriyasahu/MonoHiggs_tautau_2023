

declare -a plotList=( "tau1Pt" "tau2Pt" "met" "visMass" "tau1Eta" "tau2Eta" "deltaR") 
declare -a indexList_s=("_5" "_6")
declare -a indexList_f=("_5_fr" "_6_fr")

for i in "${plotList[@]}"
do
    for j in "${indexList_s[@]}"
    do
        hist=$i$j
	python makeplot_compare.py -name $hist &
	python makeplot_compare.py -name $hist -cat "A" &
        python makeplot_compare.py -name $hist -cat "B" &
        python makeplot_compare.py -name $hist -cat "C" &
	python makeplot_compare.py -name $hist -cat "D" &
	wait
    done
    wait
done


for i in "${plotList[@]}"
do
    for j in "${indexList_f[@]}"
    do
        hist=$i$j
	python makeplot_compare.py -name $hist &
	python makeplot_compare.py -name $hist -cat "A" &
        python makeplot_compare.py -name $hist -cat "B" &
        python makeplot_compare.py -name $hist -cat "C" &
	python makeplot_compare.py -name $hist -cat "D" &
	wait
    done
    wait
done
