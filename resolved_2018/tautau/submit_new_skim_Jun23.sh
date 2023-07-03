
outDir="Out_$(date +"%d-%m-%Y_%H-%M")" 
mkdir $outDir 

###########################   MC  #########################

./rootcom tautau_analyzer analyze_tautau  


./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/DY1JetsToLL_0000.root DY1JetsToLL_0000.root -1 1000 2018 MC DY1JetsToLL_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/DY1JetsToLL_0001.root DY1JetsToLL_0001.root -1 1000 2018 MC DY1JetsToLL_0001 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/DY1JetsToLL_0002.root DY1JetsToLL_0002.root -1 1000 2018 MC DY1JetsToLL_0002 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/DY2JetsToLL_0000.root DY2JetsToLL_0000.root -1 1000 2018 MC DY2JetsToLL_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/DY3JetsToLL_0000.root DY3JetsToLL_0000.root -1 1000 2018 MC DY3JetsToLL_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/DY4JetsToLL_0000.root DY4JetsToLL_0000.root -1 1000 2018 MC DY4JetsToLL_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/DYJetsToLL_0000.root DYJetsToLL_0000.root -1 1000 2018 MC DYJetsToLL_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/DYJetsToLL_0001.root DYJetsToLL_0001.root -1 1000 2018 MC DYJetsToLL_0001 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/DYJetsToLL_0002.root DYJetsToLL_0002.root -1 1000 2018 MC DYJetsToLL_0002 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/DYJetsToLL_0003.root DYJetsToLL_0003.root -1 1000 2018 MC DYJetsToLL_0003 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/DYJetsToLL_M10to50_0000.root DYJetsToLL_M10to50_0000.root -1 1000 2018 MC DYJetsToLL_M10to50_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/EWKWMinus2Jets_WToLNu_0000.root EWKWMinus2Jets_WToLNu_0000.root -1 1000 2018 MC EWKWMinus2Jets_WToLNu_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/EWKWMinus2Jets_WToLNu_0001.root EWKWMinus2Jets_WToLNu_0001.root -1 1000 2018 MC EWKWMinus2Jets_WToLNu_0001 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/EWKWMinus2Jets_WToLNu_0002.root EWKWMinus2Jets_WToLNu_0002.root -1 1000 2018 MC EWKWMinus2Jets_WToLNu_0002 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/EWKWPlus2Jets_WToLNu_0000.root EWKWPlus2Jets_WToLNu_0000.root -1 1000 2018 MC EWKWPlus2Jets_WToLNu_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/EWKZ2Jets_ZToLL_0000.root EWKZ2Jets_ZToLL_0000.root -1 1000 2018 MC EWKZ2Jets_ZToLL_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/EWKZ2Jets_ZToNuNu_0000.root EWKZ2Jets_ZToNuNu_0000.root -1 1000 2018 MC EWKZ2Jets_ZToNuNu_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/GluGluHToTauTau_0000.root GluGluHToTauTau_0000.root -1 1000 2018 MC GluGluHToTauTau_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/GluGluHToWWTo2L2Nu_0000.root GluGluHToWWTo2L2Nu_0000.root -1 1000 2018 MC GluGluHToWWTo2L2Nu_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/GluGluZH_HToWW_0000.root GluGluZH_HToWW_0000.root -1 1000 2018 MC GluGluZH_HToWW_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/HWminusJ_HToWW_0000.root HWminusJ_HToWW_0000.root -1 1000 2018 MC HWminusJ_HToWW_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/HWplusJ_HToWW_0000.root HWplusJ_HToWW_0000.root -1 1000 2018 MC HWplusJ_HToWW_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/HZJ_HToWW_0000.root HZJ_HToWW_0000.root -1 1000 2018 MC HZJ_HToWW_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/ST_t-channel_antitop_0000.root ST_t-channel_antitop_0000.root -1 1000 2018 MC ST_t-channel_antitop_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/ST_t-channel_antitop_0001.root ST_t-channel_antitop_0001.root -1 1000 2018 MC ST_t-channel_antitop_0001 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/ST_t-channel_antitop_0002.root ST_t-channel_antitop_0002.root -1 1000 2018 MC ST_t-channel_antitop_0002 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/ST_t-channel_antitop_0003.root ST_t-channel_antitop_0003.root -1 1000 2018 MC ST_t-channel_antitop_0003 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/ST_t-channel_antitop_0004.root ST_t-channel_antitop_0004.root -1 1000 2018 MC ST_t-channel_antitop_0004 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/ST_tW_antitop_0000.root ST_tW_antitop_0000.root -1 1000 2018 MC ST_tW_antitop_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/ST_tW_top_0000.root ST_tW_top_0000.root -1 1000 2018 MC ST_tW_top_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/TTTo2L2Nu_powheg_0000.root TTTo2L2Nu_powheg_0000.root -1 1000 2018 MC TTTo2L2Nu_powheg_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/TTTo2L2Nu_powheg_0001.root TTTo2L2Nu_powheg_0001.root -1 1000 2018 MC TTTo2L2Nu_powheg_0001 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/TTTo2L2Nu_powheg_0002.root TTTo2L2Nu_powheg_0002.root -1 1000 2018 MC TTTo2L2Nu_powheg_0002 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/TTToHadronic_powheg_0000.root TTToHadronic_powheg_0000.root -1 1000 2018 MC TTToHadronic_powheg_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/TTToHadronic_powheg_0001.root TTToHadronic_powheg_0001.root -1 1000 2018 MC TTToHadronic_powheg_0001 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/TTToHadronic_powheg_0002.root TTToHadronic_powheg_0002.root -1 1000 2018 MC TTToHadronic_powheg_0002 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/TTToHadronic_powheg_0003.root TTToHadronic_powheg_0003.root -1 1000 2018 MC TTToHadronic_powheg_0003 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/TTToHadronic_powheg_0004.root TTToHadronic_powheg_0004.root -1 1000 2018 MC TTToHadronic_powheg_0004 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/TTToHadronic_powheg_0005.root TTToHadronic_powheg_0005.root -1 1000 2018 MC TTToHadronic_powheg_0005 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/TTToSemiLeptonic_powheg_0000.root TTToSemiLeptonic_powheg_0000.root -1 1000 2018 MC TTToSemiLeptonic_powheg_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/TTToSemiLeptonic_powheg_0001.root TTToSemiLeptonic_powheg_0001.root -1 1000 2018 MC TTToSemiLeptonic_powheg_0001 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/TTToSemiLeptonic_powheg_0002.root TTToSemiLeptonic_powheg_0002.root -1 1000 2018 MC TTToSemiLeptonic_powheg_0002 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/TTToSemiLeptonic_powheg_0003.root TTToSemiLeptonic_powheg_0003.root -1 1000 2018 MC TTToSemiLeptonic_powheg_0003 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/TTToSemiLeptonic_powheg_0004.root TTToSemiLeptonic_powheg_0004.root -1 1000 2018 MC TTToSemiLeptonic_powheg_0004 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/VBFHToTauTau_0000.root VBFHToTauTau_0000.root -1 1000 2018 MC VBFHToTauTau_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/VBFHToWWTo2L2Nu_0000.root VBFHToWWTo2L2Nu_0000.root -1 1000 2018 MC VBFHToWWTo2L2Nu_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/VVTo2L2Nu_0000.root VVTo2L2Nu_0000.root -1 1000 2018 MC VVTo2L2Nu_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/W1JetsToLNu_0000.root W1JetsToLNu_0000.root -1 1000 2018 MC W1JetsToLNu_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/W2JetsToLNu_0000.root W2JetsToLNu_0000.root -1 1000 2018 MC W2JetsToLNu_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/W3JetsToLNu_0000.root W3JetsToLNu_0000.root -1 1000 2018 MC W3JetsToLNu_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/W4JetsToLNu_0000.root W4JetsToLNu_0000.root -1 1000 2018 MC W4JetsToLNu_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/WGToLNuG_0000.root WGToLNuG_0000.root -1 1000 2018 MC WGToLNuG_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/WWTo1L1Nu2Q_0000.root WWTo1L1Nu2Q_0000.root -1 1000 2018 MC WWTo1L1Nu2Q_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/WWToLNuQQ_0000.root WWToLNuQQ_0000.root -1 1000 2018 MC WWToLNuQQ_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/WWW_0000.root WWW_0000.root -1 1000 2018 MC WWW_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/WWZ_0000.root WWZ_0000.root -1 1000 2018 MC WWZ_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/WZTo3LNu_0000.root WZTo3LNu_0000.root -1 1000 2018 MC WZTo3LNu_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/WZZ_0000.root WZZ_0000.root -1 1000 2018 MC WZZ_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/WminusHToTauTau_0000.root WminusHToTauTau_0000.root -1 1000 2018 MC WminusHToTauTau_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/WplusHToTauTau_0000.root WplusHToTauTau_0000.root -1 1000 2018 MC WplusHToTauTau_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/ZHToTauTau_0000.root ZHToTauTau_0000.root -1 1000 2018 MC ZHToTauTau_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/ZJetsToNuNu_HT100-200_0000.root ZJetsToNuNu_HT100-200_0000.root -1 1000 2018 MC ZJetsToNuNu_HT100-200_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/ZJetsToNuNu_HT1200-2500_0000.root ZJetsToNuNu_HT1200-2500_0000.root -1 1000 2018 MC ZJetsToNuNu_HT1200-2500_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/ZJetsToNuNu_HT200-400_0000.root ZJetsToNuNu_HT200-400_0000.root -1 1000 2018 MC ZJetsToNuNu_HT200-400_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/ZJetsToNuNu_HT2500-Inf_0000.root ZJetsToNuNu_HT2500-Inf_0000.root -1 1000 2018 MC ZJetsToNuNu_HT2500-Inf_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/ZJetsToNuNu_HT400-600_0000.root ZJetsToNuNu_HT400-600_0000.root -1 1000 2018 MC ZJetsToNuNu_HT400-600_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/ZJetsToNuNu_HT600-800_0000.root ZJetsToNuNu_HT600-800_0000.root -1 1000 2018 MC ZJetsToNuNu_HT600-800_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/ZJetsToNuNu_HT600-800_0001.root ZJetsToNuNu_HT600-800_0001.root -1 1000 2018 MC ZJetsToNuNu_HT600-800_0001 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/ZJetsToNuNu_HT600-800_0002.root ZJetsToNuNu_HT600-800_0002.root -1 1000 2018 MC ZJetsToNuNu_HT600-800_0002 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/ZJetsToNuNu_HT600-800_0003.root ZJetsToNuNu_HT600-800_0003.root -1 1000 2018 MC ZJetsToNuNu_HT600-800_0003 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/ZJetsToNuNu_HT600-800_0004.root ZJetsToNuNu_HT600-800_0004.root -1 1000 2018 MC ZJetsToNuNu_HT600-800_0004 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/ZJetsToNuNu_HT800-1200_0000.root ZJetsToNuNu_HT800-1200_0000.root -1 1000 2018 MC ZJetsToNuNu_HT800-1200_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/ZZTo2L2Q_0000.root ZZTo2L2Q_0000.root -1 1000 2018 MC ZZTo2L2Q_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/ZZTo4L_0000.root ZZTo4L_0000.root -1 1000 2018 MC ZZTo4L_0000 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/ZZZ_0000.root ZZZ_0000.root -1 1000 2018 MC ZZZ_0000 $outDir
#./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/blinded blinded -1 1000 2018 MC bl $outDir
#./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_MC_Skimm/2018_skimmed/tautau/unblinded unblinded -1 1000 2018 MC unbl $outDir
