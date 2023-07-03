
outDir="Out_$(date +"%d-%m-%Y_%H-%M")" 
mkdir $outDir 

###########################   MC  #########################

./rootcom etau_analyzer analyze_etau  


./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/etau/TTToHadronic_TuneCP5_00.root TTToHadronic_TuneCP5_00.root -1 1000 2017 MC TTToHadronic_TuneCP5_00 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/etau/TTToHadronic_TuneCP5_01.root TTToHadronic_TuneCP5_01.root -1 1000 2017 MC TTToHadronic_TuneCP5_01 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/etau/TTToHadronic_TuneCP5_02.root TTToHadronic_TuneCP5_02.root -1 1000 2017 MC TTToHadronic_TuneCP5_02 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/etau/TTToHadronic_TuneCP5_03.root TTToHadronic_TuneCP5_03.root -1 1000 2017 MC TTToHadronic_TuneCP5_03 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/etau/TTToHadronic_TuneCP5_04.root TTToHadronic_TuneCP5_04.root -1 1000 2017 MC TTToHadronic_TuneCP5_04 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/etau/TTToHadronic_TuneCP5_05.root TTToHadronic_TuneCP5_05.root -1 1000 2017 MC TTToHadronic_TuneCP5_05 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/etau/TTToHadronic_TuneCP5_06.root TTToHadronic_TuneCP5_06.root -1 1000 2017 MC TTToHadronic_TuneCP5_06 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/etau/TTToHadronic_TuneCP5_07.root TTToHadronic_TuneCP5_07.root -1 1000 2017 MC TTToHadronic_TuneCP5_07 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/etau/TTToHadronic_TuneCP5_08.root TTToHadronic_TuneCP5_08.root -1 1000 2017 MC TTToHadronic_TuneCP5_08 $outDir
