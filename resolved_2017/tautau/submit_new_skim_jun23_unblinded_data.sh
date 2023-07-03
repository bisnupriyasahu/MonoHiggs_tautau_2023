                                                                                                                                                                                  
outDir="Out_$(date +"%d-%m-%Y_%H-%M")"                                                                                                                                                                     
mkdir $outDir                                                                                                                                                                                              
                                                                                                                                                                                                           


###########################  UNBLINDED DATA  #########################

./rootcom tautau_analyzer analyze_tautau  


./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/unblinded/Tau_EraB_0000.root Tau_EraB_0000.root -1 1000 2017 DATA Tau_EraB_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/unblinded/Tau_EraB_0001.root Tau_EraB_0001.root -1 1000 2017 DATA Tau_EraB_0001 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/unblinded/Tau_EraC_0000.root Tau_EraC_0000.root -1 1000 2017 DATA Tau_EraC_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/unblinded/Tau_EraC_0001.root Tau_EraC_0001.root -1 1000 2017 DATA Tau_EraC_0001 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/unblinded/Tau_EraC_0002.root Tau_EraC_0002.root -1 1000 2017 DATA Tau_EraC_0002 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/unblinded/Tau_EraC_0003.root Tau_EraC_0003.root -1 1000 2017 DATA Tau_EraC_0003 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/unblinded/Tau_EraD_0000.root Tau_EraD_0000.root -1 1000 2017 DATA Tau_EraD_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/unblinded/Tau_EraD_0001.root Tau_EraD_0001.root -1 1000 2017 DATA Tau_EraD_0001 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/unblinded/Tau_EraE_0000.root Tau_EraE_0000.root -1 1000 2017 DATA Tau_EraE_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/unblinded/Tau_EraE_0001.root Tau_EraE_0001.root -1 1000 2017 DATA Tau_EraE_0001 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/unblinded/Tau_EraE_0002.root Tau_EraE_0002.root -1 1000 2017 DATA Tau_EraE_0002 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/unblinded/Tau_EraF_0000.root Tau_EraF_0000.root -1 1000 2017 DATA Tau_EraF_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/unblinded/Tau_EraF_0001.root Tau_EraF_0001.root -1 1000 2017 DATA Tau_EraF_0001 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/unblinded/Tau_EraF_0002.root Tau_EraF_0002.root -1 1000 2017 DATA Tau_EraF_0002 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/unblinded/Tau_EraF_0003.root Tau_EraF_0003.root -1 1000 2017 DATA Tau_EraF_0003 $outDir
