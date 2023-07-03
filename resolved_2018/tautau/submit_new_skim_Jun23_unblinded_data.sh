
outDir="Out_$(date +"%d-%m-%Y_%H-%M")" 
mkdir $outDir 



###########################  UNBLINDED DATA  #########################

./rootcom tautau_analyzer analyze_tautau  


./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/unblinded/TauA_0000.root TauA_0000.root -1 1000 2018 DATA TauA_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/unblinded/TauA_0001.root TauA_0001.root -1 1000 2018 DATA TauA_0001 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/unblinded/TauB_0000.root TauB_0000.root -1 1000 2018 DATA TauB_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/unblinded/TauC_0000.root TauC_0000.root -1 1000 2018 DATA TauC_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/unblinded/TauD_PromptReco_0000.root TauD_PromptReco_0000.root -1 1000 2018 DATA TauD_PromptReco_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/unblinded/TauD_PromptReco_0001.root TauD_PromptReco_0001.root -1 1000 2018 DATA TauD_PromptReco_0001 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/unblinded/TauD_PromptReco_0002.root TauD_PromptReco_0002.root -1 1000 2018 DATA TauD_PromptReco_0002 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/unblinded/TauD_PromptReco_0003.root TauD_PromptReco_0003.root -1 1000 2018 DATA TauD_PromptReco_0003 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/unblinded/TauD_PromptReco_0004.root TauD_PromptReco_0004.root -1 1000 2018 DATA TauD_PromptReco_0004 $outDir
