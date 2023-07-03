
    outDir="Out_$(date +"%d-%m-%Y_%H-%M")" 
    mkdir $outDir 
    
    ###########################   Signal  #########################
    ./rootcom tautau_analyzer analyze_tautau

./MakeCondorFiles.csh analyze_tautau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2017_skimmed/2hdma/2HDMa_gg_sinp_0p35_tanb_4p0_mXd_10_MH3_600_MH4_250.root 2HDMa_gg_sinp_0p35_tanb_4p0_mXd_10_MH3_600_MH4_250.root -1 1000 2018 MC 2HDMa_gg_sinp_0p35_tanb_4p0_mXd_10_MH3_600_MH4_250 $outDir
