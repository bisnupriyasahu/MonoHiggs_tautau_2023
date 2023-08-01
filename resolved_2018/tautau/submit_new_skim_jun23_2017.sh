
outDir="Out_$(date +"%d-%m-%Y_%H-%M")" 
mkdir $outDir 

###########################   MC  #########################

./rootcom tautau_analyzer analyze_tautau  


./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/DY1JetsToLL_M-50_TuneCP5_0000.root DY1JetsToLL_M-50_TuneCP5_0000.root -1 1000 2018 MC DY1JetsToLL_M-50_TuneCP5_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/DY2JetsToLL_M-50_TuneCP5_0000.root DY2JetsToLL_M-50_TuneCP5_0000.root -1 1000 2018 MC DY2JetsToLL_M-50_TuneCP5_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/DY3JetsToLL_M-50_TuneCP5_ext1_0000.root DY3JetsToLL_M-50_TuneCP5_ext1_0000.root -1 1000 2018 MC DY3JetsToLL_M-50_TuneCP5_ext1_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/DY3JetsToLL_M-50_TuneCP5_v1_0000.root DY3JetsToLL_M-50_TuneCP5_v1_0000.root -1 1000 2018 MC DY3JetsToLL_M-50_TuneCP5_v1_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/DY4JetsToLL_M-50_TuneCP5_0000.root DY4JetsToLL_M-50_TuneCP5_0000.root -1 1000 2018 MC DY4JetsToLL_M-50_TuneCP5_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/DYJetsToLL_M-10to50_TuneCP5_0000.root DYJetsToLL_M-10to50_TuneCP5_0000.root -1 1000 2018 MC DYJetsToLL_M-10to50_TuneCP5_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/DYJetsToLL_M-50_TuneCP5_ext1_v1_0000.root DYJetsToLL_M-50_TuneCP5_ext1_v1_0000.root -1 1000 2018 MC DYJetsToLL_M-50_TuneCP5_ext1_v1_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/DYJetsToLL_M-50_TuneCP5_ext1_v1_0001.root DYJetsToLL_M-50_TuneCP5_ext1_v1_0001.root -1 1000 2018 MC DYJetsToLL_M-50_TuneCP5_ext1_v1_0001 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/DYJetsToLL_M-50_TuneCP5_ext1_v1_0002.root DYJetsToLL_M-50_TuneCP5_ext1_v1_0002.root -1 1000 2018 MC DYJetsToLL_M-50_TuneCP5_ext1_v1_0002 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/DYJetsToLL_M-50_TuneCP5_ext1_v1_0003.root DYJetsToLL_M-50_TuneCP5_ext1_v1_0003.root -1 1000 2018 MC DYJetsToLL_M-50_TuneCP5_ext1_v1_0003 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/DYJetsToLL_M-50_TuneCP5_ext1_v1_0004.root DYJetsToLL_M-50_TuneCP5_ext1_v1_0004.root -1 1000 2018 MC DYJetsToLL_M-50_TuneCP5_ext1_v1_0004 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/DYJetsToLL_M-50_TuneCP5_ext1_v1_0005.root DYJetsToLL_M-50_TuneCP5_ext1_v1_0005.root -1 1000 2018 MC DYJetsToLL_M-50_TuneCP5_ext1_v1_0005 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/DYJetsToLL_M-50_TuneCP5_ext1_v1_0006.root DYJetsToLL_M-50_TuneCP5_ext1_v1_0006.root -1 1000 2018 MC DYJetsToLL_M-50_TuneCP5_ext1_v1_0006 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/DYJetsToLL_M-50_TuneCP5_ext1_v1_0007.root DYJetsToLL_M-50_TuneCP5_ext1_v1_0007.root -1 1000 2018 MC DYJetsToLL_M-50_TuneCP5_ext1_v1_0007 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/DYJetsToLL_M-50_TuneCP5_ext1_v1_0008.root DYJetsToLL_M-50_TuneCP5_ext1_v1_0008.root -1 1000 2018 MC DYJetsToLL_M-50_TuneCP5_ext1_v1_0008 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/DYJetsToLL_M-50_TuneCP5_ext1_v1_0009.root DYJetsToLL_M-50_TuneCP5_ext1_v1_0009.root -1 1000 2018 MC DYJetsToLL_M-50_TuneCP5_ext1_v1_0009 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/DYJetsToLL_M-50_TuneCP5_v1_0000.root DYJetsToLL_M-50_TuneCP5_v1_0000.root -1 1000 2018 MC DYJetsToLL_M-50_TuneCP5_v1_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/DYJetsToLL_M-50_TuneCP5_v1_0001.root DYJetsToLL_M-50_TuneCP5_v1_0001.root -1 1000 2018 MC DYJetsToLL_M-50_TuneCP5_v1_0001 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/DYJetsToLL_M-50_TuneCP5_v1_0002.root DYJetsToLL_M-50_TuneCP5_v1_0002.root -1 1000 2018 MC DYJetsToLL_M-50_TuneCP5_v1_0002 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/DYJetsToLL_M-50_TuneCP5_v1_0003.root DYJetsToLL_M-50_TuneCP5_v1_0003.root -1 1000 2018 MC DYJetsToLL_M-50_TuneCP5_v1_0003 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/DYJetsToLL_M-50_TuneCP5_v1_0004.root DYJetsToLL_M-50_TuneCP5_v1_0004.root -1 1000 2018 MC DYJetsToLL_M-50_TuneCP5_v1_0004 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/DYJetsToLL_M-50_TuneCP5_v1_0005.root DYJetsToLL_M-50_TuneCP5_v1_0005.root -1 1000 2018 MC DYJetsToLL_M-50_TuneCP5_v1_0005 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/DYJetsToLL_M-50_TuneCP5_v1_0006.root DYJetsToLL_M-50_TuneCP5_v1_0006.root -1 1000 2018 MC DYJetsToLL_M-50_TuneCP5_v1_0006 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/DYJetsToLL_M-50_TuneCP5_v1_0007.root DYJetsToLL_M-50_TuneCP5_v1_0007.root -1 1000 2018 MC DYJetsToLL_M-50_TuneCP5_v1_0007 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/DYJetsToLL_M-50_TuneCP5_v1_0008.root DYJetsToLL_M-50_TuneCP5_v1_0008.root -1 1000 2018 MC DYJetsToLL_M-50_TuneCP5_v1_0008 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/DYJetsToLL_M-50_TuneCP5_v1_0009.root DYJetsToLL_M-50_TuneCP5_v1_0009.root -1 1000 2018 MC DYJetsToLL_M-50_TuneCP5_v1_0009 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/EWKWMinus2Jets_WToLNu_M-50_TuneCP5_0000.root EWKWMinus2Jets_WToLNu_M-50_TuneCP5_0000.root -1 1000 2018 MC EWKWMinus2Jets_WToLNu_M-50_TuneCP5_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_0000.root EWKWPlus2Jets_WToLNu_M-50_TuneCP5_0000.root -1 1000 2018 MC EWKWPlus2Jets_WToLNu_M-50_TuneCP5_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/EWKZ2Jets_ZToLL_M-50_TuneCP5_0000.root EWKZ2Jets_ZToLL_M-50_TuneCP5_0000.root -1 1000 2018 MC EWKZ2Jets_ZToLL_M-50_TuneCP5_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/EWKZ2Jets_ZToNuNu_TuneCP5_0000.root EWKZ2Jets_ZToNuNu_TuneCP5_0000.root -1 1000 2018 MC EWKZ2Jets_ZToNuNu_TuneCP5_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/GluGluHToTauTau_M125_0000.root GluGluHToTauTau_M125_0000.root -1 1000 2018 MC GluGluHToTauTau_M125_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/GluGluHToWWTo2L2Nu_M125_0000.root GluGluHToWWTo2L2Nu_M125_0000.root -1 1000 2018 MC GluGluHToWWTo2L2Nu_M125_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/ST_t-channel_antitop_4f_inclusiveDecays_TuneCP5_0000.root ST_t-channel_antitop_4f_inclusiveDecays_TuneCP5_0000.root -1 1000 2018 MC ST_t-channel_antitop_4f_inclusiveDecays_TuneCP5_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/ST_t-channel_top_4f_inclusiveDecays_TuneCP5_0000.root ST_t-channel_top_4f_inclusiveDecays_TuneCP5_0000.root -1 1000 2018 MC ST_t-channel_top_4f_inclusiveDecays_TuneCP5_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/ST_tW_antitop_5f_inclusiveDecays_TuneCP5_0000.root ST_tW_antitop_5f_inclusiveDecays_TuneCP5_0000.root -1 1000 2018 MC ST_tW_antitop_5f_inclusiveDecays_TuneCP5_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/ST_tW_top_5f_inclusiveDecays_TuneCP5_0000.root ST_tW_top_5f_inclusiveDecays_TuneCP5_0000.root -1 1000 2018 MC ST_tW_top_5f_inclusiveDecays_TuneCP5_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/TTTo2L2Nu_TuneCP5_0000.root TTTo2L2Nu_TuneCP5_0000.root -1 1000 2018 MC TTTo2L2Nu_TuneCP5_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/TTToHadronic_TuneCP5_0000.root TTToHadronic_TuneCP5_0000.root -1 1000 2018 MC TTToHadronic_TuneCP5_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/TTToSemiLeptonic_TuneCP5_0000.root TTToSemiLeptonic_TuneCP5_0000.root -1 1000 2018 MC TTToSemiLeptonic_TuneCP5_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/VBFHToTauTau_M125_0000.root VBFHToTauTau_M125_0000.root -1 1000 2018 MC VBFHToTauTau_M125_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/VBFHToWWTo2L2Nu_M125_0000.root VBFHToWWTo2L2Nu_M125_0000.root -1 1000 2018 MC VBFHToWWTo2L2Nu_M125_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/VVTo2L2Nu_0000.root VVTo2L2Nu_0000.root -1 1000 2018 MC VVTo2L2Nu_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/W1JetsToLNu_TuneCP5_0000.root W1JetsToLNu_TuneCP5_0000.root -1 1000 2018 MC W1JetsToLNu_TuneCP5_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/W2JetsToLNu_TuneCP5_0000.root W2JetsToLNu_TuneCP5_0000.root -1 1000 2018 MC W2JetsToLNu_TuneCP5_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/W3JetsToLNu_TuneCP5_0000.root W3JetsToLNu_TuneCP5_0000.root -1 1000 2018 MC W3JetsToLNu_TuneCP5_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/W4JetsToLNu_TuneCP5_0000.root W4JetsToLNu_TuneCP5_0000.root -1 1000 2018 MC W4JetsToLNu_TuneCP5_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/WJetsToLNu_HT100-200_0000.root WJetsToLNu_HT100-200_0000.root -1 1000 2018 MC WJetsToLNu_HT100-200_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/WJetsToLNu_HT1200-2500_0000.root WJetsToLNu_HT1200-2500_0000.root -1 1000 2018 MC WJetsToLNu_HT1200-2500_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/WJetsToLNu_HT200-400_0000.root WJetsToLNu_HT200-400_0000.root -1 1000 2018 MC WJetsToLNu_HT200-400_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/WJetsToLNu_HT2500-Inf_0000.root WJetsToLNu_HT2500-Inf_0000.root -1 1000 2018 MC WJetsToLNu_HT2500-Inf_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/WJetsToLNu_HT400-600_0000.root WJetsToLNu_HT400-600_0000.root -1 1000 2018 MC WJetsToLNu_HT400-600_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/WJetsToLNu_HT600-800_0000.root WJetsToLNu_HT600-800_0000.root -1 1000 2018 MC WJetsToLNu_HT600-800_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/WJetsToLNu_HT70-100_0000.root WJetsToLNu_HT70-100_0000.root -1 1000 2018 MC WJetsToLNu_HT70-100_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/WJetsToLNu_HT800-1200_0000.root WJetsToLNu_HT800-1200_0000.root -1 1000 2018 MC WJetsToLNu_HT800-1200_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/WJetsToLNu_Incl_0000.root WJetsToLNu_Incl_0000.root -1 1000 2018 MC WJetsToLNu_Incl_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/WJetsToLNu_Inclv2_0000.root WJetsToLNu_Inclv2_0000.root -1 1000 2018 MC WJetsToLNu_Inclv2_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/WJetsToLNu_TuneCP5_0000.root WJetsToLNu_TuneCP5_0000.root -1 1000 2018 MC WJetsToLNu_TuneCP5_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/WWTo1L1Nu2Q_0000.root WWTo1L1Nu2Q_0000.root -1 1000 2018 MC WWTo1L1Nu2Q_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/WWToLNuQQ_NNPDF31_TuneCP5_0000.root WWToLNuQQ_NNPDF31_TuneCP5_0000.root -1 1000 2018 MC WWToLNuQQ_NNPDF31_TuneCP5_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/WWW_4F_TuneCP5_0000.root WWW_4F_TuneCP5_0000.root -1 1000 2018 MC WWW_4F_TuneCP5_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/WWZ_4F_TuneCP5_0000.root WWZ_4F_TuneCP5_0000.root -1 1000 2018 MC WWZ_4F_TuneCP5_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/WW_TuneCP5_0000.root WW_TuneCP5_0000.root -1 1000 2018 MC WW_TuneCP5_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/WZTo3LNu_TuneCP5_0000.root WZTo3LNu_TuneCP5_0000.root -1 1000 2018 MC WZTo3LNu_TuneCP5_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/WZZ_TuneCP5_0000.root WZZ_TuneCP5_0000.root -1 1000 2018 MC WZZ_TuneCP5_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/WZ_TuneCP5_0000.root WZ_TuneCP5_0000.root -1 1000 2018 MC WZ_TuneCP5_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/WminusHToTauTau_M125_0000.root WminusHToTauTau_M125_0000.root -1 1000 2018 MC WminusHToTauTau_M125_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/WplusHToTauTau_M125_0000.root WplusHToTauTau_M125_0000.root -1 1000 2018 MC WplusHToTauTau_M125_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/ZHToTauTau_M125_0000.root ZHToTauTau_M125_0000.root -1 1000 2018 MC ZHToTauTau_M125_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/ZJetsToNuNu_HT-100To200_0000.root ZJetsToNuNu_HT-100To200_0000.root -1 1000 2018 MC ZJetsToNuNu_HT-100To200_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/ZJetsToNuNu_HT-1200To2500_0000.root ZJetsToNuNu_HT-1200To2500_0000.root -1 1000 2018 MC ZJetsToNuNu_HT-1200To2500_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/ZJetsToNuNu_HT-200To400_0000.root ZJetsToNuNu_HT-200To400_0000.root -1 1000 2018 MC ZJetsToNuNu_HT-200To400_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/ZJetsToNuNu_HT-2500ToInf_0000.root ZJetsToNuNu_HT-2500ToInf_0000.root -1 1000 2018 MC ZJetsToNuNu_HT-2500ToInf_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/ZJetsToNuNu_HT-400To600_0000.root ZJetsToNuNu_HT-400To600_0000.root -1 1000 2018 MC ZJetsToNuNu_HT-400To600_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/ZJetsToNuNu_HT-600To800_0000.root ZJetsToNuNu_HT-600To800_0000.root -1 1000 2018 MC ZJetsToNuNu_HT-600To800_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/ZJetsToNuNu_HT-800To1200_0000.root ZJetsToNuNu_HT-800To1200_0000.root -1 1000 2018 MC ZJetsToNuNu_HT-800To1200_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/ZZTo2L2Q_0000.root ZZTo2L2Q_0000.root -1 1000 2018 MC ZZTo2L2Q_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/ZZTo4L_TuneCP5_0000.root ZZTo4L_TuneCP5_0000.root -1 1000 2018 MC ZZTo4L_TuneCP5_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/ZZZ_TuneCP5_0000.root ZZZ_TuneCP5_0000.root -1 1000 2018 MC ZZZ_TuneCP5_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2017_skimmed/tautau/ZZ_TuneCP5_0000.root ZZ_TuneCP5_0000.root -1 1000 2018 MC ZZ_TuneCP5_0000 $outDir
