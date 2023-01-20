
outDir="Out_$(date +"%d-%m-%Y_%H-%M")" 
mkdir $outDir 



###########################  DATA #########################
./rootcom etau_analyzer analyze_etau  
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/blinded_data/2017/etau/SingleElectron_EraB_00.root SingleElectron_EraB_00.root -1 1000 2017 DATA SingleElectron_EraB_00 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/blinded_data/2017/etau/SingleElectron_EraB_01.root SingleElectron_EraB_01.root -1 1000 2017 DATA SingleElectron_EraB_01 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/blinded_data/2017/etau/SingleElectron_EraC_00.root SingleElectron_EraC_00.root -1 1000 2017 DATA SingleElectron_EraC_00 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/blinded_data/2017/etau/SingleElectron_EraC_01.root SingleElectron_EraC_01.root -1 1000 2017 DATA SingleElectron_EraC_01 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/blinded_data/2017/etau/SingleElectron_EraC_02.root SingleElectron_EraC_02.root -1 1000 2017 DATA SingleElectron_EraC_02 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/blinded_data/2017/etau/SingleElectron_EraC_03.root SingleElectron_EraC_03.root -1 1000 2017 DATA SingleElectron_EraC_03 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/blinded_data/2017/etau/SingleElectron_EraC_04.root SingleElectron_EraC_04.root -1 1000 2017 DATA SingleElectron_EraC_04 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/blinded_data/2017/etau/SingleElectron_EraD_00.root SingleElectron_EraD_00.root -1 1000 2017 DATA SingleElectron_EraD_00 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/blinded_data/2017/etau/SingleElectron_EraD_01.root SingleElectron_EraD_01.root -1 1000 2017 DATA SingleElectron_EraD_01 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/blinded_data/2017/etau/SingleElectron_EraD_02.root SingleElectron_EraD_02.root -1 1000 2017 DATA SingleElectron_EraD_02 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/blinded_data/2017/etau/SingleElectron_EraE_00.root SingleElectron_EraE_00.root -1 1000 2017 DATA SingleElectron_EraE_00 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/blinded_data/2017/etau/SingleElectron_EraE_01.root SingleElectron_EraE_01.root -1 1000 2017 DATA SingleElectron_EraE_01 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/blinded_data/2017/etau/SingleElectron_EraE_02.root SingleElectron_EraE_02.root -1 1000 2017 DATA SingleElectron_EraE_02 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/blinded_data/2017/etau/SingleElectron_EraE_03.root SingleElectron_EraE_03.root -1 1000 2017 DATA SingleElectron_EraE_03 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/blinded_data/2017/etau/SingleElectron_EraE_04.root SingleElectron_EraE_04.root -1 1000 2017 DATA SingleElectron_EraE_04 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/blinded_data/2017/etau/SingleElectron_EraF_00.root SingleElectron_EraF_00.root -1 1000 2017 DATA SingleElectron_EraF_00 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/blinded_data/2017/etau/SingleElectron_EraF_01.root SingleElectron_EraF_01.root -1 1000 2017 DATA SingleElectron_EraF_01 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/blinded_data/2017/etau/SingleElectron_EraF_02.root SingleElectron_EraF_02.root -1 1000 2017 DATA SingleElectron_EraF_02 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/blinded_data/2017/etau/SingleElectron_EraF_03.root SingleElectron_EraF_03.root -1 1000 2017 DATA SingleElectron_EraF_03 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/blinded_data/2017/etau/SingleElectron_EraF_04.root SingleElectron_EraF_04.root -1 1000 2017 DATA SingleElectron_EraF_04 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/blinded_data/2017/etau/SingleElectron_EraF_05.root SingleElectron_EraF_05.root -1 1000 2017 DATA SingleElectron_EraF_05 $outDir
