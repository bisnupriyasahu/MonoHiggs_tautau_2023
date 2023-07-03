
./rootcom skimm_tt_2017 analyze_tautau_skim 
outDir="Out_MC_$(date +"%d-%m-%Y_%H-%M")" 
mkdir $outDir 

#./MakeCondorFiles.csh analyze_tautau_skim /hdfs/store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/DY1JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/crab_job_DY1JetsToLL_M-50_TuneCP5/220827_053138/0000/ DY1JetsToLL_M-50_TuneCP5_00.root -1 1000 2017 MC DY1JetsToLL_M-50_TuneCP5_00 $outDir 
./MakeCondorFiles.csh analyze_tautau_skim root://cmsxrootd.hep.wisc.edu///store/user/jmadhusu/MC2017_12Apr2018_monoHiggs_27Aug2022/DY1JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/crab_job_DY1JetsToLL_M-50_TuneCP5/220827_053138/0000/ DY1JetsToLL_M-50_TuneCP5_00.root -1 1000 2017 MC DY1JetsToLL_M-50_TuneCP5_00 $outDir 
