
outDir="Out_$(date +"%d-%m-%Y_%H-%M")" 
mkdir $outDir 


###########################  DATA #########################
#root://cmsxrootd.hep.wisc.edu/
#root://cmsxrootd.hep.wisc.edu//
./rootcom tautau_analyzer analyze_tautau  

./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/tautau_new/Tau_EraB_00.root fullLumi_Tau_EraB_00.root -1 1000 2017 DATA Tau_EraB_00 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/tautau_new/Tau_EraB_01.root fullLumi_Tau_EraB_01.root -1 1000 2017 DATA Tau_EraB_01 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/tautau_new/Tau_EraC_00.root fullLumi_Tau_EraC_00.root -1 1000 2017 DATA Tau_EraC_00 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/tautau_new/Tau_EraC_01.root fullLumi_Tau_EraC_01.root -1 1000 2017 DATA Tau_EraC_01 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/tautau_new/Tau_EraC_02.root fullLumi_Tau_EraC_02.root -1 1000 2017 DATA Tau_EraC_02 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/tautau_new/Tau_EraC_03.root fullLumi_Tau_EraC_03.root -1 1000 2017 DATA Tau_EraC_03 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/tautau_new/Tau_EraD_00.root fullLumi_Tau_EraD_00.root -1 1000 2017 DATA Tau_EraD_00 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/tautau_new/Tau_EraD_01.root fullLumi_Tau_EraD_01.root -1 1000 2017 DATA Tau_EraD_01 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/tautau_new/Tau_EraD_02.root fullLumi_Tau_EraD_02.root -1 1000 2017 DATA Tau_EraD_02 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/tautau_new/Tau_EraE_00.root fullLumi_Tau_EraE_00.root -1 1000 2017 DATA Tau_EraE_00 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/tautau_new/Tau_EraE_01.root fullLumi_Tau_EraE_01.root -1 1000 2017 DATA Tau_EraE_01 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/tautau_new/Tau_EraE_02.root fullLumi_Tau_EraE_02.root -1 1000 2017 DATA Tau_EraE_02 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/tautau_new/Tau_EraE_03.root fullLumi_Tau_EraE_03.root -1 1000 2017 DATA Tau_EraE_03 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/tautau_new/Tau_EraF_00.root fullLumi_Tau_EraF_00.root -1 1000 2017 DATA Tau_EraF_00 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/tautau_new/Tau_EraF_01.root fullLumi_Tau_EraF_01.root -1 1000 2017 DATA Tau_EraF_01 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/tautau_new/Tau_EraF_02.root fullLumi_Tau_EraF_02.root -1 1000 2017 DATA Tau_EraF_02 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/tautau_new/Tau_EraF_03.root fullLumi_Tau_EraF_03.root -1 1000 2017 DATA Tau_EraF_03 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/tautau_new/Tau_EraF_04.root fullLumi_Tau_EraF_04.root -1 1000 2017 DATA Tau_EraF_04 $outDir
