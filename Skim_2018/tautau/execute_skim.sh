#!/bin/bash
set -e  # exit when any command fails

# keep track of the last executed command
trap 'last_command=$current_command; current_command=$BASH_COMMAND' DEBUG
# echo an error message before exiting
trap 'echo "\"${last_command}\" command filed with exit code $?."' EXIT

./rootcom skimm_tt_2018 analyze_tautau_updated

outFile="outSkimmed_mt.root"
nEvents=100000
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

outFile="outSkimmed_tt_dy_1.root"
echo "dy sample analysis....."
./analyze_tautau_updated /hdfs/store/user/jmadhusu/MC2018_Autumn18_monoHiggs_17Oct2022/TTToSemiLeptonic_TuneCP5_13TeV-powheg-pythia8/crab_job_TTToSemiLeptonic_powheg/221017_162757/0000/ $outFile $nEvents 1000 2018 MC
echo "out put written to $outFile"

#./analyze_tautau_updated /hdfs/store/user/jmadhusu/MC2018_Autumn18_monoHiggs_11May2021/DY1JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/crab_job_DY1JetsToLL/210512_034216/0000/ $outFile $nEvents 1000 2018 MC


#outFile="outSkimmed_tt_data.root"
#echo "data sample analysis....."
#./analyze_tautau_updated /hdfs/store/user/jmadhusu/data2018_16May2021/Tau/crab_job_TauD_PromptReco/210516_202954/0001/ $outFile $nEvents 1000 2018 DATA
#echo "out put written to $outFile"


