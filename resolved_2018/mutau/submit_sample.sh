
outDir="Out_$(date +"%d-%m-%Y_%H-%M")" 
mkdir $outDir 

# ###########################   MC  #########################

./rootcom mutau_analyzer analyze_mutau
./MakeCondorFiles.csh analyze_mutau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/mutau/DY1JetsToLL_00.root DY1JetsToLL_00.root -1 1000 2018 MC DY1JetsToLL_00 $outDir










# ./rootcom test test_
# ./MakeCondorFiles.csh test_ root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/DY1JetsToLL_00.root DY1JetsToLL_00.root 1000 1000 2018 MC DY1JetsToLL_00 $outDir
