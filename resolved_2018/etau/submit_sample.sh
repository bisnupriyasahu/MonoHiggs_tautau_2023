
outDir="Out_$(date +"%d-%m-%Y_%H-%M")" 
mkdir $outDir 

# ###########################   MC  #########################

# ./rootcom etau_analyzer analyze_etau  


# ./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/DY1JetsToLL_00.root DY1JetsToLL_00.root 1000 1000 2018 MC DY1JetsToLL_00 $outDir











./rootcom test test_
./MakeCondorFiles.csh test_ root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/etau/DY1JetsToLL_00.root DY1JetsToLL_00.root 1000 1000 2018 MC DY1JetsToLL_00 $outDir
