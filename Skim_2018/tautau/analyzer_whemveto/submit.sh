
outDir="Out_$(date +"%d-%m-%Y_%H-%M")" 
mkdir $outDir 

###########################   MC  #########################

./rootcom tautau_analyzer analyze_tautau  


./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DY1JetsToLL_00.root DY1JetsToLL_00.root -1 1000 2018 MC DY1JetsToLL_00 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DY1JetsToLL_01.root DY1JetsToLL_01.root -1 1000 2018 MC DY1JetsToLL_01 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DY1JetsToLL_02.root DY1JetsToLL_02.root -1 1000 2018 MC DY1JetsToLL_02 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DY1JetsToLL_03.root DY1JetsToLL_03.root -1 1000 2018 MC DY1JetsToLL_03 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DY1JetsToLL_04.root DY1JetsToLL_04.root -1 1000 2018 MC DY1JetsToLL_04 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DY1JetsToLL_05.root DY1JetsToLL_05.root -1 1000 2018 MC DY1JetsToLL_05 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DY1JetsToLL_06.root DY1JetsToLL_06.root -1 1000 2018 MC DY1JetsToLL_06 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DY1JetsToLL_07.root DY1JetsToLL_07.root -1 1000 2018 MC DY1JetsToLL_07 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DY1JetsToLL_08.root DY1JetsToLL_08.root -1 1000 2018 MC DY1JetsToLL_08 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DY2JetsToLL_00.root DY2JetsToLL_00.root -1 1000 2018 MC DY2JetsToLL_00 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DY2JetsToLL_02.root DY2JetsToLL_02.root -1 1000 2018 MC DY2JetsToLL_02 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DY2JetsToLL_03.root DY2JetsToLL_03.root -1 1000 2018 MC DY2JetsToLL_03 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DY3JetsToLL_00.root DY3JetsToLL_00.root -1 1000 2018 MC DY3JetsToLL_00 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DY4JetsToLL_00.root DY4JetsToLL_00.root -1 1000 2018 MC DY4JetsToLL_00 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DYJetsToLL_00.root DYJetsToLL_00.root -1 1000 2018 MC DYJetsToLL_00 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DYJetsToLL_01.root DYJetsToLL_01.root -1 1000 2018 MC DYJetsToLL_01 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DYJetsToLL_02.root DYJetsToLL_02.root -1 1000 2018 MC DYJetsToLL_02 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DYJetsToLL_03.root DYJetsToLL_03.root -1 1000 2018 MC DYJetsToLL_03 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DYJetsToLL_04.root DYJetsToLL_04.root -1 1000 2018 MC DYJetsToLL_04 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DYJetsToLL_05.root DYJetsToLL_05.root -1 1000 2018 MC DYJetsToLL_05 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DYJetsToLL_06.root DYJetsToLL_06.root -1 1000 2018 MC DYJetsToLL_06 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DYJetsToLL_07.root DYJetsToLL_07.root -1 1000 2018 MC DYJetsToLL_07 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DYJetsToLL_08.root DYJetsToLL_08.root -1 1000 2018 MC DYJetsToLL_08 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DYJetsToLL_09.root DYJetsToLL_09.root -1 1000 2018 MC DYJetsToLL_09 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DYJetsToLL_11.root DYJetsToLL_11.root -1 1000 2018 MC DYJetsToLL_11 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/DYJetsToLL_21.root DYJetsToLL_21.root -1 1000 2018 MC DYJetsToLL_21 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/EWKWMinus2Jets_WToLNu_00.root EWKWMinus2Jets_WToLNu_00.root -1 1000 2018 MC EWKWMinus2Jets_WToLNu_00 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/EWKWPlus2Jets_WToLNu_00.root EWKWPlus2Jets_WToLNu_00.root -1 1000 2018 MC EWKWPlus2Jets_WToLNu_00 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/EWKZ2Jets_ZToLL_00.root EWKZ2Jets_ZToLL_00.root -1 1000 2018 MC EWKZ2Jets_ZToLL_00 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/EWKZ2Jets_ZToNuNu_00.root EWKZ2Jets_ZToNuNu_00.root -1 1000 2018 MC EWKZ2Jets_ZToNuNu_00 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/GluGluHToTauTau_00.root GluGluHToTauTau_00.root -1 1000 2018 MC GluGluHToTauTau_00 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/GluGluHToTauTau_01.root GluGluHToTauTau_01.root -1 1000 2018 MC GluGluHToTauTau_01 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/GluGluHToWWTo2L2Nu_00.root GluGluHToWWTo2L2Nu_00.root -1 1000 2018 MC GluGluHToWWTo2L2Nu_00 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/GluGluZH_HToWW_00.root GluGluZH_HToWW_00.root -1 1000 2018 MC GluGluZH_HToWW_00 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/HWminusJ_HToWW_00.root HWminusJ_HToWW_00.root -1 1000 2018 MC HWminusJ_HToWW_00 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/HWplusJ_HToWW_00.root HWplusJ_HToWW_00.root -1 1000 2018 MC HWplusJ_HToWW_00 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/HZJ_HToWW_00.root HZJ_HToWW_00.root -1 1000 2018 MC HZJ_HToWW_00 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/ST_t-channel_antitop_00.root ST_t-channel_antitop_00.root -1 1000 2018 MC ST_t-channel_antitop_00 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/ST_t-channel_antitop_01.root ST_t-channel_antitop_01.root -1 1000 2018 MC ST_t-channel_antitop_01 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/ST_t-channel_antitop_02.root ST_t-channel_antitop_02.root -1 1000 2018 MC ST_t-channel_antitop_02 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/ST_t-channel_antitop_03.root ST_t-channel_antitop_03.root -1 1000 2018 MC ST_t-channel_antitop_03 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/ST_t-channel_antitop_04.root ST_t-channel_antitop_04.root -1 1000 2018 MC ST_t-channel_antitop_04 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/ST_t-channel_antitop_05.root ST_t-channel_antitop_05.root -1 1000 2018 MC ST_t-channel_antitop_05 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/ST_t-channel_antitop_06.root ST_t-channel_antitop_06.root -1 1000 2018 MC ST_t-channel_antitop_06 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/ST_t-channel_antitop_07.root ST_t-channel_antitop_07.root -1 1000 2018 MC ST_t-channel_antitop_07 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/ST_t-channel_antitop_10.root ST_t-channel_antitop_10.root -1 1000 2018 MC ST_t-channel_antitop_10 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/ST_t-channel_antitop_20.root ST_t-channel_antitop_20.root -1 1000 2018 MC ST_t-channel_antitop_20 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/ST_t-channel_antitop_30.root ST_t-channel_antitop_30.root -1 1000 2018 MC ST_t-channel_antitop_30 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/ST_t-channel_antitop_40.root ST_t-channel_antitop_40.root -1 1000 2018 MC ST_t-channel_antitop_40 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/ST_t-channel_antitop_50.root ST_t-channel_antitop_50.root -1 1000 2018 MC ST_t-channel_antitop_50 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/ST_t-channel_antitop_60.root ST_t-channel_antitop_60.root -1 1000 2018 MC ST_t-channel_antitop_60 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/ST_t-channel_antitop_70.root ST_t-channel_antitop_70.root -1 1000 2018 MC ST_t-channel_antitop_70 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/ST_t-channel_top_00.root ST_t-channel_top_00.root -1 1000 2018 MC ST_t-channel_top_00 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/ST_t-channel_top_01.root ST_t-channel_top_01.root -1 1000 2018 MC ST_t-channel_top_01 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/ST_t-channel_top_02.root ST_t-channel_top_02.root -1 1000 2018 MC ST_t-channel_top_02 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/ST_t-channel_top_03.root ST_t-channel_top_03.root -1 1000 2018 MC ST_t-channel_top_03 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/ST_t-channel_top_04.root ST_t-channel_top_04.root -1 1000 2018 MC ST_t-channel_top_04 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/ST_t-channel_top_05.root ST_t-channel_top_05.root -1 1000 2018 MC ST_t-channel_top_05 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/ST_t-channel_top_06.root ST_t-channel_top_06.root -1 1000 2018 MC ST_t-channel_top_06 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/ST_t-channel_top_07.root ST_t-channel_top_07.root -1 1000 2018 MC ST_t-channel_top_07 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/ST_t-channel_top_08.root ST_t-channel_top_08.root -1 1000 2018 MC ST_t-channel_top_08 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/ST_t-channel_top_09.root ST_t-channel_top_09.root -1 1000 2018 MC ST_t-channel_top_09 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/ST_t-channel_top_10.root ST_t-channel_top_10.root -1 1000 2018 MC ST_t-channel_top_10 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/ST_t-channel_top_11.root ST_t-channel_top_11.root -1 1000 2018 MC ST_t-channel_top_11 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/ST_t-channel_top_12.root ST_t-channel_top_12.root -1 1000 2018 MC ST_t-channel_top_12 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/ST_t-channel_top_13.root ST_t-channel_top_13.root -1 1000 2018 MC ST_t-channel_top_13 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/ST_t-channel_top_14.root ST_t-channel_top_14.root -1 1000 2018 MC ST_t-channel_top_14 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/ST_t-channel_top_15.root ST_t-channel_top_15.root -1 1000 2018 MC ST_t-channel_top_15 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/ST_t-channel_top_16.root ST_t-channel_top_16.root -1 1000 2018 MC ST_t-channel_top_16 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/ST_t-channel_top_17.root ST_t-channel_top_17.root -1 1000 2018 MC ST_t-channel_top_17 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/ST_t-channel_top_18.root ST_t-channel_top_18.root -1 1000 2018 MC ST_t-channel_top_18 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/ST_t-channel_top_19.root ST_t-channel_top_19.root -1 1000 2018 MC ST_t-channel_top_19 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/ST_t-channel_top_20.root ST_t-channel_top_20.root -1 1000 2018 MC ST_t-channel_top_20 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/ST_tW_antitop_00.root ST_tW_antitop_00.root -1 1000 2018 MC ST_tW_antitop_00 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/ST_tW_top_00.root ST_tW_top_00.root -1 1000 2018 MC ST_tW_top_00 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/ST_tW_top_01.root ST_tW_top_01.root -1 1000 2018 MC ST_tW_top_01 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTTo2L2Nu_powheg_00.root TTTo2L2Nu_powheg_00.root -1 1000 2018 MC TTTo2L2Nu_powheg_00 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTTo2L2Nu_powheg_01.root TTTo2L2Nu_powheg_01.root -1 1000 2018 MC TTTo2L2Nu_powheg_01 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTTo2L2Nu_powheg_02.root TTTo2L2Nu_powheg_02.root -1 1000 2018 MC TTTo2L2Nu_powheg_02 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTTo2L2Nu_powheg_03.root TTTo2L2Nu_powheg_03.root -1 1000 2018 MC TTTo2L2Nu_powheg_03 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTTo2L2Nu_powheg_04.root TTTo2L2Nu_powheg_04.root -1 1000 2018 MC TTTo2L2Nu_powheg_04 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTTo2L2Nu_powheg_05.root TTTo2L2Nu_powheg_05.root -1 1000 2018 MC TTTo2L2Nu_powheg_05 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTTo2L2Nu_powheg_06.root TTTo2L2Nu_powheg_06.root -1 1000 2018 MC TTTo2L2Nu_powheg_06 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTTo2L2Nu_powheg_10.root TTTo2L2Nu_powheg_10.root -1 1000 2018 MC TTTo2L2Nu_powheg_10 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTTo2L2Nu_powheg_20.root TTTo2L2Nu_powheg_20.root -1 1000 2018 MC TTTo2L2Nu_powheg_20 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTTo2L2Nu_powheg_30.root TTTo2L2Nu_powheg_30.root -1 1000 2018 MC TTTo2L2Nu_powheg_30 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTTo2L2Nu_powheg_40.root TTTo2L2Nu_powheg_40.root -1 1000 2018 MC TTTo2L2Nu_powheg_40 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTTo2L2Nu_powheg_50.root TTTo2L2Nu_powheg_50.root -1 1000 2018 MC TTTo2L2Nu_powheg_50 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTTo2L2Nu_powheg_60.root TTTo2L2Nu_powheg_60.root -1 1000 2018 MC TTTo2L2Nu_powheg_60 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTTo2L2Nu_powheg_70.root TTTo2L2Nu_powheg_70.root -1 1000 2018 MC TTTo2L2Nu_powheg_70 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTToHadronic_powheg_00.root TTToHadronic_powheg_00.root -1 1000 2018 MC TTToHadronic_powheg_00 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTToHadronic_powheg_01.root TTToHadronic_powheg_01.root -1 1000 2018 MC TTToHadronic_powheg_01 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTToHadronic_powheg_02.root TTToHadronic_powheg_02.root -1 1000 2018 MC TTToHadronic_powheg_02 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTToHadronic_powheg_03.root TTToHadronic_powheg_03.root -1 1000 2018 MC TTToHadronic_powheg_03 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTToHadronic_powheg_05.root TTToHadronic_powheg_05.root -1 1000 2018 MC TTToHadronic_powheg_05 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTToHadronic_powheg_06.root TTToHadronic_powheg_06.root -1 1000 2018 MC TTToHadronic_powheg_06 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTToHadronic_powheg_07.root TTToHadronic_powheg_07.root -1 1000 2018 MC TTToHadronic_powheg_07 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTToHadronic_powheg_08.root TTToHadronic_powheg_08.root -1 1000 2018 MC TTToHadronic_powheg_08 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTToHadronic_powheg_10.root TTToHadronic_powheg_10.root -1 1000 2018 MC TTToHadronic_powheg_10 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTToHadronic_powheg_11.root TTToHadronic_powheg_11.root -1 1000 2018 MC TTToHadronic_powheg_11 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTToHadronic_powheg_12.root TTToHadronic_powheg_12.root -1 1000 2018 MC TTToHadronic_powheg_12 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTToHadronic_powheg_13.root TTToHadronic_powheg_13.root -1 1000 2018 MC TTToHadronic_powheg_13 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTToHadronic_powheg_14.root TTToHadronic_powheg_14.root -1 1000 2018 MC TTToHadronic_powheg_14 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTToHadronic_powheg_15.root TTToHadronic_powheg_15.root -1 1000 2018 MC TTToHadronic_powheg_15 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTToHadronic_powheg_16.root TTToHadronic_powheg_16.root -1 1000 2018 MC TTToHadronic_powheg_16 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTToHadronic_powheg_17.root TTToHadronic_powheg_17.root -1 1000 2018 MC TTToHadronic_powheg_17 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTToHadronic_powheg_18.root TTToHadronic_powheg_18.root -1 1000 2018 MC TTToHadronic_powheg_18 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTToHadronic_powheg_20.root TTToHadronic_powheg_20.root -1 1000 2018 MC TTToHadronic_powheg_20 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTToHadronic_powheg_21.root TTToHadronic_powheg_21.root -1 1000 2018 MC TTToHadronic_powheg_21 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTToHadronic_powheg_22.root TTToHadronic_powheg_22.root -1 1000 2018 MC TTToHadronic_powheg_22 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTToHadronic_powheg_23.root TTToHadronic_powheg_23.root -1 1000 2018 MC TTToHadronic_powheg_23 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTToHadronic_powheg_24.root TTToHadronic_powheg_24.root -1 1000 2018 MC TTToHadronic_powheg_24 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTToHadronic_powheg_25.root TTToHadronic_powheg_25.root -1 1000 2018 MC TTToHadronic_powheg_25 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTToHadronic_powheg_26.root TTToHadronic_powheg_26.root -1 1000 2018 MC TTToHadronic_powheg_26 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTToHadronic_powheg_27.root TTToHadronic_powheg_27.root -1 1000 2018 MC TTToHadronic_powheg_27 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTToHadronic_powheg_30.root TTToHadronic_powheg_30.root -1 1000 2018 MC TTToHadronic_powheg_30 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTToHadronic_powheg_31.root TTToHadronic_powheg_31.root -1 1000 2018 MC TTToHadronic_powheg_31 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTToHadronic_powheg_32.root TTToHadronic_powheg_32.root -1 1000 2018 MC TTToHadronic_powheg_32 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTToHadronic_powheg_33.root TTToHadronic_powheg_33.root -1 1000 2018 MC TTToHadronic_powheg_33 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTToHadronic_powheg_34.root TTToHadronic_powheg_34.root -1 1000 2018 MC TTToHadronic_powheg_34 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTToHadronic_powheg_35.root TTToHadronic_powheg_35.root -1 1000 2018 MC TTToHadronic_powheg_35 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTToHadronic_powheg_36.root TTToHadronic_powheg_36.root -1 1000 2018 MC TTToHadronic_powheg_36 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTToHadronic_powheg_37.root TTToHadronic_powheg_37.root -1 1000 2018 MC TTToHadronic_powheg_37 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTToSemiLeptonic_powheg_00.root TTToSemiLeptonic_powheg_00.root -1 1000 2018 MC TTToSemiLeptonic_powheg_00 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTToSemiLeptonic_powheg_01.root TTToSemiLeptonic_powheg_01.root -1 1000 2018 MC TTToSemiLeptonic_powheg_01 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTToSemiLeptonic_powheg_10.root TTToSemiLeptonic_powheg_10.root -1 1000 2018 MC TTToSemiLeptonic_powheg_10 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTToSemiLeptonic_powheg_11.root TTToSemiLeptonic_powheg_11.root -1 1000 2018 MC TTToSemiLeptonic_powheg_11 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTToSemiLeptonic_powheg_20.root TTToSemiLeptonic_powheg_20.root -1 1000 2018 MC TTToSemiLeptonic_powheg_20 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTToSemiLeptonic_powheg_21.root TTToSemiLeptonic_powheg_21.root -1 1000 2018 MC TTToSemiLeptonic_powheg_21 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTToSemiLeptonic_powheg_30.root TTToSemiLeptonic_powheg_30.root -1 1000 2018 MC TTToSemiLeptonic_powheg_30 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTToSemiLeptonic_powheg_31.root TTToSemiLeptonic_powheg_31.root -1 1000 2018 MC TTToSemiLeptonic_powheg_31 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTToSemiLeptonic_powheg_40.root TTToSemiLeptonic_powheg_40.root -1 1000 2018 MC TTToSemiLeptonic_powheg_40 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTToSemiLeptonic_powheg_41.root TTToSemiLeptonic_powheg_41.root -1 1000 2018 MC TTToSemiLeptonic_powheg_41 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTToSemiLeptonic_powheg_50.root TTToSemiLeptonic_powheg_50.root -1 1000 2018 MC TTToSemiLeptonic_powheg_50 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTToSemiLeptonic_powheg_51.root TTToSemiLeptonic_powheg_51.root -1 1000 2018 MC TTToSemiLeptonic_powheg_51 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTToSemiLeptonic_powheg_60.root TTToSemiLeptonic_powheg_60.root -1 1000 2018 MC TTToSemiLeptonic_powheg_60 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTToSemiLeptonic_powheg_70.root TTToSemiLeptonic_powheg_70.root -1 1000 2018 MC TTToSemiLeptonic_powheg_70 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTToSemiLeptonic_powheg_80.root TTToSemiLeptonic_powheg_80.root -1 1000 2018 MC TTToSemiLeptonic_powheg_80 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TTToSemiLeptonic_powheg_90.root TTToSemiLeptonic_powheg_90.root -1 1000 2018 MC TTToSemiLeptonic_powheg_90 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/VBFHToTauTau_00.root VBFHToTauTau_00.root -1 1000 2018 MC VBFHToTauTau_00 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/VBFHToWWTo2L2Nu_00.root VBFHToWWTo2L2Nu_00.root -1 1000 2018 MC VBFHToWWTo2L2Nu_00 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/VVTo2L2Nu_00.root VVTo2L2Nu_00.root -1 1000 2018 MC VVTo2L2Nu_00 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/VVTo2L2Nu_01.root VVTo2L2Nu_01.root -1 1000 2018 MC VVTo2L2Nu_01 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/W1JetsToLNu_00.root W1JetsToLNu_00.root -1 1000 2018 MC W1JetsToLNu_00 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/W1JetsToLNu_01.root W1JetsToLNu_01.root -1 1000 2018 MC W1JetsToLNu_01 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/W1JetsToLNu_02.root W1JetsToLNu_02.root -1 1000 2018 MC W1JetsToLNu_02 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/W1JetsToLNu_03.root W1JetsToLNu_03.root -1 1000 2018 MC W1JetsToLNu_03 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/W1JetsToLNu_04.root W1JetsToLNu_04.root -1 1000 2018 MC W1JetsToLNu_04 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/W1JetsToLNu_05.root W1JetsToLNu_05.root -1 1000 2018 MC W1JetsToLNu_05 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/W2JetsToLNu_00.root W2JetsToLNu_00.root -1 1000 2018 MC W2JetsToLNu_00 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/W2JetsToLNu_01.root W2JetsToLNu_01.root -1 1000 2018 MC W2JetsToLNu_01 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/W2JetsToLNu_02.root W2JetsToLNu_02.root -1 1000 2018 MC W2JetsToLNu_02 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/W3JetsToLNu_00.root W3JetsToLNu_00.root -1 1000 2018 MC W3JetsToLNu_00 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/W3JetsToLNu_01.root W3JetsToLNu_01.root -1 1000 2018 MC W3JetsToLNu_01 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/W4JetsToLNu_00.root W4JetsToLNu_00.root -1 1000 2018 MC W4JetsToLNu_00 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/W4JetsToLNu_01.root W4JetsToLNu_01.root -1 1000 2018 MC W4JetsToLNu_01 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WGToLNuG_00.root WGToLNuG_00.root -1 1000 2018 MC WGToLNuG_00 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_0J_Incl_00.root WJetsToLNu_0J_Incl_00.root -1 1000 2018 MC WJetsToLNu_0J_Incl_00 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_0J_Incl_01.root WJetsToLNu_0J_Incl_01.root -1 1000 2018 MC WJetsToLNu_0J_Incl_01 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_0J_Incl_02.root WJetsToLNu_0J_Incl_02.root -1 1000 2018 MC WJetsToLNu_0J_Incl_02 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_0J_Incl_03.root WJetsToLNu_0J_Incl_03.root -1 1000 2018 MC WJetsToLNu_0J_Incl_03 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_0J_Incl_04.root WJetsToLNu_0J_Incl_04.root -1 1000 2018 MC WJetsToLNu_0J_Incl_04 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_0J_Incl_05.root WJetsToLNu_0J_Incl_05.root -1 1000 2018 MC WJetsToLNu_0J_Incl_05 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_0J_Incl_06.root WJetsToLNu_0J_Incl_06.root -1 1000 2018 MC WJetsToLNu_0J_Incl_06 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_0J_Incl_07.root WJetsToLNu_0J_Incl_07.root -1 1000 2018 MC WJetsToLNu_0J_Incl_07 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_0J_Incl_08.root WJetsToLNu_0J_Incl_08.root -1 1000 2018 MC WJetsToLNu_0J_Incl_08 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_0J_Incl_09.root WJetsToLNu_0J_Incl_09.root -1 1000 2018 MC WJetsToLNu_0J_Incl_09 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_0J_Incl_10.root WJetsToLNu_0J_Incl_10.root -1 1000 2018 MC WJetsToLNu_0J_Incl_10 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_0J_Incl_11.root WJetsToLNu_0J_Incl_11.root -1 1000 2018 MC WJetsToLNu_0J_Incl_11 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_0J_Incl_12.root WJetsToLNu_0J_Incl_12.root -1 1000 2018 MC WJetsToLNu_0J_Incl_12 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_0J_Incl_13.root WJetsToLNu_0J_Incl_13.root -1 1000 2018 MC WJetsToLNu_0J_Incl_13 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_0J_Incl_14.root WJetsToLNu_0J_Incl_14.root -1 1000 2018 MC WJetsToLNu_0J_Incl_14 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_0J_Incl_15.root WJetsToLNu_0J_Incl_15.root -1 1000 2018 MC WJetsToLNu_0J_Incl_15 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_0J_Incl_16.root WJetsToLNu_0J_Incl_16.root -1 1000 2018 MC WJetsToLNu_0J_Incl_16 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_0J_Incl_17.root WJetsToLNu_0J_Incl_17.root -1 1000 2018 MC WJetsToLNu_0J_Incl_17 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_0J_Incl_18.root WJetsToLNu_0J_Incl_18.root -1 1000 2018 MC WJetsToLNu_0J_Incl_18 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_0J_Incl_19.root WJetsToLNu_0J_Incl_19.root -1 1000 2018 MC WJetsToLNu_0J_Incl_19 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_1J_Incl_00.root WJetsToLNu_1J_Incl_00.root -1 1000 2018 MC WJetsToLNu_1J_Incl_00 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_1J_Incl_01.root WJetsToLNu_1J_Incl_01.root -1 1000 2018 MC WJetsToLNu_1J_Incl_01 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_1J_Incl_02.root WJetsToLNu_1J_Incl_02.root -1 1000 2018 MC WJetsToLNu_1J_Incl_02 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_1J_Incl_03.root WJetsToLNu_1J_Incl_03.root -1 1000 2018 MC WJetsToLNu_1J_Incl_03 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_1J_Incl_04.root WJetsToLNu_1J_Incl_04.root -1 1000 2018 MC WJetsToLNu_1J_Incl_04 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_1J_Incl_05.root WJetsToLNu_1J_Incl_05.root -1 1000 2018 MC WJetsToLNu_1J_Incl_05 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_1J_Incl_06.root WJetsToLNu_1J_Incl_06.root -1 1000 2018 MC WJetsToLNu_1J_Incl_06 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_1J_Incl_07.root WJetsToLNu_1J_Incl_07.root -1 1000 2018 MC WJetsToLNu_1J_Incl_07 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_1J_Incl_08.root WJetsToLNu_1J_Incl_08.root -1 1000 2018 MC WJetsToLNu_1J_Incl_08 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_1J_Incl_10.root WJetsToLNu_1J_Incl_10.root -1 1000 2018 MC WJetsToLNu_1J_Incl_10 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_1J_Incl_11.root WJetsToLNu_1J_Incl_11.root -1 1000 2018 MC WJetsToLNu_1J_Incl_11 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_1J_Incl_12.root WJetsToLNu_1J_Incl_12.root -1 1000 2018 MC WJetsToLNu_1J_Incl_12 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_1J_Incl_13.root WJetsToLNu_1J_Incl_13.root -1 1000 2018 MC WJetsToLNu_1J_Incl_13 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_1J_Incl_14.root WJetsToLNu_1J_Incl_14.root -1 1000 2018 MC WJetsToLNu_1J_Incl_14 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_1J_Incl_15.root WJetsToLNu_1J_Incl_15.root -1 1000 2018 MC WJetsToLNu_1J_Incl_15 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_1J_Incl_16.root WJetsToLNu_1J_Incl_16.root -1 1000 2018 MC WJetsToLNu_1J_Incl_16 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_1J_Incl_17.root WJetsToLNu_1J_Incl_17.root -1 1000 2018 MC WJetsToLNu_1J_Incl_17 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_1J_Incl_18.root WJetsToLNu_1J_Incl_18.root -1 1000 2018 MC WJetsToLNu_1J_Incl_18 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_2J_Incl_00.root WJetsToLNu_2J_Incl_00.root -1 1000 2018 MC WJetsToLNu_2J_Incl_00 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_2J_Incl_01.root WJetsToLNu_2J_Incl_01.root -1 1000 2018 MC WJetsToLNu_2J_Incl_01 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_2J_Incl_02.root WJetsToLNu_2J_Incl_02.root -1 1000 2018 MC WJetsToLNu_2J_Incl_02 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_2J_Incl_03.root WJetsToLNu_2J_Incl_03.root -1 1000 2018 MC WJetsToLNu_2J_Incl_03 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_2J_Incl_04.root WJetsToLNu_2J_Incl_04.root -1 1000 2018 MC WJetsToLNu_2J_Incl_04 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_2J_Incl_05.root WJetsToLNu_2J_Incl_05.root -1 1000 2018 MC WJetsToLNu_2J_Incl_05 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_2J_Incl_06.root WJetsToLNu_2J_Incl_06.root -1 1000 2018 MC WJetsToLNu_2J_Incl_06 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_2J_Incl_07.root WJetsToLNu_2J_Incl_07.root -1 1000 2018 MC WJetsToLNu_2J_Incl_07 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_2J_Incl_08.root WJetsToLNu_2J_Incl_08.root -1 1000 2018 MC WJetsToLNu_2J_Incl_08 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_2J_Incl_09.root WJetsToLNu_2J_Incl_09.root -1 1000 2018 MC WJetsToLNu_2J_Incl_09 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_HT100-200_00.root WJetsToLNu_HT100-200_00.root -1 1000 2018 MC WJetsToLNu_HT100-200_00 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_HT100-200_01.root WJetsToLNu_HT100-200_01.root -1 1000 2018 MC WJetsToLNu_HT100-200_01 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_HT100-200_02.root WJetsToLNu_HT100-200_02.root -1 1000 2018 MC WJetsToLNu_HT100-200_02 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_HT1200-2500_00.root WJetsToLNu_HT1200-2500_00.root -1 1000 2018 MC WJetsToLNu_HT1200-2500_00 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_HT200-400_00.root WJetsToLNu_HT200-400_00.root -1 1000 2018 MC WJetsToLNu_HT200-400_00 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_HT200-400_01.root WJetsToLNu_HT200-400_01.root -1 1000 2018 MC WJetsToLNu_HT200-400_01 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_HT200-400_02.root WJetsToLNu_HT200-400_02.root -1 1000 2018 MC WJetsToLNu_HT200-400_02 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_HT2500-Inf_00.root WJetsToLNu_HT2500-Inf_00.root -1 1000 2018 MC WJetsToLNu_HT2500-Inf_00 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_HT400-600_00.root WJetsToLNu_HT400-600_00.root -1 1000 2018 MC WJetsToLNu_HT400-600_00 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_HT600-800_00.root WJetsToLNu_HT600-800_00.root -1 1000 2018 MC WJetsToLNu_HT600-800_00 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_HT600-800_01.root WJetsToLNu_HT600-800_01.root -1 1000 2018 MC WJetsToLNu_HT600-800_01 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_HT600-800_02.root WJetsToLNu_HT600-800_02.root -1 1000 2018 MC WJetsToLNu_HT600-800_02 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_HT600-800_10.root WJetsToLNu_HT600-800_10.root -1 1000 2018 MC WJetsToLNu_HT600-800_10 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_HT600-800_11.root WJetsToLNu_HT600-800_11.root -1 1000 2018 MC WJetsToLNu_HT600-800_11 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_HT600-800_12.root WJetsToLNu_HT600-800_12.root -1 1000 2018 MC WJetsToLNu_HT600-800_12 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_HT70-100_00.root WJetsToLNu_HT70-100_00.root -1 1000 2018 MC WJetsToLNu_HT70-100_00 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_HT70-100_01.root WJetsToLNu_HT70-100_01.root -1 1000 2018 MC WJetsToLNu_HT70-100_01 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_HT70-100_02.root WJetsToLNu_HT70-100_02.root -1 1000 2018 MC WJetsToLNu_HT70-100_02 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_HT800-1200_00.root WJetsToLNu_HT800-1200_00.root -1 1000 2018 MC WJetsToLNu_HT800-1200_00 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_Incl_00.root WJetsToLNu_Incl_00.root -1 1000 2018 MC WJetsToLNu_Incl_00 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_Incl_01.root WJetsToLNu_Incl_01.root -1 1000 2018 MC WJetsToLNu_Incl_01 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_Incl_02.root WJetsToLNu_Incl_02.root -1 1000 2018 MC WJetsToLNu_Incl_02 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_Incl_03.root WJetsToLNu_Incl_03.root -1 1000 2018 MC WJetsToLNu_Incl_03 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_Incl_04.root WJetsToLNu_Incl_04.root -1 1000 2018 MC WJetsToLNu_Incl_04 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_Incl_05.root WJetsToLNu_Incl_05.root -1 1000 2018 MC WJetsToLNu_Incl_05 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_Incl_06.root WJetsToLNu_Incl_06.root -1 1000 2018 MC WJetsToLNu_Incl_06 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_Incl_07.root WJetsToLNu_Incl_07.root -1 1000 2018 MC WJetsToLNu_Incl_07 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WJetsToLNu_Incl_08.root WJetsToLNu_Incl_08.root -1 1000 2018 MC WJetsToLNu_Incl_08 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WWTo1L1Nu2Q_00.root WWTo1L1Nu2Q_00.root -1 1000 2018 MC WWTo1L1Nu2Q_00 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WWToLNuQQ_00.root WWToLNuQQ_00.root -1 1000 2018 MC WWToLNuQQ_00 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WWToLNuQQ_01.root WWToLNuQQ_01.root -1 1000 2018 MC WWToLNuQQ_01 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WWW_00.root WWW_00.root -1 1000 2018 MC WWW_00 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WWZ_00.root WWZ_00.root -1 1000 2018 MC WWZ_00 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WZTo3LNu_00.root WZTo3LNu_00.root -1 1000 2018 MC WZTo3LNu_00 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WZTo3LNu_01.root WZTo3LNu_01.root -1 1000 2018 MC WZTo3LNu_01 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WZZ_00.root WZZ_00.root -1 1000 2018 MC WZZ_00 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WminusHToTauTau_00.root WminusHToTauTau_00.root -1 1000 2018 MC WminusHToTauTau_00 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/WplusHToTauTau_00.root WplusHToTauTau_00.root -1 1000 2018 MC WplusHToTauTau_00 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/ZHToTauTau_00.root ZHToTauTau_00.root -1 1000 2018 MC ZHToTauTau_00 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/ZJetsToNuNu_HT100-200_00.root ZJetsToNuNu_HT100-200_00.root -1 1000 2018 MC ZJetsToNuNu_HT100-200_00 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/ZJetsToNuNu_HT100-200_01.root ZJetsToNuNu_HT100-200_01.root -1 1000 2018 MC ZJetsToNuNu_HT100-200_01 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/ZJetsToNuNu_HT100-200_02.root ZJetsToNuNu_HT100-200_02.root -1 1000 2018 MC ZJetsToNuNu_HT100-200_02 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/ZJetsToNuNu_HT1200-2500_00.root ZJetsToNuNu_HT1200-2500_00.root -1 1000 2018 MC ZJetsToNuNu_HT1200-2500_00 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/ZJetsToNuNu_HT200-400_00.root ZJetsToNuNu_HT200-400_00.root -1 1000 2018 MC ZJetsToNuNu_HT200-400_00 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/ZJetsToNuNu_HT200-400_01.root ZJetsToNuNu_HT200-400_01.root -1 1000 2018 MC ZJetsToNuNu_HT200-400_01 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/ZJetsToNuNu_HT200-400_02.root ZJetsToNuNu_HT200-400_02.root -1 1000 2018 MC ZJetsToNuNu_HT200-400_02 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/ZJetsToNuNu_HT2500-Inf_00.root ZJetsToNuNu_HT2500-Inf_00.root -1 1000 2018 MC ZJetsToNuNu_HT2500-Inf_00 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/ZJetsToNuNu_HT400-600_00.root ZJetsToNuNu_HT400-600_00.root -1 1000 2018 MC ZJetsToNuNu_HT400-600_00 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/ZJetsToNuNu_HT600-800_00.root ZJetsToNuNu_HT600-800_00.root -1 1000 2018 MC ZJetsToNuNu_HT600-800_00 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/ZJetsToNuNu_HT800-1200_00.root ZJetsToNuNu_HT800-1200_00.root -1 1000 2018 MC ZJetsToNuNu_HT800-1200_00 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/ZZTo2L2Q_00.root ZZTo2L2Q_00.root -1 1000 2018 MC ZZTo2L2Q_00 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/ZZTo2L2Q_01.root ZZTo2L2Q_01.root -1 1000 2018 MC ZZTo2L2Q_01 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/ZZTo2L2Q_02.root ZZTo2L2Q_02.root -1 1000 2018 MC ZZTo2L2Q_02 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/ZZTo4L_00.root ZZTo4L_00.root -1 1000 2018 MC ZZTo4L_00 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/ZZZ_00.root ZZZ_00.root -1 1000 2018 MC ZZZ_00 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/ggZH_HToTauTau_ZToLL_00.root ggZH_HToTauTau_ZToLL_00.root -1 1000 2018 MC ggZH_HToTauTau_ZToLL_00 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/ggZH_HToTauTau_ZToNuNu_00.root ggZH_HToTauTau_ZToNuNu_00.root -1 1000 2018 MC ggZH_HToTauTau_ZToNuNu_00 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/ggZH_HToTauTau_ZToQQ_00.root ggZH_HToTauTau_ZToQQ_00.root -1 1000 2018 MC ggZH_HToTauTau_ZToQQ_00 $outDir
# ./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/ttHToNonbb_00.root ttHToNonbb_00.root -1 1000 2018 MC ttHToNonbb_00 $outDir


###########################  DATA #########################

./rootcom tautau_analyzer analyze_tautau 


./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauA_00.root TauA_00.root -1 1000 2018 DATA TauA_00 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauA_01.root TauA_01.root -1 1000 2018 DATA TauA_01 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauA_02.root TauA_02.root -1 1000 2018 DATA TauA_02 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauA_03.root TauA_03.root -1 1000 2018 DATA TauA_03 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauA_04.root TauA_04.root -1 1000 2018 DATA TauA_04 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauB_00.root TauB_00.root -1 1000 2018 DATA TauB_00 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauB_01.root TauB_01.root -1 1000 2018 DATA TauB_01 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauB_02.root TauB_02.root -1 1000 2018 DATA TauB_02 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauC_00.root TauC_00.root -1 1000 2018 DATA TauC_00 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauC_01.root TauC_01.root -1 1000 2018 DATA TauC_01 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauC_02.root TauC_02.root -1 1000 2018 DATA TauC_02 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauD_PromptReco_00.root TauD_PromptReco_00.root -1 1000 2018 DATA TauD_PromptReco_00 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauD_PromptReco_01.root TauD_PromptReco_01.root -1 1000 2018 DATA TauD_PromptReco_01 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauD_PromptReco_02.root TauD_PromptReco_02.root -1 1000 2018 DATA TauD_PromptReco_02 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauD_PromptReco_03.root TauD_PromptReco_03.root -1 1000 2018 DATA TauD_PromptReco_03 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauD_PromptReco_04.root TauD_PromptReco_04.root -1 1000 2018 DATA TauD_PromptReco_04 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauD_PromptReco_05.root TauD_PromptReco_05.root -1 1000 2018 DATA TauD_PromptReco_05 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauD_PromptReco_06.root TauD_PromptReco_06.root -1 1000 2018 DATA TauD_PromptReco_06 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauD_PromptReco_07.root TauD_PromptReco_07.root -1 1000 2018 DATA TauD_PromptReco_07 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauD_PromptReco_08.root TauD_PromptReco_08.root -1 1000 2018 DATA TauD_PromptReco_08 $outDir
./MakeCondorFiles.csh analyze_tautau /hdfs/store/user/jmadhusu/2018_skimmed/tautau/TauD_PromptReco_09.root TauD_PromptReco_09.root -1 1000 2018 DATA TauD_PromptReco_09 $outDir
