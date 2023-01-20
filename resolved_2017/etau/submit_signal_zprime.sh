
    outDir="Out_$(date +"%d-%m-%Y_%H-%M")" 
    mkdir $outDir 
    
    ###########################   Signal  #########################
    ./rootcom etau_analyzer analyze_etau 
    
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2017_1.root Zpbaryonic2017_1.root -1 1000 2018 MC Zpbaryonic2017_1 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2017_10.root Zpbaryonic2017_10.root -1 1000 2018 MC Zpbaryonic2017_10 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2017_11.root Zpbaryonic2017_11.root -1 1000 2018 MC Zpbaryonic2017_11 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2017_12.root Zpbaryonic2017_12.root -1 1000 2018 MC Zpbaryonic2017_12 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2017_13.root Zpbaryonic2017_13.root -1 1000 2018 MC Zpbaryonic2017_13 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2017_14.root Zpbaryonic2017_14.root -1 1000 2018 MC Zpbaryonic2017_14 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2017_15.root Zpbaryonic2017_15.root -1 1000 2018 MC Zpbaryonic2017_15 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2017_16.root Zpbaryonic2017_16.root -1 1000 2018 MC Zpbaryonic2017_16 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2017_17.root Zpbaryonic2017_17.root -1 1000 2018 MC Zpbaryonic2017_17 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2017_18.root Zpbaryonic2017_18.root -1 1000 2018 MC Zpbaryonic2017_18 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2017_19.root Zpbaryonic2017_19.root -1 1000 2018 MC Zpbaryonic2017_19 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2017_2.root Zpbaryonic2017_2.root -1 1000 2018 MC Zpbaryonic2017_2 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2017_20.root Zpbaryonic2017_20.root -1 1000 2018 MC Zpbaryonic2017_20 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2017_21.root Zpbaryonic2017_21.root -1 1000 2018 MC Zpbaryonic2017_21 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2017_22.root Zpbaryonic2017_22.root -1 1000 2018 MC Zpbaryonic2017_22 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2017_23.root Zpbaryonic2017_23.root -1 1000 2018 MC Zpbaryonic2017_23 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2017_24.root Zpbaryonic2017_24.root -1 1000 2018 MC Zpbaryonic2017_24 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2017_25.root Zpbaryonic2017_25.root -1 1000 2018 MC Zpbaryonic2017_25 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2017_26.root Zpbaryonic2017_26.root -1 1000 2018 MC Zpbaryonic2017_26 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2017_27.root Zpbaryonic2017_27.root -1 1000 2018 MC Zpbaryonic2017_27 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2017_28.root Zpbaryonic2017_28.root -1 1000 2018 MC Zpbaryonic2017_28 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2017_29.root Zpbaryonic2017_29.root -1 1000 2018 MC Zpbaryonic2017_29 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2017_3.root Zpbaryonic2017_3.root -1 1000 2018 MC Zpbaryonic2017_3 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2017_30.root Zpbaryonic2017_30.root -1 1000 2018 MC Zpbaryonic2017_30 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2017_31.root Zpbaryonic2017_31.root -1 1000 2018 MC Zpbaryonic2017_31 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2017_32.root Zpbaryonic2017_32.root -1 1000 2018 MC Zpbaryonic2017_32 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2017_33.root Zpbaryonic2017_33.root -1 1000 2018 MC Zpbaryonic2017_33 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2017_34.root Zpbaryonic2017_34.root -1 1000 2018 MC Zpbaryonic2017_34 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2017_35.root Zpbaryonic2017_35.root -1 1000 2018 MC Zpbaryonic2017_35 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2017_36.root Zpbaryonic2017_36.root -1 1000 2018 MC Zpbaryonic2017_36 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2017_37.root Zpbaryonic2017_37.root -1 1000 2018 MC Zpbaryonic2017_37 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2017_38.root Zpbaryonic2017_38.root -1 1000 2018 MC Zpbaryonic2017_38 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2017_39.root Zpbaryonic2017_39.root -1 1000 2018 MC Zpbaryonic2017_39 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2017_4.root Zpbaryonic2017_4.root -1 1000 2018 MC Zpbaryonic2017_4 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2017_40.root Zpbaryonic2017_40.root -1 1000 2018 MC Zpbaryonic2017_40 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2017_41.root Zpbaryonic2017_41.root -1 1000 2018 MC Zpbaryonic2017_41 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2017_42.root Zpbaryonic2017_42.root -1 1000 2018 MC Zpbaryonic2017_42 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2017_43.root Zpbaryonic2017_43.root -1 1000 2018 MC Zpbaryonic2017_43 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2017_5.root Zpbaryonic2017_5.root -1 1000 2018 MC Zpbaryonic2017_5 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2017_6.root Zpbaryonic2017_6.root -1 1000 2018 MC Zpbaryonic2017_6 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2017_7.root Zpbaryonic2017_7.root -1 1000 2018 MC Zpbaryonic2017_7 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2017_8.root Zpbaryonic2017_8.root -1 1000 2018 MC Zpbaryonic2017_8 $outDir
./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2017_9.root Zpbaryonic2017_9.root -1 1000 2018 MC Zpbaryonic2017_9 $outDir
