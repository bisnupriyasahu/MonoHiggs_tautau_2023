
outDir="Out_$(date +"%d-%m-%Y_%H-%M")" 
mkdir $outDir 

###########################   MC  #########################

./rootcom tautau_analyzer analyze_tautau  


./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/tautau/DY1JetsToLL_00.root DY1JetsToLL_00.root 10000 1000 2018 MC DY1JetsToLL_00 $outDir
