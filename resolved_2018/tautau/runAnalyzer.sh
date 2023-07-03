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


outFile="study_tautau_110k.root"
start=`date +%s`
nEvents=-1
sample='ZpBaryonic'
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
#./$f_exe /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DYJetsToLL_00.root DYJetsToLL_00_test.root $nEvents 1000 2018 MC DY1JetsToLL_00
#./$f_exe /hdfs/store/user/jmadhusu/2018_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2018_1.root Zpbaryonic2018_1.root $nEvents 1000 2018 MC Zpbaryonic2018_1 


./$f_exe /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTTo2L2Nu_powheg_70.root TTTo2L2Nu_powheg_70.root 10000 1000 2018 MC TTTo2L2Nu_powheg_70 
#./$f_exe /nfs_scratch/bsahu/MonoHiggs_Nov2022_V2/CMSSW_12_3_5/src/Skim_2018/tautau/outSkimmed_tt_dy_1.root DYtest70.root -1 1000 2018 MC DY

#./$f_exe /hdfs/store/user/bsahu/Resolved_ZPB_signal_sample_17032023/2018_skimmed/signal/hadd_postAN_inp/Signal_ZpBaryonic_2018_1.root Zpbaryonic2018_1.root $nEvents 100 2018 MC Zpbaryonic2018_1

#./$f_exe /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauD_PromptReco_09.root fullLumi_TauD_PromptReco.root -1 1000 2018 DATA TauD_PromptReco_09
#./$f_exe /hdfs//store/user/jmadhusu/2018_skimmed/tautau/DY2JetsToLL_03.root DY2JetsToLL_03.root -1 1000 2018 MC DY1JetsToLL_00
#./$f_exe /hdfs//store/user/jmadhusu/2018_skimmed/tautau/GluGluZH_HToWW_00.root GluGluZH_HToWW_00.root -1 1000 2018 MC GluGluZH_HT

#./$f_exe /hdfs/store/user/bsahu/Resolved_ZPB_signal_sample_17032023/2017_skimmed/signal/hadd_postAN_inp/Signal_ZpBaryonic_2017_1.root Zpbaryonic2017_1.root $nEvents 1000 2018 MC Zpbaryonic2017_1
#./$f_exe /hdfs/store/user/bsahu/Resolved_ZPB_signal_sample_17032023/2017_skimmed/signal/hadd_postAN_inp/Signal_ZpBaryonic_2017_10.root Signal_ZpBaryonic_2018_10.root -1 1000 2018 MC Signal_ZpBaryonic_2017_10 
#./$f_exe /hdfs/store/user/bsahu/Resolved_ZPB_signal_sample_17032023/2017_skimmed/signal/hadd_postAN_inp/Signal_ZpBaryonic_2017_16.root Signal_ZpBaryonic_2018_16.root -1 1000 2018 MC Signal_ZpBaryonic_2017_16 
#./$f_exe /hdfs/store/user/bsahu/Resolved_ZPB_signal_sample_17032023/2017_skimmed/signal/hadd_postAN_inp/Signal_ZpBaryonic_2017_7.root Signal_ZpBaryonic_2018_7.root -1 1000 2018 MC Signal_ZpBaryonic_2018_7
#./$f_exe /hdfs/store/user/bsahu/Resolved_ZPB_signal_sample_17032023/2018_skimmed_in2017skimmer/signal/hadd_postAN_inp/Signal_ZpBaryonic_2018_7.root Zpbaryonic2017_7.root $nEvents 100 2018 MC Zpbaryonic2017_7

#./$f_exe /nfs_scratch/bsahu/MonoHiggs_Nov2022_V2/CMSSW_12_3_5/src/Skim_2018/signal/Output_Ntuple_signal_FE_8.root  Zpbaryonic2018_1.root $nEvents 100 2018 MC Zpbaryonic2018_1

#./$f_exe /hdfs/store/user/jmadhusu/2018_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2018_32.root Zpbaryonic2018_32.root -1 1000 2018 MC Zpbaryonic2018_32 
#./$f_exe /hdfs/store/user/jmadhusu/2018_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2018_36.root Zpbaryonic2018_36.root -1 1000 2018 MC Zpbaryonic2018_36 

end=`date +%s`
runtime=$((end-start))
echo "Runtime = $runtime"
echo "Elapsed: $(($runtime / 3600))hrs $((($runtime / 60) % 60))min $(($runtime % 60))sec"
