
outDir="Out_$(date +"%d-%m-%Y_%H-%M")" 
mkdir $outDir 

###########################   MC  #########################

./rootcom etau_analyzer analyze_etau  

# ./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/DY1JetsToLL_00.root DY1JetsToLL_00.root -1 1000 2018 MC DY1JetsToLL_00 $outDir
# ./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/DY1JetsToLL_01.root DY1JetsToLL_01.root -1 1000 2018 MC DY1JetsToLL_01 $outDir
# ./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/DY1JetsToLL_02.root DY1JetsToLL_02.root -1 1000 2018 MC DY1JetsToLL_02 $outDir
# ./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/DY1JetsToLL_03.root DY1JetsToLL_03.root -1 1000 2018 MC DY1JetsToLL_03 $outDir
# ./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/DY1JetsToLL_04.root DY1JetsToLL_04.root -1 1000 2018 MC DY1JetsToLL_04 $outDir
# ./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/DY2JetsToLL_00.root DY2JetsToLL_00.root -1 1000 2018 MC DY2JetsToLL_00 $outDir
# ./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/DY2JetsToLL_01.root DY2JetsToLL_01.root -1 1000 2018 MC DY2JetsToLL_01 $outDir
# ./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/DY2JetsToLL_02.root DY2JetsToLL_02.root -1 1000 2018 MC DY2JetsToLL_02 $outDir
# ./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/DY3JetsToLL_00.root DY3JetsToLL_00.root -1 1000 2018 MC DY3JetsToLL_00 $outDir
# ./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/DY4JetsToLL_00.root DY4JetsToLL_00.root -1 1000 2018 MC DY4JetsToLL_00 $outDir

./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/DYJetsToLL_00.root DYJetsToLL_00.root -1 1000 2018 MC DYJetsToLL_00 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/DYJetsToLL_01.root DYJetsToLL_01.root -1 1000 2018 MC DYJetsToLL_01 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/DYJetsToLL_02.root DYJetsToLL_02.root -1 1000 2018 MC DYJetsToLL_02 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/DYJetsToLL_03.root DYJetsToLL_03.root -1 1000 2018 MC DYJetsToLL_03 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/DYJetsToLL_04.root DYJetsToLL_04.root -1 1000 2018 MC DYJetsToLL_04 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/DYJetsToLL_05.root DYJetsToLL_05.root -1 1000 2018 MC DYJetsToLL_05 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/DYJetsToLL_06.root DYJetsToLL_06.root -1 1000 2018 MC DYJetsToLL_06 $outDir
