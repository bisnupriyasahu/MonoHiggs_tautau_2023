#!/bin/bash
set -e  # exit when any command fails

# keep track of the last executed command
trap 'last_command=$current_command; current_command=$BASH_COMMAND' DEBUG
# echo an error message before exiting
trap 'echo "\"${last_command}\" command filed with exit code $?."' EXIT


f_exe="analyze_etau_signal"
if [ -f "$f_exe" ]; then
    echo "$f_exe exists, removing file"
    rm $f_exe
fi

./rootcom signal_analyzer $f_exe


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

./$f_exe /hdfs/store/user/jmadhusu/2017_skimmed/signal_gg/MH3_900_MH4_500.root MH3_900_MH4_500.root $nEvents 10000 2018 MC MH3_900_MH4_500
# ./$f_exe /hdfs/store/user/jmadhusu/2017_skimmed/signal_gg/MH3_800_MH4_300.root MH3_800_MH4_300.root $nEvents 10000 2018 MC MH3_800_MH4_300

end=`date +%s`
runtime=$((end-start))
echo "Runtime = $runtime"
echo "Elapsed: $(($runtime / 3600))hrs $((($runtime / 60) % 60))min $(($runtime % 60))sec"
