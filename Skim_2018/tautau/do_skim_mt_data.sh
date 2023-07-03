
./rootcom skimm_tt_2018 analyze_tautau_skim 
outDir="Out_DATA_$(date +"%d-%m-%Y_%H-%M")" 
mkdir $outDir 

/./MakeCondorFiles.csh analyze_tautau_skim /hdfs/store/user/jmadhusu/data2018_28Aug2022/Tau/crab_job_TauA/220829_023019/0000/ TauA_00.root -1 1000 2018 DATA TauA_00 $outDir 
/./MakeCondorFiles.csh analyze_tautau_skim /hdfs/store/user/jmadhusu/data2018_28Aug2022/Tau/crab_job_TauA/220829_023019/0001/ TauA_01.root -1 1000 2018 DATA TauA_01 $outDir 
/./MakeCondorFiles.csh analyze_tautau_skim /hdfs/store/user/jmadhusu/data2018_28Aug2022/Tau/crab_job_TauB/220829_023043/0000/ TauB_00.root -1 1000 2018 DATA TauB_00 $outDir 
/./MakeCondorFiles.csh analyze_tautau_skim /hdfs/store/user/jmadhusu/data2018_28Aug2022/Tau/crab_job_TauC/220829_023106/0000/ TauC_00.root -1 1000 2018 DATA TauC_00 $outDir 
/./MakeCondorFiles.csh analyze_tautau_skim /hdfs/store/user/jmadhusu/data2018_28Aug2022/Tau/crab_job_TauD_PromptReco/220829_023256/0000/ TauD_PromptReco_00.root -1 1000 2018 DATA TauD_PromptReco_00 $outDir 
/./MakeCondorFiles.csh analyze_tautau_skim /hdfs/store/user/jmadhusu/data2018_28Aug2022/Tau/crab_job_TauD_PromptReco/220829_023256/0001/ TauD_PromptReco_01.root -1 1000 2018 DATA TauD_PromptReco_01 $outDir 
/./MakeCondorFiles.csh analyze_tautau_skim /hdfs/store/user/jmadhusu/data2018_28Aug2022/Tau/crab_job_TauD_PromptReco/220829_023256/0002/ TauD_PromptReco_02.root -1 1000 2018 DATA TauD_PromptReco_02 $outDir 
/./MakeCondorFiles.csh analyze_tautau_skim /hdfs/store/user/jmadhusu/data2018_28Aug2022/Tau/crab_job_TauD_PromptReco/220829_023256/0003/ TauD_PromptReco_03.root -1 1000 2018 DATA TauD_PromptReco_03 $outDir 
/./MakeCondorFiles.csh analyze_tautau_skim /hdfs/store/user/jmadhusu/data2018_28Aug2022/Tau/crab_job_TauD_PromptReco/220829_023256/0004/ TauD_PromptReco_04.root -1 1000 2018 DATA TauD_PromptReco_04 $outDir 
