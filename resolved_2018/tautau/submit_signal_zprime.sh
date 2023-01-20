
    outDir="Out_$(date +"%d-%m-%Y_%H-%M")" 
    mkdir $outDir 
    f_exe="analyze_tautau"
    ###########################   Signal  #########################
    ./rootcom tautau_analyzer $f_exe
    
    
./MakeCondorFiles.csh $f_exe root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2018_1.root Zpbaryonic2018_1.root -1 1000 2018 MC Zpbaryonic2018_1 $outDir
./MakeCondorFiles.csh $f_exe root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2018_10.root Zpbaryonic2018_10.root -1 1000 2018 MC Zpbaryonic2018_10 $outDir
./MakeCondorFiles.csh $f_exe root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2018_11.root Zpbaryonic2018_11.root -1 1000 2018 MC Zpbaryonic2018_11 $outDir
./MakeCondorFiles.csh $f_exe root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2018_12.root Zpbaryonic2018_12.root -1 1000 2018 MC Zpbaryonic2018_12 $outDir
./MakeCondorFiles.csh $f_exe root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2018_13.root Zpbaryonic2018_13.root -1 1000 2018 MC Zpbaryonic2018_13 $outDir
./MakeCondorFiles.csh $f_exe root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2018_14.root Zpbaryonic2018_14.root -1 1000 2018 MC Zpbaryonic2018_14 $outDir
./MakeCondorFiles.csh $f_exe root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2018_15.root Zpbaryonic2018_15.root -1 1000 2018 MC Zpbaryonic2018_15 $outDir
./MakeCondorFiles.csh $f_exe root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2018_16.root Zpbaryonic2018_16.root -1 1000 2018 MC Zpbaryonic2018_16 $outDir
./MakeCondorFiles.csh $f_exe root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2018_17.root Zpbaryonic2018_17.root -1 1000 2018 MC Zpbaryonic2018_17 $outDir
./MakeCondorFiles.csh $f_exe root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2018_18.root Zpbaryonic2018_18.root -1 1000 2018 MC Zpbaryonic2018_18 $outDir
./MakeCondorFiles.csh $f_exe root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2018_19.root Zpbaryonic2018_19.root -1 1000 2018 MC Zpbaryonic2018_19 $outDir
./MakeCondorFiles.csh $f_exe root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2018_2.root Zpbaryonic2018_2.root -1 1000 2018 MC Zpbaryonic2018_2 $outDir
./MakeCondorFiles.csh $f_exe root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2018_20.root Zpbaryonic2018_20.root -1 1000 2018 MC Zpbaryonic2018_20 $outDir
./MakeCondorFiles.csh $f_exe root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2018_21.root Zpbaryonic2018_21.root -1 1000 2018 MC Zpbaryonic2018_21 $outDir
./MakeCondorFiles.csh $f_exe root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2018_22.root Zpbaryonic2018_22.root -1 1000 2018 MC Zpbaryonic2018_22 $outDir
./MakeCondorFiles.csh $f_exe root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2018_23.root Zpbaryonic2018_23.root -1 1000 2018 MC Zpbaryonic2018_23 $outDir
./MakeCondorFiles.csh $f_exe root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2018_24.root Zpbaryonic2018_24.root -1 1000 2018 MC Zpbaryonic2018_24 $outDir
./MakeCondorFiles.csh $f_exe root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2018_25.root Zpbaryonic2018_25.root -1 1000 2018 MC Zpbaryonic2018_25 $outDir
./MakeCondorFiles.csh $f_exe root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2018_26.root Zpbaryonic2018_26.root -1 1000 2018 MC Zpbaryonic2018_26 $outDir
./MakeCondorFiles.csh $f_exe root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2018_27.root Zpbaryonic2018_27.root -1 1000 2018 MC Zpbaryonic2018_27 $outDir
./MakeCondorFiles.csh $f_exe root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2018_28.root Zpbaryonic2018_28.root -1 1000 2018 MC Zpbaryonic2018_28 $outDir
./MakeCondorFiles.csh $f_exe root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2018_29.root Zpbaryonic2018_29.root -1 1000 2018 MC Zpbaryonic2018_29 $outDir
./MakeCondorFiles.csh $f_exe root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2018_3.root Zpbaryonic2018_3.root -1 1000 2018 MC Zpbaryonic2018_3 $outDir
./MakeCondorFiles.csh $f_exe root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2018_30.root Zpbaryonic2018_30.root -1 1000 2018 MC Zpbaryonic2018_30 $outDir
./MakeCondorFiles.csh $f_exe root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2018_31.root Zpbaryonic2018_31.root -1 1000 2018 MC Zpbaryonic2018_31 $outDir
./MakeCondorFiles.csh $f_exe root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2018_32.root Zpbaryonic2018_32.root -1 1000 2018 MC Zpbaryonic2018_32 $outDir
./MakeCondorFiles.csh $f_exe root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2018_33.root Zpbaryonic2018_33.root -1 1000 2018 MC Zpbaryonic2018_33 $outDir
./MakeCondorFiles.csh $f_exe root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2018_34.root Zpbaryonic2018_34.root -1 1000 2018 MC Zpbaryonic2018_34 $outDir
./MakeCondorFiles.csh $f_exe root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2018_35.root Zpbaryonic2018_35.root -1 1000 2018 MC Zpbaryonic2018_35 $outDir
./MakeCondorFiles.csh $f_exe root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2018_36.root Zpbaryonic2018_36.root -1 1000 2018 MC Zpbaryonic2018_36 $outDir
./MakeCondorFiles.csh $f_exe root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2018_37.root Zpbaryonic2018_37.root -1 1000 2018 MC Zpbaryonic2018_37 $outDir
./MakeCondorFiles.csh $f_exe root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2018_38.root Zpbaryonic2018_38.root -1 1000 2018 MC Zpbaryonic2018_38 $outDir
./MakeCondorFiles.csh $f_exe root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2018_39.root Zpbaryonic2018_39.root -1 1000 2018 MC Zpbaryonic2018_39 $outDir
./MakeCondorFiles.csh $f_exe root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2018_4.root Zpbaryonic2018_4.root -1 1000 2018 MC Zpbaryonic2018_4 $outDir
./MakeCondorFiles.csh $f_exe root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2018_40.root Zpbaryonic2018_40.root -1 1000 2018 MC Zpbaryonic2018_40 $outDir
./MakeCondorFiles.csh $f_exe root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2018_41.root Zpbaryonic2018_41.root -1 1000 2018 MC Zpbaryonic2018_41 $outDir
./MakeCondorFiles.csh $f_exe root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2018_42.root Zpbaryonic2018_42.root -1 1000 2018 MC Zpbaryonic2018_42 $outDir
./MakeCondorFiles.csh $f_exe root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2018_43.root Zpbaryonic2018_43.root -1 1000 2018 MC Zpbaryonic2018_43 $outDir
./MakeCondorFiles.csh $f_exe root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2018_5.root Zpbaryonic2018_5.root -1 1000 2018 MC Zpbaryonic2018_5 $outDir
./MakeCondorFiles.csh $f_exe root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2018_6.root Zpbaryonic2018_6.root -1 1000 2018 MC Zpbaryonic2018_6 $outDir
./MakeCondorFiles.csh $f_exe root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2018_7.root Zpbaryonic2018_7.root -1 1000 2018 MC Zpbaryonic2018_7 $outDir
./MakeCondorFiles.csh $f_exe root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2018_8.root Zpbaryonic2018_8.root -1 1000 2018 MC Zpbaryonic2018_8 $outDir
./MakeCondorFiles.csh $f_exe root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/zprimeBaryonic/signal_para_split/combined/Zpbaryonic2018_9.root Zpbaryonic2018_9.root -1 1000 2018 MC Zpbaryonic2018_9 $outDir
