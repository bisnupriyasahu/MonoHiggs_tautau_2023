
outDir="Out_$(date +"%d-%m-%Y_%H-%M")" 
mkdir $outDir 



###########################   DATA  #########################

./rootcom tautau_analyzer analyze_tautau  


./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/blinded/Tau_EraB_0000.root fullLumi_Tau_EraB_0000.root -1 1000 2017 DATA Tau_EraB_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/blinded/Tau_EraB_0001.root fullLumi_Tau_EraB_0001.root -1 1000 2017 DATA Tau_EraB_0001 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/blinded/Tau_EraC_0000.root fullLumi_Tau_EraC_0000.root -1 1000 2017 DATA Tau_EraC_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/blinded/Tau_EraC_0001.root fullLumi_Tau_EraC_0001.root -1 1000 2017 DATA Tau_EraC_0001 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/blinded/Tau_EraC_0002.root fullLumi_Tau_EraC_0002.root -1 1000 2017 DATA Tau_EraC_0002 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/blinded/Tau_EraC_0003.root fullLumi_Tau_EraC_0003.root -1 1000 2017 DATA Tau_EraC_0003 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/blinded/Tau_EraD_0000.root fullLumi_Tau_EraD_0000.root -1 1000 2017 DATA Tau_EraD_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/blinded/Tau_EraD_0001.root fullLumi_Tau_EraD_0001.root -1 1000 2017 DATA Tau_EraD_0001 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/blinded/Tau_EraE_0000.root fullLumi_Tau_EraE_0000.root -1 1000 2017 DATA Tau_EraE_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/blinded/Tau_EraE_0001.root fullLumi_Tau_EraE_0001.root -1 1000 2017 DATA Tau_EraE_0001 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/blinded/Tau_EraE_0002.root fullLumi_Tau_EraE_0002.root -1 1000 2017 DATA Tau_EraE_0002 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/blinded/Tau_EraF_0000.root fullLumi_Tau_EraF_0000.root -1 1000 2017 DATA Tau_EraF_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/blinded/Tau_EraF_0001.root fullLumi_Tau_EraF_0001.root -1 1000 2017 DATA Tau_EraF_0001 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/blinded/Tau_EraF_0002.root fullLumi_Tau_EraF_0002.root -1 1000 2017 DATA Tau_EraF_0002 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/blinded/Tau_EraF_0003.root fullLumi_Tau_EraF_0003.root -1 1000 2017 DATA Tau_EraF_0003 $outDir
