
outDir="Out_$(date +"%d-%m-%Y_%H-%M")" 
mkdir $outDir 

###########################  DATA #########################

./rootcom mutau_analyzer analyze_mutau  

./MakeCondorFiles.csh analyze_mutau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/mutau/SingleMuon_EraB_00.root fullLumi_SingleMuon_EraB_00.root -1 1000 2017 DATA SingleMuon_EraB_00 $outDir
./MakeCondorFiles.csh analyze_mutau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/mutau/SingleMuon_EraB_01.root fullLumi_SingleMuon_EraB_01.root -1 1000 2017 DATA SingleMuon_EraB_01 $outDir
./MakeCondorFiles.csh analyze_mutau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/mutau/SingleMuon_EraB_02.root fullLumi_SingleMuon_EraB_02.root -1 1000 2017 DATA SingleMuon_EraB_02 $outDir
./MakeCondorFiles.csh analyze_mutau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/mutau/SingleMuon_EraB_03.root fullLumi_SingleMuon_EraB_03.root -1 1000 2017 DATA SingleMuon_EraB_03 $outDir
./MakeCondorFiles.csh analyze_mutau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/mutau/SingleMuon_EraC_00.root fullLumi_SingleMuon_EraC_00.root -1 1000 2017 DATA SingleMuon_EraC_00 $outDir
./MakeCondorFiles.csh analyze_mutau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/mutau/SingleMuon_EraC_01.root fullLumi_SingleMuon_EraC_01.root -1 1000 2017 DATA SingleMuon_EraC_01 $outDir
./MakeCondorFiles.csh analyze_mutau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/mutau/SingleMuon_EraC_02.root fullLumi_SingleMuon_EraC_02.root -1 1000 2017 DATA SingleMuon_EraC_02 $outDir
./MakeCondorFiles.csh analyze_mutau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/mutau/SingleMuon_EraC_03.root fullLumi_SingleMuon_EraC_03.root -1 1000 2017 DATA SingleMuon_EraC_03 $outDir
./MakeCondorFiles.csh analyze_mutau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/mutau/SingleMuon_EraC_04.root fullLumi_SingleMuon_EraC_04.root -1 1000 2017 DATA SingleMuon_EraC_04 $outDir
./MakeCondorFiles.csh analyze_mutau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/mutau/SingleMuon_EraC_05.root fullLumi_SingleMuon_EraC_05.root -1 1000 2017 DATA SingleMuon_EraC_05 $outDir
./MakeCondorFiles.csh analyze_mutau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/mutau/SingleMuon_EraD_00.root fullLumi_SingleMuon_EraD_00.root -1 1000 2017 DATA SingleMuon_EraD_00 $outDir
./MakeCondorFiles.csh analyze_mutau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/mutau/SingleMuon_EraD_01.root fullLumi_SingleMuon_EraD_01.root -1 1000 2017 DATA SingleMuon_EraD_01 $outDir
./MakeCondorFiles.csh analyze_mutau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/mutau/SingleMuon_EraD_02.root fullLumi_SingleMuon_EraD_02.root -1 1000 2017 DATA SingleMuon_EraD_02 $outDir
./MakeCondorFiles.csh analyze_mutau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/mutau/SingleMuon_EraE_00.root fullLumi_SingleMuon_EraE_00.root -1 1000 2017 DATA SingleMuon_EraE_00 $outDir
./MakeCondorFiles.csh analyze_mutau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/mutau/SingleMuon_EraE_01.root fullLumi_SingleMuon_EraE_01.root -1 1000 2017 DATA SingleMuon_EraE_01 $outDir
./MakeCondorFiles.csh analyze_mutau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/mutau/SingleMuon_EraE_02.root fullLumi_SingleMuon_EraE_02.root -1 1000 2017 DATA SingleMuon_EraE_02 $outDir
./MakeCondorFiles.csh analyze_mutau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/mutau/SingleMuon_EraE_03.root fullLumi_SingleMuon_EraE_03.root -1 1000 2017 DATA SingleMuon_EraE_03 $outDir
./MakeCondorFiles.csh analyze_mutau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/mutau/SingleMuon_EraE_04.root fullLumi_SingleMuon_EraE_04.root -1 1000 2017 DATA SingleMuon_EraE_04 $outDir
./MakeCondorFiles.csh analyze_mutau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/mutau/SingleMuon_EraE_05.root fullLumi_SingleMuon_EraE_05.root -1 1000 2017 DATA SingleMuon_EraE_05 $outDir
./MakeCondorFiles.csh analyze_mutau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/mutau/SingleMuon_EraF_00.root fullLumi_SingleMuon_EraF_00.root -1 1000 2017 DATA SingleMuon_EraF_00 $outDir
./MakeCondorFiles.csh analyze_mutau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/mutau/SingleMuon_EraF_01.root fullLumi_SingleMuon_EraF_01.root -1 1000 2017 DATA SingleMuon_EraF_01 $outDir
./MakeCondorFiles.csh analyze_mutau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/mutau/SingleMuon_EraF_02.root fullLumi_SingleMuon_EraF_02.root -1 1000 2017 DATA SingleMuon_EraF_02 $outDir
./MakeCondorFiles.csh analyze_mutau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/mutau/SingleMuon_EraF_03.root fullLumi_SingleMuon_EraF_03.root -1 1000 2017 DATA SingleMuon_EraF_03 $outDir
./MakeCondorFiles.csh analyze_mutau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/mutau/SingleMuon_EraF_04.root fullLumi_SingleMuon_EraF_04.root -1 1000 2017 DATA SingleMuon_EraF_04 $outDir
./MakeCondorFiles.csh analyze_mutau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/mutau/SingleMuon_EraF_05.root fullLumi_SingleMuon_EraF_05.root -1 1000 2017 DATA SingleMuon_EraF_05 $outDir
./MakeCondorFiles.csh analyze_mutau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/mutau/SingleMuon_EraF_06.root fullLumi_SingleMuon_EraF_06.root -1 1000 2017 DATA SingleMuon_EraF_06 $outDir
./MakeCondorFiles.csh analyze_mutau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/mutau/SingleMuon_EraF_07.root fullLumi_SingleMuon_EraF_07.root -1 1000 2017 DATA SingleMuon_EraF_07 $outDir
./MakeCondorFiles.csh analyze_mutau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/mutau/SingleMuon_EraF_08.root fullLumi_SingleMuon_EraF_08.root -1 1000 2017 DATA SingleMuon_EraF_08 $outDir
