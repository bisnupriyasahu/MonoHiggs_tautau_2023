
outDir="Out_$(date +"%d-%m-%Y_%H-%M")"
mkdir $outDir



###########################  DATA #########################

./rootcom mutau_analyzer analyze_mutau  


./MakeCondorFiles.csh analyze_mutau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/mutau/SingleMuonA_00.root SingleMuonA_full_00.root -1 1000 2018 DATA SingleMuonA_00 $outDir
./MakeCondorFiles.csh analyze_mutau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/mutau/SingleMuonA_01.root SingleMuonA_full_01.root -1 1000 2018 DATA SingleMuonA_01 $outDir
./MakeCondorFiles.csh analyze_mutau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/mutau/SingleMuonA_02.root SingleMuonA_full_02.root -1 1000 2018 DATA SingleMuonA_02 $outDir
./MakeCondorFiles.csh analyze_mutau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/mutau/SingleMuonA_03.root SingleMuonA_full_03.root -1 1000 2018 DATA SingleMuonA_03 $outDir
./MakeCondorFiles.csh analyze_mutau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/mutau/SingleMuonA_04.root SingleMuonA_full_04.root -1 1000 2018 DATA SingleMuonA_04 $outDir
./MakeCondorFiles.csh analyze_mutau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/mutau/SingleMuonA_05.root SingleMuonA_full_05.root -1 1000 2018 DATA SingleMuonA_05 $outDir
./MakeCondorFiles.csh analyze_mutau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/mutau/SingleMuonA_06.root SingleMuonA_full_06.root -1 1000 2018 DATA SingleMuonA_06 $outDir
./MakeCondorFiles.csh analyze_mutau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/mutau/SingleMuonB_00.root SingleMuonB_full_00.root -1 1000 2018 DATA SingleMuonB_00 $outDir
./MakeCondorFiles.csh analyze_mutau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/mutau/SingleMuonB_01.root SingleMuonB_full_01.root -1 1000 2018 DATA SingleMuonB_01 $outDir
./MakeCondorFiles.csh analyze_mutau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/mutau/SingleMuonB_02.root SingleMuonB_full_02.root -1 1000 2018 DATA SingleMuonB_02 $outDir
./MakeCondorFiles.csh analyze_mutau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/mutau/SingleMuonB_03.root SingleMuonB_full_03.root -1 1000 2018 DATA SingleMuonB_03 $outDir
./MakeCondorFiles.csh analyze_mutau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/mutau/SingleMuonB_04.root SingleMuonB_full_04.root -1 1000 2018 DATA SingleMuonB_04 $outDir
./MakeCondorFiles.csh analyze_mutau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/mutau/SingleMuonC_00.root SingleMuonC_full_00.root -1 1000 2018 DATA SingleMuonC_00 $outDir
./MakeCondorFiles.csh analyze_mutau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/mutau/SingleMuonC_01.root SingleMuonC_full_01.root -1 1000 2018 DATA SingleMuonC_01 $outDir
./MakeCondorFiles.csh analyze_mutau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/mutau/SingleMuonC_02.root SingleMuonC_full_02.root -1 1000 2018 DATA SingleMuonC_02 $outDir
./MakeCondorFiles.csh analyze_mutau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/mutau/SingleMuonC_03.root SingleMuonC_full_03.root -1 1000 2018 DATA SingleMuonC_03 $outDir
./MakeCondorFiles.csh analyze_mutau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/mutau/SingleMuonD_PromptReco_00.root SingleMuonD_full_PromptReco -1 1000 2018 DATA SingleMuonD_PromptReco_00 $outDir
./MakeCondorFiles.csh analyze_mutau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/mutau/SingleMuonD_PromptReco_01.root SingleMuonD_full_PromptReco -1 1000 2018 DATA SingleMuonD_PromptReco_01 $outDir
./MakeCondorFiles.csh analyze_mutau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/mutau/SingleMuonD_PromptReco_02.root SingleMuonD_full_PromptReco -1 1000 2018 DATA SingleMuonD_PromptReco_02 $outDir
./MakeCondorFiles.csh analyze_mutau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/mutau/SingleMuonD_PromptReco_03.root SingleMuonD_full_PromptReco -1 1000 2018 DATA SingleMuonD_PromptReco_03 $outDir
./MakeCondorFiles.csh analyze_mutau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/mutau/SingleMuonD_PromptReco_04.root SingleMuonD_full_PromptReco -1 1000 2018 DATA SingleMuonD_PromptReco_04 $outDir
./MakeCondorFiles.csh analyze_mutau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/mutau/SingleMuonD_PromptReco_05.root SingleMuonD_full_PromptReco -1 1000 2018 DATA SingleMuonD_PromptReco_05 $outDir
./MakeCondorFiles.csh analyze_mutau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/mutau/SingleMuonD_PromptReco_06.root SingleMuonD_full_PromptReco -1 1000 2018 DATA SingleMuonD_PromptReco_06 $outDir
./MakeCondorFiles.csh analyze_mutau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/mutau/SingleMuonD_PromptReco_07.root SingleMuonD_full_PromptReco -1 1000 2018 DATA SingleMuonD_PromptReco_07 $outDir
./MakeCondorFiles.csh analyze_mutau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/mutau/SingleMuonD_PromptReco_08.root SingleMuonD_full_PromptReco -1 1000 2018 DATA SingleMuonD_PromptReco_08 $outDir
./MakeCondorFiles.csh analyze_mutau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/mutau/SingleMuonD_PromptReco_09.root SingleMuonD_full_PromptReco -1 1000 2018 DATA SingleMuonD_PromptReco_09 $outDir
./MakeCondorFiles.csh analyze_mutau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/mutau/SingleMuonD_PromptReco_10.root SingleMuonD_full_PromptReco -1 1000 2018 DATA SingleMuonD_PromptReco_10 $outDir
./MakeCondorFiles.csh analyze_mutau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/mutau/SingleMuonD_PromptReco_11.root SingleMuonD_full_PromptReco -1 1000 2018 DATA SingleMuonD_PromptReco_11 $outDir
