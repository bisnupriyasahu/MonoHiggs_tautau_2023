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
nEvents=-1
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
./$f_exe /hdfs/store/user/jmadhusu/2018_skimmed/etau/DYJetsToLL_00.root DYJetsToLL_00_test.root $nEvents 1000 2018 MC DYJetsToLL_00 
#./$f_exe /hdfs/store/user/jmadhusu/2018_skimmed/zprimeBaryonic/Zpbaryonic_00.root Zpbaryonic2018_test_2.root $nEvents 1000 2018 MC Zpbaryonic2018 41
#./$f_exe /hdfs/store/user/jmadhusu/2018_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2018_1.root Zpbaryonic2018_1.root $nEvents 1000 2018 MC Zpbaryonic2018_1 
#./$f_exe /nfs_scratch/bsahu/MonoHiggs_Nov2022_V2/CMSSW_12_3_5/src/Skim_2018/signal/Output_Ntuple_signal_FE_.root Zpbaryonic2018_1.root $nEvents 100 2018 MC Zpbaryonic2018_1 
#./$f_exe /hdfs/store/user/bsahu/Resolved_ZPB_signal_sample_17032023/2018_skimmed/signal/hadd_postAN_inp/Signal_ZpBaryonic_2018_1.root Zpbaryonic2018_1.root $nEvents 100 2018 MC Zpbaryonic2018_1 

end=`date +%s`
runtime=$((end-start))
echo "Runtime = $runtime"
echo "Elapsed: $(($runtime / 3600))hrs $((($runtime / 60) % 60))min $(($runtime % 60))sec"
#bash make_templates.sh
