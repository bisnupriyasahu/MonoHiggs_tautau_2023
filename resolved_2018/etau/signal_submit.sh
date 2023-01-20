
outDir="Out_$(date +"%d-%m-%Y_%H-%M")" 
mkdir $outDir 

###########################   MC  #########################

./rootcom signal_analyzer analyze_etau  


./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/signal_gg/MH3_200_MH4_100.root MH3_200_MH4_100.root -1 1000 2018 MC MH3_200_MH4_100 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/signal_gg/MH3_200_MH4_150.root MH3_200_MH4_150.root -1 1000 2018 MC MH3_200_MH4_150 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/signal_gg/MH3_300_MH4_100.root MH3_300_MH4_100.root -1 1000 2018 MC MH3_300_MH4_100 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/signal_gg/MH3_300_MH4_150.root MH3_300_MH4_150.root -1 1000 2018 MC MH3_300_MH4_150 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/signal_gg/MH3_400_MH4_100.root MH3_400_MH4_100.root -1 1000 2018 MC MH3_400_MH4_100 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/signal_gg/MH3_400_MH4_150.root MH3_400_MH4_150.root -1 1000 2018 MC MH3_400_MH4_150 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/signal_gg/MH3_400_MH4_200.root MH3_400_MH4_200.root -1 1000 2018 MC MH3_400_MH4_200 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/signal_gg/MH3_400_MH4_250.root MH3_400_MH4_250.root -1 1000 2018 MC MH3_400_MH4_250 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/signal_gg/MH3_500_MH4_150.root MH3_500_MH4_150.root -1 1000 2018 MC MH3_500_MH4_150 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/signal_gg/MH3_500_MH4_200.root MH3_500_MH4_200.root -1 1000 2018 MC MH3_500_MH4_200 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/signal_gg/MH3_500_MH4_250.root MH3_500_MH4_250.root -1 1000 2018 MC MH3_500_MH4_250 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/signal_gg/MH3_500_MH4_300.root MH3_500_MH4_300.root -1 1000 2018 MC MH3_500_MH4_300 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/signal_gg/MH3_600_MH4_100.root MH3_600_MH4_100.root -1 1000 2018 MC MH3_600_MH4_100 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/signal_gg/MH3_600_MH4_150.root MH3_600_MH4_150.root -1 1000 2018 MC MH3_600_MH4_150 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/signal_gg/MH3_600_MH4_200.root MH3_600_MH4_200.root -1 1000 2018 MC MH3_600_MH4_200 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/signal_gg/MH3_600_MH4_250.root MH3_600_MH4_250.root -1 1000 2018 MC MH3_600_MH4_250 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/signal_gg/MH3_600_MH4_300.root MH3_600_MH4_300.root -1 1000 2018 MC MH3_600_MH4_300 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/signal_gg/MH3_600_MH4_350.root MH3_600_MH4_350.root -1 1000 2018 MC MH3_600_MH4_350 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/signal_gg/MH3_600_MH4_400.root MH3_600_MH4_400.root -1 1000 2018 MC MH3_600_MH4_400 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/signal_gg/MH3_600_MH4_500.root MH3_600_MH4_500.root -1 1000 2018 MC MH3_600_MH4_500 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/signal_gg/MH3_700_MH4_250.root MH3_700_MH4_250.root -1 1000 2018 MC MH3_700_MH4_250 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/signal_gg/MH3_700_MH4_300.root MH3_700_MH4_300.root -1 1000 2018 MC MH3_700_MH4_300 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/signal_gg/MH3_700_MH4_350.root MH3_700_MH4_350.root -1 1000 2018 MC MH3_700_MH4_350 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/signal_gg/MH3_700_MH4_400.root MH3_700_MH4_400.root -1 1000 2018 MC MH3_700_MH4_400 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/signal_gg/MH3_800_MH4_250.root MH3_800_MH4_250.root -1 1000 2018 MC MH3_800_MH4_250 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/signal_gg/MH3_800_MH4_300.root MH3_800_MH4_300.root -1 1000 2018 MC MH3_800_MH4_300 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/signal_gg/MH3_800_MH4_350.root MH3_800_MH4_350.root -1 1000 2018 MC MH3_800_MH4_350 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/signal_gg/MH3_800_MH4_500.root MH3_800_MH4_500.root -1 1000 2018 MC MH3_800_MH4_500 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/signal_gg/MH3_900_MH4_300.root MH3_900_MH4_300.root -1 1000 2018 MC MH3_900_MH4_300 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/signal_gg/MH3_900_MH4_350.root MH3_900_MH4_350.root -1 1000 2018 MC MH3_900_MH4_350 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/signal_gg/MH3_900_MH4_400.root MH3_900_MH4_400.root -1 1000 2018 MC MH3_900_MH4_400 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/signal_gg/MH3_900_MH4_500.root MH3_900_MH4_500.root -1 1000 2018 MC MH3_900_MH4_500 $outDir
