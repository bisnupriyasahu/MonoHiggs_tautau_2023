
    outDir="Out_$(date +"%d-%m-%Y_%H-%M")" 
    mkdir $outDir 
    
    ###########################   Signal  #########################
    ./rootcom etau_analyzer analyze_etau 

./MakeCondorFiles.csh analyze_etau root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/2018_skimmed/signal_gg/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_500_MH4_200.root 2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_500_MH4_200.root -1 1000 2018 MC 2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_500_MH4_200 $outDir

