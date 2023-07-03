# search_dir=/hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/DY1JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/crab_job_DY1JetsToLL_M-50_TuneCP5/220827_053138/0000/
# count=0
# for entry in "$search_dir"/*
# do
#   count=$((count+1))
#   echo "$entry"
# done
# echo $count

./rootcom skimm_mt_2017 analyze_etau_skim 
outDir="Out_MC_$(date +"%d-%m-%Y_%H-%M")" 
mkdir $outDir 

mkdir -p /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/DY1JetsToLL_M-50_TuneCP5_00 
./MakeCondorFiles.csh analyze_etau_skim /store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/DY1JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/crab_job_DY1JetsToLL_M-50_TuneCP5/220827_053138/0000 DY1JetsToLL_M-50_TuneCP5_00 -1 1000 2017 MC DY1JetsToLL_M-50_TuneCP5_00 $outDir 
