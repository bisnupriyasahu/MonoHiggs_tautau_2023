#!/bin/bash
set -e  # exit when any command fails

# keep track of the last executed command
trap 'last_command=$current_command; current_command=$BASH_COMMAND' DEBUG
# echo an error message before exiting
trap 'echo "\"${last_command}\" command filed with exit code $?."' EXIT


f_exe="analyze_etau"
if [ -f "$f_exe" ]; then
    echo "$f_exe exists, removing file"
    rm $f_exe
fi

./rootcom etau_analyzer $f_exe


outFile="study_mutau_110k.root"
start=`date +%s`
nEvents=10000
sample='dy'
plottingOn=0
while getopts n:s:p option
do
    case "${option}"
	in
	n) nEvents=${OPTARG};;
	p) plottingOn=1 ;;
	s) sample=${OPTARG};;
esac
done

# echo "dy sample analysis....."
./$f_exe /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau_hadd/DYJetsToLL_M-50_TuneCP5_v1_00_00.root DYJetsToLL_M-50_TuneCP5_v1_00_00.root $nEvents 1000 2017 MC DYJetsToLL_M-50_TuneCP5_v1_00_00

./$f_exe /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/signal/Signal_ZpBaryonic_2017_0000_16.root Signal_ZpBaryonic_2017_0000_16.root $nEvents 1000 2017 MC Signal_ZpBaryonic_2017_0000_16 

./$f_exe /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau_hadd/MET_EraD_0000_03.root MET_EraB_test.root $nEvents 1000 2017 DATA MET_EraD_0000_03 


end=`date +%s`
runtime=$((end-start))
echo "Runtime = $runtime"
echo "Elapsed: $(($runtime / 3600))hrs $((($runtime / 60) % 60))min $(($runtime % 60))sec"
