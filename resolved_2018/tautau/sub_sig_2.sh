
outDir="Out_$(date +"%d-%m-%Y_%H-%M")" 
mkdir $outDir 

###########################   MC  #########################


./rootcom tautau_analyzer analyze_tautau



./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_ZPB_signal_sample_17032023/2017_skimmed/signal/hadd_postAN_inp/Signal_ZpBaryonic_2017_10.root Signal_ZpBaryonic_2018_10.root -1 1000 2018 MC Signal_ZpBaryonic_2018_10  $outDir


./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/bsahu/Resolved_ZPB_signal_sample_17032023/2017_skimmed/signal/hadd_postAN_inp/Signal_ZpBaryonic_2017_16.root Signal_ZpBaryonic_2018_16.root -1 1000 2018 MC Signal_ZpBaryonic_2018_16  $outDir
