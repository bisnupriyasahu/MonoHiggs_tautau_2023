
outDir="Out_$(date +"%d-%m-%Y_%H-%M")"
mkdir $outDir



###########################  DATA #########################

./rootcom etau_analyzer analyze_etau  

#fullLumi_EGamma2018

./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/EGamma2018A_00.root fullLumi_EGamma2018A_00.root -1 1000 2018 DATA EGamma2018A_00 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/EGamma2018A_01.root fullLumi_EGamma2018A_01.root -1 1000 2018 DATA EGamma2018A_01 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/EGamma2018A_02.root fullLumi_EGamma2018A_02.root -1 1000 2018 DATA EGamma2018A_02 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/EGamma2018A_03.root fullLumi_EGamma2018A_03.root -1 1000 2018 DATA EGamma2018A_03 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/EGamma2018A_04.root fullLumi_EGamma2018A_04.root -1 1000 2018 DATA EGamma2018A_04 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/EGamma2018A_05.root fullLumi_EGamma2018A_05.root -1 1000 2018 DATA EGamma2018A_05 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/EGamma2018A_06.root fullLumi_EGamma2018A_06.root -1 1000 2018 DATA EGamma2018A_06 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/EGamma2018A_07.root fullLumi_EGamma2018A_07.root -1 1000 2018 DATA EGamma2018A_07 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/EGamma2018A_08.root fullLumi_EGamma2018A_08.root -1 1000 2018 DATA EGamma2018A_08 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/EGamma2018A_09.root fullLumi_EGamma2018A_09.root -1 1000 2018 DATA EGamma2018A_09 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/EGamma2018A_10.root fullLumi_EGamma2018A_10.root -1 1000 2018 DATA EGamma2018A_10 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/EGamma2018B_00.root fullLumi_EGamma2018B_00.root -1 1000 2018 DATA EGamma2018B_00 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/EGamma2018B_01.root fullLumi_EGamma2018B_01.root -1 1000 2018 DATA EGamma2018B_01 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/EGamma2018B_02.root fullLumi_EGamma2018B_02.root -1 1000 2018 DATA EGamma2018B_02 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/EGamma2018B_03.root fullLumi_EGamma2018B_03.root -1 1000 2018 DATA EGamma2018B_03 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/EGamma2018B_04.root fullLumi_EGamma2018B_04.root -1 1000 2018 DATA EGamma2018B_04 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/EGamma2018B_05.root fullLumi_EGamma2018B_05.root -1 1000 2018 DATA EGamma2018B_05 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/EGamma2018C_00.root fullLumi_EGamma2018C_00.root -1 1000 2018 DATA EGamma2018C_00 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/EGamma2018C_01.root fullLumi_EGamma2018C_01.root -1 1000 2018 DATA EGamma2018C_01 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/EGamma2018C_02.root fullLumi_EGamma2018C_02.root -1 1000 2018 DATA EGamma2018C_02 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/EGamma2018C_03.root fullLumi_EGamma2018C_03.root -1 1000 2018 DATA EGamma2018C_03 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/EGamma2018C_04.root fullLumi_EGamma2018C_04.root -1 1000 2018 DATA EGamma2018C_04 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/EGamma2018C_05.root fullLumi_EGamma2018C_05.root -1 1000 2018 DATA EGamma2018C_05 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/EGamma2018C_06.root fullLumi_EGamma2018C_06.root -1 1000 2018 DATA EGamma2018C_06 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/EGamma2018C_07.root fullLumi_EGamma2018C_07.root -1 1000 2018 DATA EGamma2018C_07 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/EGamma2018D_00.root fullLumi_EGamma2018D_00.root -1 1000 2018 DATA EGamma2018D_00 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/EGamma2018D_01.root fullLumi_EGamma2018D_01.root -1 1000 2018 DATA EGamma2018D_01 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/EGamma2018D_02.root fullLumi_EGamma2018D_02.root -1 1000 2018 DATA EGamma2018D_02 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/EGamma2018D_03.root fullLumi_EGamma2018D_03.root -1 1000 2018 DATA EGamma2018D_03 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/EGamma2018D_04.root fullLumi_EGamma2018D_04.root -1 1000 2018 DATA EGamma2018D_04 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/EGamma2018D_05.root fullLumi_EGamma2018D_05.root -1 1000 2018 DATA EGamma2018D_05 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/EGamma2018D_06.root fullLumi_EGamma2018D_06.root -1 1000 2018 DATA EGamma2018D_06 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/EGamma2018D_07.root fullLumi_EGamma2018D_07.root -1 1000 2018 DATA EGamma2018D_07 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/EGamma2018D_08.root fullLumi_EGamma2018D_08.root -1 1000 2018 DATA EGamma2018D_08 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/EGamma2018D_09.root fullLumi_EGamma2018D_09.root -1 1000 2018 DATA EGamma2018D_09 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/EGamma2018D_10.root fullLumi_EGamma2018D_10.root -1 1000 2018 DATA EGamma2018D_10 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/EGamma2018D_11.root fullLumi_EGamma2018D_11.root -1 1000 2018 DATA EGamma2018D_11 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/EGamma2018D_12.root fullLumi_EGamma2018D_12.root -1 1000 2018 DATA EGamma2018D_12 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/EGamma2018D_13.root fullLumi_EGamma2018D_13.root -1 1000 2018 DATA EGamma2018D_13 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/EGamma2018D_14.root fullLumi_EGamma2018D_14.root -1 1000 2018 DATA EGamma2018D_14 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/EGamma2018D_15.root fullLumi_EGamma2018D_15.root -1 1000 2018 DATA EGamma2018D_15 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/EGamma2018D_16.root fullLumi_EGamma2018D_16.root -1 1000 2018 DATA EGamma2018D_16 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/EGamma2018D_17.root fullLumi_EGamma2018D_17.root -1 1000 2018 DATA EGamma2018D_17 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/EGamma2018D_18.root fullLumi_EGamma2018D_18.root -1 1000 2018 DATA EGamma2018D_18 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/EGamma2018D_19.root fullLumi_EGamma2018D_19.root -1 1000 2018 DATA EGamma2018D_19 $outDir
