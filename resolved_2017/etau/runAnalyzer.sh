#!/bin/bash
set -e  # exit when any command fails

# keep track of the last executed command
trap 'last_command=$current_command; current_command=$BASH_COMMAND' DEBUG
# echo an error message before exiting
trap 'echo "\"${last_command}\" command filed with exit code $?."' EXIT


f_exe="analyze_etau_test"
if [ -f "$f_exe" ]; then
    echo "$f_exe exists, removing file"
    rm $f_exe
fi

./rootcom etau_analyzer $f_exe


outFile="study_mutau_110k.root"
start=`date +%s`
nEvents=5000
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
./$f_exe /hdfs/store/user/jmadhusu/2017_skimmed/etau/DYJetsToLL_M-50_TuneCP5_v1_00.root DYJetsToLL_00_test.root $nEvents 1000 2017 MC DYJetsToLL_00
#./$f_exe  root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/ZZTo2L2Q_02.root ZZTo2L2Q_02_test.root $nEvents 1000 2017 MC ZZTo2L_02
#./$f_exe /hdfs/store/user/jmadhusu/2017_skimmed/zprimeBaryonic/Signal_Zpbaryonic2017_00.root Zpbaryonic2017_42_test.root $nEvents 1000 2017 MC Zpbaryonic2017 42
#./$f_exe /hdfs/store/user/jmadhusu/2017_skimmed/zprimeBaryonic/Zpbaryonic_00.root Zpbaryonic2017_3_test.root $nEvents 1000 2017 MC Zpbaryonic2017 3


end=`date +%s`
runtime=$((end-start))
echo "Runtime = $runtime"
echo "Elapsed: $(($runtime / 3600))hrs $((($runtime / 60) % 60))min $(($runtime % 60))sec"
