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
./analyze_mutau /hdfs/store/user/jmadhusu/2017_skimmed/mutau/DYJetsToLL_M-50_TuneCP5_v1_00.root DYJetsToLL_00_test.root $nEvents 1000 2017 MC DY1JetsToLL_00

#./analyze_mutau /hdfs/store/user/jmadhusu/2017_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2017_2.root Zpbaryonic2017_2_test.root $nEvents 1000 2017 MC Zpbaryonic2017 
# echo "wjets sample analysis....."
# ./analyze_mutau /hdfs/store/user/jmadhusu/2017_skimmed/mutau/WJetsToLNu_TuneCP5_00.root WJetsToLNu_00_test.root $nEvents 1000 2017 MC WJetsToLNu_00

# echo "data sample analysis....."
# ./analyze_mutau /hdfs/store/user/jmadhusu/blinded_data/2017/mutau/SingleMuon_EraC_00.root SingleMuon_test.root $nEvents 1000 2017 DATA SingleMuon_EraC_00

# ./analyze_mutau /hdfs/store/user/jmadhusu/2017_skimmed/signal_gg/MH3_200_MH4_100.root signal_test.root $nEvents 1000 2017 MC MH3_200_MH4_100

end=`date +%s`
runtime=$((end-start))
echo "Runtime = $runtime"
echo "Elapsed: $(($runtime / 3600))hrs $((($runtime / 60) % 60))min $(($runtime % 60))sec"
