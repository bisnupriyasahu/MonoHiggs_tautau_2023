
outDir="Out_$(date +"%d-%m-%Y_%H-%M")" 
mkdir $outDir 

###########################   MC  #########################
#/hdfs/
#root://cmsxrootd.hep.wisc.edu/
./rootcom tautau_analyzer analyze_tautau  


./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/tautau_new/DY1JetsToLL_M-50_TuneCP5_00.root DY1JetsToLL_M-50_TuneCP5_00.root -1 1000 2017 MC DY1JetsToLL_M-50_TuneCP5_00 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/tautau_new/DY1JetsToLL_M-50_TuneCP5_01.root DY1JetsToLL_M-50_TuneCP5_01.root -1 1000 2017 MC DY1JetsToLL_M-50_TuneCP5_01 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/tautau_new/DY1JetsToLL_M-50_TuneCP5_02.root DY1JetsToLL_M-50_TuneCP5_02.root -1 1000 2017 MC DY1JetsToLL_M-50_TuneCP5_02 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/tautau_new/DY1JetsToLL_M-50_TuneCP5_03.root DY1JetsToLL_M-50_TuneCP5_03.root -1 1000 2017 MC DY1JetsToLL_M-50_TuneCP5_03 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/tautau_new/DY1JetsToLL_M-50_TuneCP5_04.root DY1JetsToLL_M-50_TuneCP5_04.root -1 1000 2017 MC DY1JetsToLL_M-50_TuneCP5_04 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/tautau_new/DY2JetsToLL_M-50_TuneCP5_00.root DY2JetsToLL_M-50_TuneCP5_00.root -1 1000 2017 MC DY2JetsToLL_M-50_TuneCP5_00 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/tautau_new/DY2JetsToLL_M-50_TuneCP5_01.root DY2JetsToLL_M-50_TuneCP5_01.root -1 1000 2017 MC DY2JetsToLL_M-50_TuneCP5_01 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/tautau_new/DY3JetsToLL_M-50_TuneCP5_ext1_00.root DY3JetsToLL_M-50_TuneCP5_ext1_00.root -1 1000 2017 MC DY3JetsToLL_M-50_TuneCP5_ext1_00 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/tautau_new/DY3JetsToLL_M-50_TuneCP5_v1_00.root DY3JetsToLL_M-50_TuneCP5_v1_00.root -1 1000 2017 MC DY3JetsToLL_M-50_TuneCP5_v1_00 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/tautau_new/DY4JetsToLL_M-50_TuneCP5_00.root DY4JetsToLL_M-50_TuneCP5_00.root -1 1000 2017 MC DY4JetsToLL_M-50_TuneCP5_00 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/tautau_new/DYJetsToLL_M-10to50_TuneCP5_00.root DYJetsToLL_M-10to50_TuneCP5_00.root -1 1000 2017 MC DYJetsToLL_M-10to50_TuneCP5_00 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/tautau_new/DYJetsToLL_M-10to50_TuneCP5_01.root DYJetsToLL_M-10to50_TuneCP5_01.root -1 1000 2017 MC DYJetsToLL_M-10to50_TuneCP5_01 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/tautau_new/DYJetsToLL_M-10to50_TuneCP5_02.root DYJetsToLL_M-10to50_TuneCP5_02.root -1 1000 2017 MC DYJetsToLL_M-10to50_TuneCP5_02 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/tautau_new/DYJetsToLL_M-10to50_TuneCP5_03.root DYJetsToLL_M-10to50_TuneCP5_03.root -1 1000 2017 MC DYJetsToLL_M-10to50_TuneCP5_03 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/tautau_new/DYJetsToLL_M-10to50_TuneCP5_04.root DYJetsToLL_M-10to50_TuneCP5_04.root -1 1000 2017 MC DYJetsToLL_M-10to50_TuneCP5_04 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/tautau_new/DYJetsToLL_M-50_TuneCP5_ext1_v1_00.root DYJetsToLL_M-50_TuneCP5_ext1_v1_00.root -1 1000 2017 MC DYJetsToLL_M-50_TuneCP5_ext1_v1_00 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/tautau_new/DYJetsToLL_M-50_TuneCP5_ext1_v1_01.root DYJetsToLL_M-50_TuneCP5_ext1_v1_01.root -1 1000 2017 MC DYJetsToLL_M-50_TuneCP5_ext1_v1_01 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/tautau_new/DYJetsToLL_M-50_TuneCP5_ext1_v1_02.root DYJetsToLL_M-50_TuneCP5_ext1_v1_02.root -1 1000 2017 MC DYJetsToLL_M-50_TuneCP5_ext1_v1_02 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/tautau_new/DYJetsToLL_M-50_TuneCP5_ext1_v1_03.root DYJetsToLL_M-50_TuneCP5_ext1_v1_03.root -1 1000 2017 MC DYJetsToLL_M-50_TuneCP5_ext1_v1_03 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/tautau_new/DYJetsToLL_M-50_TuneCP5_ext1_v1_04.root DYJetsToLL_M-50_TuneCP5_ext1_v1_04.root -1 1000 2017 MC DYJetsToLL_M-50_TuneCP5_ext1_v1_04 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/tautau_new/DYJetsToLL_M-50_TuneCP5_ext1_v1_05.root DYJetsToLL_M-50_TuneCP5_ext1_v1_05.root -1 1000 2017 MC DYJetsToLL_M-50_TuneCP5_ext1_v1_05 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/tautau_new/DYJetsToLL_M-50_TuneCP5_v1_00.root DYJetsToLL_M-50_TuneCP5_v1_00.root -1 1000 2017 MC DYJetsToLL_M-50_TuneCP5_v1_00 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/tautau_new/DYJetsToLL_M-50_TuneCP5_v1_01.root DYJetsToLL_M-50_TuneCP5_v1_01.root -1 1000 2017 MC DYJetsToLL_M-50_TuneCP5_v1_01 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/tautau_new/DYJetsToLL_M-50_TuneCP5_v1_02.root DYJetsToLL_M-50_TuneCP5_v1_02.root -1 1000 2017 MC DYJetsToLL_M-50_TuneCP5_v1_02 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/tautau_new/DYJetsToLL_M-50_TuneCP5_v1_03.root DYJetsToLL_M-50_TuneCP5_v1_03.root -1 1000 2017 MC DYJetsToLL_M-50_TuneCP5_v1_03 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/tautau_new/DYJetsToLL_M-50_TuneCP5_v1_04.root DYJetsToLL_M-50_TuneCP5_v1_04.root -1 1000 2017 MC DYJetsToLL_M-50_TuneCP5_v1_04 $outDir
./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/tautau_new/DYJetsToLL_M-50_TuneCP5_v1_05.root DYJetsToLL_M-50_TuneCP5_v1_05.root -1 1000 2017 MC DYJetsToLL_M-50_TuneCP5_v1_05 $outDir
