
outDir="Out_$(date +"%d-%m-%Y_%H-%M")" 
mkdir $outDir 

###########################   MC  #########################

./rootcom tautau_analyzer analyze_tautau  


./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/tautau_new/DY1JetsToLL_M-50_TuneCP5_00.root DY1JetsToLL_M-50_TuneCP5_00.root -1 1000 2017 MC DY1JetsToLL_M-50_TuneCP5_00 $outDir
