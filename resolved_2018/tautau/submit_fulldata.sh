
outDir="Out_$(date +"%d-%m-%Y_%H-%M")"
mkdir $outDir



###########################  DATA #########################

./rootcom tautau_analyzer analyze_tautau  


./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/tautau/TauA_00.root fullLumi_TauA_00.root -1 1000 2018 DATA TauA_00 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/tautau/TauA_01.root fullLumi_TauA_01.root -1 1000 2018 DATA TauA_01 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/tautau/TauA_02.root fullLumi_TauA_02.root -1 1000 2018 DATA TauA_02 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/tautau/TauA_03.root fullLumi_TauA_03.root -1 1000 2018 DATA TauA_03 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/tautau/TauA_04.root fullLumi_TauA_04.root -1 1000 2018 DATA TauA_04 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/tautau/TauB_00.root fullLumi_TauB_00.root -1 1000 2018 DATA TauB_00 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/tautau/TauB_01.root fullLumi_TauB_01.root -1 1000 2018 DATA TauB_01 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/tautau/TauB_02.root fullLumi_TauB_02.root -1 1000 2018 DATA TauB_02 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/tautau/TauC_00.root fullLumi_TauC_00.root -1 1000 2018 DATA TauC_00 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/tautau/TauC_01.root fullLumi_TauC_01.root -1 1000 2018 DATA TauC_01 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/tautau/TauC_02.root fullLumi_TauC_02.root -1 1000 2018 DATA TauC_02 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/tautau/TauD_PromptReco_00.root fullLumi_TauD_PromptReco_00.root -1 1000 2018 DATA TauD_PromptReco_00 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/tautau/TauD_PromptReco_01.root fullLumi_TauD_PromptReco_01.root -1 1000 2018 DATA TauD_PromptReco_01 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/tautau/TauD_PromptReco_02.root fullLumi_TauD_PromptReco_02.root -1 1000 2018 DATA TauD_PromptReco_02 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/tautau/TauD_PromptReco_03.root fullLumi_TauD_PromptReco_03.root -1 1000 2018 DATA TauD_PromptReco_03 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/tautau/TauD_PromptReco_04.root fullLumi_TauD_PromptReco_04.root -1 1000 2018 DATA TauD_PromptReco_04 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/tautau/TauD_PromptReco_05.root fullLumi_TauD_PromptReco_05.root -1 1000 2018 DATA TauD_PromptReco_05 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/tautau/TauD_PromptReco_06.root fullLumi_TauD_PromptReco_06.root -1 1000 2018 DATA TauD_PromptReco_06 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/tautau/TauD_PromptReco_07.root fullLumi_TauD_PromptReco_07.root -1 1000 2018 DATA TauD_PromptReco_07 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/tautau/TauD_PromptReco_08.root fullLumi_TauD_PromptReco_08.root -1 1000 2018 DATA TauD_PromptReco_08 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/tautau/TauD_PromptReco_09.root fullLumi_TauD_PromptReco_09.root -1 1000 2018 DATA TauD_PromptReco_09 $outDir
