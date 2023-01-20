#!/bin/bash
set -e  # exit when any command fails
# keep track of the last executed command
trap 'last_command=$current_command; current_command=$BASH_COMMAND' DEBUG
# echo an error message before exiting
trap 'echo "\"${last_command}\" command filed with exit code $?."' EXIT

if [ -f "analyze_mutau" ]; 
then 
    echo "The file analyze_mutau exists" 
    rm analyze_mutau
fi
./rootcom mutau_analyzer analyze_mutau

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

echo "dy sample analysis....."


./analyze_mutau /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/mutau_hadd/DY1JetsToLL_0000_00.root DYJetsToLL_00_test.root $nEvents 1000 2018 MC DY1JetsToLL_00
./analyze_mutau /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/mutau_hadd/MET2018B_0000_08.root MET2018B_0000_08_test.root $nEvents 1000 2018 DATA MET2018B_0000_08
#./analyze_mutau /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/signal/Signal_ZpBaryonic_2018_0000_2.root Zpbaryonic2018_test.root $nEvents 1000 2018 MC Zpbaryonic2018_2
./analyze_mutau /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/mutau_hadd/DYJetsToLL_0002_00.root DYJetsToLL_0002_00_test.root $nEvents 1000 2018 MC DYJetsToLL


end=`date +%s`
runtime=$((end-start))
echo "Runtime = $runtime"
echo "Elapsed: $(($runtime / 3600))hrs $((($runtime / 60) % 60))min $(($runtime % 60))sec"
/hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/hadd/DY1JetsToLL_M-50_TuneCP5_02_00.root
