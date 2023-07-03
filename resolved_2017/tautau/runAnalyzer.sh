#!/bin/bash
set -e  # exit when any command fails

# keep track of the last executed command
trap 'last_command=$current_command; current_command=$BASH_COMMAND' DEBUG
# echo an error message before exiting
trap 'echo "\"${last_command}\" command filed with exit code $?."' EXIT


f_exe="analyze_tautau_test"
if [ -f "$f_exe" ]; then
    echo "$f_exe exists, removing file"
    rm $f_exe
fi

./rootcom tautau_analyzer $f_exe


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
#./$f_exe /hdfs/store/user/jmadhusu/2017_skimmed/tautau_new/DYJetsToLL_M-50_TuneCP5_v1_00.root all_test_DYJetsToLL_00_test.root $nEvents 1000 2017 MC DY1JetsToLL_00


./$f_exe /hdfs/store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/DY1JetsToLL_M-50_TuneCP5_0000.root test_dy.root $nEvents 1000 2017 MC DY1JetsToLL_00


#./$f_exe /hdfs/store/user/jmadhusu/2017_skimmed/zprimeBaryonic/Signal_Zpbaryonic2017_00.root Zpbaryonic2017_42_test.root $nEvents 1000 2017 MC Zpbaryonic2017 42

#./$f_exe /hdfs/store/user/jmadhusu/2017_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2017_10.root Zpbaryonic2017_10.root 10000 1000 2017 MC Zpbaryonic2017
#./$f_exe /hdfs//store/user/jmadhusu/2017_skimmed/tautau_new/TTTo2L2Nu_TuneCP5_01.root test_ttbar.root 1000 1000 2017 MC TTTo2L2Nu
#./$f_exe /hdfs//store/user/bsahu/Resolved_ZPB_signal_sample_17032023/2017_skimmed/signal/hadd_postAN_inp/Signal_ZpBaryonic_2017_10.root Signal_ZpBaryonic_2017_10.root 1000 1000 2017 MC Signal_ZpBaryonic_2017_7
#./$f_exe /hdfs//store/user/jmadhusu/2017_skimmed/tautau_new/ST_t-channel_antitop_4f_inclusiveDecays_TuneCP5_00.root ST_t-channel_antitop_4f_inclusiveDecays_TuneCP5_00.root -1 1000 2017 MC ST_t-channel_antitop_4f_inclusiveDecays_TuneCP5_00
#./$f_exe /hdfs/store/user/jmadhusu/2017_skimmed/tautau_new/DY1JetsToLL_M-50_TuneCP5_00.root Dtest_Y1JetsToLL_M-50_TuneCP5_00.root 5000 1000 2017 MC DY1JetsToLL_M-50_TuneCP5_00 
#./$f_exe /hdfs//store/user/jmadhusu/2017_skimmed/tautau_new/Tau_EraB_00.root test_fullLumi_Tau_EraB_00.root 5000 1000 2017 DATA Tau
#./$f_exe /hdfs/store/user/jmadhusu/2017_skimmed/tautau_new/DY1JetsToLL_M-50_TuneCP5_00.root test_DYJetsToLL_M-50_TuneCP5_v1_04.root -1 1000 2017 MC DYJetsToLL 
end=`date +%s`
runtime=$((end-start))
echo "Runtime = $runtime"
echo "Elapsed: $(($runtime / 3600))hrs $((($runtime / 60) % 60))min $(($runtime % 60))sec"
