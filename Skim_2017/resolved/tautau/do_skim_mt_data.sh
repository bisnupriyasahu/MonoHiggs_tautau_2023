
./rootcom skimm_tt_2017 analyze_tautau_skim 
outDir="Out_DATA_$(date +"%d-%m-%Y_%H-%M")" 
mkdir $outDir 

./MakeCondorFiles.csh analyze_tautau_skim root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/data2017_31Mar2018_27Aug2022/Tau/crab_job_Tau_EraB/220827_055255/0000/ Tau_EraB_00.root -1 1000 2017 DATA Tau_EraB_00 $outDir 
./MakeCondorFiles.csh analyze_tautau_skim root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/data2017_31Mar2018_27Aug2022/Tau/crab_job_Tau_EraB/220827_055255/0001/ Tau_EraB_01.root -1 1000 2017 DATA Tau_EraB_01 $outDir 
./MakeCondorFiles.csh analyze_tautau_skim root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/data2017_31Mar2018_27Aug2022/Tau/crab_job_Tau_EraC/220827_055321/0000/ Tau_EraC_00.root -1 1000 2017 DATA Tau_EraC_00 $outDir 
./MakeCondorFiles.csh analyze_tautau_skim root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/data2017_31Mar2018_27Aug2022/Tau/crab_job_Tau_EraC/220827_055321/0001/ Tau_EraC_01.root -1 1000 2017 DATA Tau_EraC_01 $outDir 
./MakeCondorFiles.csh analyze_tautau_skim root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/data2017_31Mar2018_27Aug2022/Tau/crab_job_Tau_EraC/220827_055321/0002/ Tau_EraC_02.root -1 1000 2017 DATA Tau_EraC_02 $outDir 
./MakeCondorFiles.csh analyze_tautau_skim root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/data2017_31Mar2018_27Aug2022/Tau/crab_job_Tau_EraC/220827_055321/0003/ Tau_EraC_03.root -1 1000 2017 DATA Tau_EraC_03 $outDir 
./MakeCondorFiles.csh analyze_tautau_skim root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/data2017_31Mar2018_27Aug2022/Tau/crab_job_Tau_EraD/220827_055347/0000/ Tau_EraD_00.root -1 1000 2017 DATA Tau_EraD_00 $outDir 
./MakeCondorFiles.csh analyze_tautau_skim root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/data2017_31Mar2018_27Aug2022/Tau/crab_job_Tau_EraD/220827_055347/0001/ Tau_EraD_01.root -1 1000 2017 DATA Tau_EraD_01 $outDir 
./MakeCondorFiles.csh analyze_tautau_skim root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/data2017_31Mar2018_27Aug2022/Tau/crab_job_Tau_EraE/220827_055414/0000/ Tau_EraE_00.root -1 1000 2017 DATA Tau_EraE_00 $outDir 
./MakeCondorFiles.csh analyze_tautau_skim root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/data2017_31Mar2018_27Aug2022/Tau/crab_job_Tau_EraE/220827_055414/0001/ Tau_EraE_01.root -1 1000 2017 DATA Tau_EraE_01 $outDir 
./MakeCondorFiles.csh analyze_tautau_skim root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/data2017_31Mar2018_27Aug2022/Tau/crab_job_Tau_EraE/220827_055414/0002/ Tau_EraE_02.root -1 1000 2017 DATA Tau_EraE_02 $outDir 
./MakeCondorFiles.csh analyze_tautau_skim root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/data2017_31Mar2018_27Aug2022/Tau/crab_job_Tau_EraF/220827_055439/0000/ Tau_EraF_00.root -1 1000 2017 DATA Tau_EraF_00 $outDir 
./MakeCondorFiles.csh analyze_tautau_skim root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/data2017_31Mar2018_27Aug2022/Tau/crab_job_Tau_EraF/220827_055439/0001/ Tau_EraF_01.root -1 1000 2017 DATA Tau_EraF_01 $outDir 
./MakeCondorFiles.csh analyze_tautau_skim root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/data2017_31Mar2018_27Aug2022/Tau/crab_job_Tau_EraF/220827_055439/0002/ Tau_EraF_02.root -1 1000 2017 DATA Tau_EraF_02 $outDir 
./MakeCondorFiles.csh analyze_tautau_skim root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/data2017_31Mar2018_27Aug2022/Tau/crab_job_Tau_EraF/220827_055439/0003/ Tau_EraF_03.root -1 1000 2017 DATA Tau_EraF_03 $outDir 
