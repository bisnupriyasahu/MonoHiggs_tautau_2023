
#!/bin/bash
set -e 

if [ "$(ls -A files_initial)" ]; then
echo "Take action files_initial/ is not Empty .... removing existing files ....."
rm files_initial/*.root
else
echo " files_initial/ is Empty"
fi

hadd files_initial/DY1JetsToLL_final.root ../output/DY1JetsToLL_00.root ../output/DY1JetsToLL_01.root ../output/DY1JetsToLL_02.root ../output/DY1JetsToLL_03.root ../output/DY1JetsToLL_04.root ../output/DY1JetsToLL_05.root ../output/DY1JetsToLL_06.root ../output/DY1JetsToLL_07.root ../output/DY1JetsToLL_08.root 
hadd files_initial/DY2JetsToLL_final.root ../output/DY2JetsToLL_00.root ../output/DY2JetsToLL_01.root ../output/DY2JetsToLL_02.root ../output/DY2JetsToLL_03.root 
hadd files_initial/DY3JetsToLL_final.root ../output/DY3JetsToLL_00.root 
hadd files_initial/DY4JetsToLL_final.root ../output/DY4JetsToLL_00.root 
hadd files_initial/DYJetsToLL_final.root ../output/DYJetsToLL_00.root ../output/DYJetsToLL_01.root ../output/DYJetsToLL_02.root ../output/DYJetsToLL_03.root ../output/DYJetsToLL_04.root ../output/DYJetsToLL_05.root ../output/DYJetsToLL_06.root ../output/DYJetsToLL_07.root ../output/DYJetsToLL_08.root ../output/DYJetsToLL_09.root ../output/DYJetsToLL_11.root ../output/DYJetsToLL_12.root 
hadd files_initial/DYJetsToLL_M10to50_final.root ../output/DYJetsToLL_M10to50_00.root ../output/DYJetsToLL_M10to50_01.root ../output/DYJetsToLL_M10to50_02.root ../output/DYJetsToLL_M10to50_03.root ../output/DYJetsToLL_M10to50_04.root ../output/DYJetsToLL_M10to50_05.root ../output/DYJetsToLL_M10to50_06.root ../output/DYJetsToLL_M10to50_07.root 
hadd files_initial/EWKWMinus2Jets_WToLNu_final.root ../output/EWKWMinus2Jets_WToLNu_00.root 
hadd files_initial/EWKWPlus2Jets_WToLNu_final.root ../output/EWKWPlus2Jets_WToLNu_00.root 
hadd files_initial/EWKZ2Jets_ZToLL_final.root ../output/EWKZ2Jets_ZToLL_00.root 
hadd files_initial/EWKZ2Jets_ZToNuNu_final.root ../output/EWKZ2Jets_ZToNuNu_00.root 
hadd files_initial/GluGluHToTauTau_final.root ../output/GluGluHToTauTau_00.root ../output/GluGluHToTauTau_01.root 
hadd files_initial/GluGluHToWWTo2L2Nu_final.root ../output/GluGluHToWWTo2L2Nu_00.root 
hadd files_initial/GluGluZH_HToWW_final.root ../output/GluGluZH_HToWW_00.root 
hadd files_initial/HWminusJ_HToWW_final.root ../output/HWminusJ_HToWW_00.root 
hadd files_initial/HWplusJ_HToWW_final.root ../output/HWplusJ_HToWW_00.root 
hadd files_initial/HZJ_HToWW_final.root ../output/HZJ_HToWW_00.root 
hadd files_initial/ST_t-channel_antitop_final.root ../output/ST_t-channel_antitop_00.root ../output/ST_t-channel_antitop_01.root ../output/ST_t-channel_antitop_02.root ../output/ST_t-channel_antitop_03.root ../output/ST_t-channel_antitop_04.root ../output/ST_t-channel_antitop_05.root ../output/ST_t-channel_antitop_06.root ../output/ST_t-channel_antitop_07.root ../output/ST_t-channel_antitop_10.root ../output/ST_t-channel_antitop_20.root ../output/ST_t-channel_antitop_30.root ../output/ST_t-channel_antitop_40.root ../output/ST_t-channel_antitop_50.root ../output/ST_t-channel_antitop_60.root ../output/ST_t-channel_antitop_70.root 
hadd files_initial/ST_t-channel_top_final.root ../output/ST_t-channel_top_00.root ../output/ST_t-channel_top_01.root ../output/ST_t-channel_top_02.root ../output/ST_t-channel_top_03.root ../output/ST_t-channel_top_04.root ../output/ST_t-channel_top_05.root ../output/ST_t-channel_top_06.root ../output/ST_t-channel_top_07.root ../output/ST_t-channel_top_08.root ../output/ST_t-channel_top_09.root ../output/ST_t-channel_top_10.root ../output/ST_t-channel_top_11.root ../output/ST_t-channel_top_12.root ../output/ST_t-channel_top_13.root ../output/ST_t-channel_top_14.root ../output/ST_t-channel_top_15.root ../output/ST_t-channel_top_16.root ../output/ST_t-channel_top_17.root ../output/ST_t-channel_top_18.root ../output/ST_t-channel_top_19.root ../output/ST_t-channel_top_20.root 
hadd files_initial/ST_tW_antitop_final.root ../output/ST_tW_antitop_00.root 
hadd files_initial/ST_tW_top_final.root ../output/ST_tW_top_00.root ../output/ST_tW_top_01.root 
hadd files_initial/TTTo2L2Nu_powheg_final.root ../output/TTTo2L2Nu_powheg_00.root ../output/TTTo2L2Nu_powheg_01.root ../output/TTTo2L2Nu_powheg_02.root ../output/TTTo2L2Nu_powheg_03.root ../output/TTTo2L2Nu_powheg_04.root ../output/TTTo2L2Nu_powheg_05.root ../output/TTTo2L2Nu_powheg_06.root ../output/TTTo2L2Nu_powheg_10.root ../output/TTTo2L2Nu_powheg_20.root ../output/TTTo2L2Nu_powheg_30.root ../output/TTTo2L2Nu_powheg_40.root ../output/TTTo2L2Nu_powheg_50.root ../output/TTTo2L2Nu_powheg_60.root ../output/TTTo2L2Nu_powheg_70.root 
hadd files_initial/TTToHadronic_powheg_final.root ../output/TTToHadronic_powheg_00.root ../output/TTToHadronic_powheg_01.root ../output/TTToHadronic_powheg_02.root ../output/TTToHadronic_powheg_03.root ../output/TTToHadronic_powheg_05.root ../output/TTToHadronic_powheg_06.root ../output/TTToHadronic_powheg_07.root ../output/TTToHadronic_powheg_08.root ../output/TTToHadronic_powheg_10.root ../output/TTToHadronic_powheg_11.root ../output/TTToHadronic_powheg_12.root ../output/TTToHadronic_powheg_13.root ../output/TTToHadronic_powheg_14.root ../output/TTToHadronic_powheg_15.root ../output/TTToHadronic_powheg_16.root ../output/TTToHadronic_powheg_17.root ../output/TTToHadronic_powheg_18.root ../output/TTToHadronic_powheg_20.root ../output/TTToHadronic_powheg_21.root ../output/TTToHadronic_powheg_22.root ../output/TTToHadronic_powheg_23.root ../output/TTToHadronic_powheg_24.root ../output/TTToHadronic_powheg_25.root ../output/TTToHadronic_powheg_26.root ../output/TTToHadronic_powheg_27.root ../output/TTToHadronic_powheg_30.root ../output/TTToHadronic_powheg_31.root ../output/TTToHadronic_powheg_32.root ../output/TTToHadronic_powheg_33.root ../output/TTToHadronic_powheg_34.root ../output/TTToHadronic_powheg_35.root ../output/TTToHadronic_powheg_36.root ../output/TTToHadronic_powheg_37.root 
hadd files_initial/TTToSemiLeptonic_powheg_final.root ../output/TTToSemiLeptonic_powheg_00.root ../output/TTToSemiLeptonic_powheg_01.root ../output/TTToSemiLeptonic_powheg_10.root ../output/TTToSemiLeptonic_powheg_11.root ../output/TTToSemiLeptonic_powheg_20.root ../output/TTToSemiLeptonic_powheg_21.root ../output/TTToSemiLeptonic_powheg_30.root ../output/TTToSemiLeptonic_powheg_31.root ../output/TTToSemiLeptonic_powheg_40.root ../output/TTToSemiLeptonic_powheg_41.root ../output/TTToSemiLeptonic_powheg_50.root ../output/TTToSemiLeptonic_powheg_51.root ../output/TTToSemiLeptonic_powheg_60.root ../output/TTToSemiLeptonic_powheg_70.root ../output/TTToSemiLeptonic_powheg_80.root ../output/TTToSemiLeptonic_powheg_90.root 
hadd files_initial/VBFHToTauTau_final.root ../output/VBFHToTauTau_00.root 
hadd files_initial/VBFHToWWTo2L2Nu_final.root ../output/VBFHToWWTo2L2Nu_00.root 
hadd files_initial/VVTo2L2Nu_final.root ../output/VVTo2L2Nu_00.root ../output/VVTo2L2Nu_01.root 
hadd files_initial/W1JetsToLNu_final.root ../output/W1JetsToLNu_00.root ../output/W1JetsToLNu_01.root ../output/W1JetsToLNu_02.root ../output/W1JetsToLNu_03.root ../output/W1JetsToLNu_04.root ../output/W1JetsToLNu_05.root 
hadd files_initial/W2JetsToLNu_final.root ../output/W2JetsToLNu_00.root ../output/W2JetsToLNu_01.root ../output/W2JetsToLNu_02.root 
hadd files_initial/W3JetsToLNu_final.root ../output/W3JetsToLNu_00.root ../output/W3JetsToLNu_01.root 
hadd files_initial/W4JetsToLNu_final.root ../output/W4JetsToLNu_00.root ../output/W4JetsToLNu_01.root 
hadd files_initial/WGToLNuG_final.root ../output/WGToLNuG_00.root 
hadd files_initial/WWTo1L1Nu2Q_final.root ../output/WWTo1L1Nu2Q_00.root 
hadd files_initial/WWToLNuQQ_final.root ../output/WWToLNuQQ_00.root ../output/WWToLNuQQ_01.root 
hadd files_initial/WWW_final.root ../output/WWW_00.root 
hadd files_initial/WWZ_final.root ../output/WWZ_00.root 
hadd files_initial/WZTo3LNu_final.root ../output/WZTo3LNu_00.root ../output/WZTo3LNu_01.root 
hadd files_initial/WZZ_final.root ../output/WZZ_00.root 
hadd files_initial/WminusHToTauTau_final.root ../output/WminusHToTauTau_00.root 
hadd files_initial/WplusHToTauTau_final.root ../output/WplusHToTauTau_00.root 
hadd files_initial/ZHToTauTau_final.root ../output/ZHToTauTau_00.root 
hadd files_initial/ZJetsToNuNu_HT100-200_final.root ../output/ZJetsToNuNu_HT100-200_00.root ../output/ZJetsToNuNu_HT100-200_01.root ../output/ZJetsToNuNu_HT100-200_02.root 
hadd files_initial/ZJetsToNuNu_HT1200-2500_final.root ../output/ZJetsToNuNu_HT1200-2500_00.root 
hadd files_initial/ZJetsToNuNu_HT200-400_final.root ../output/ZJetsToNuNu_HT200-400_00.root ../output/ZJetsToNuNu_HT200-400_01.root ../output/ZJetsToNuNu_HT200-400_02.root 
hadd files_initial/ZJetsToNuNu_HT2500-Inf_final.root ../output/ZJetsToNuNu_HT2500-Inf_00.root 
hadd files_initial/ZJetsToNuNu_HT400-600_final.root ../output/ZJetsToNuNu_HT400-600_00.root 
hadd files_initial/ZJetsToNuNu_HT600-800_final.root ../output/ZJetsToNuNu_HT600-800_00.root 
hadd files_initial/ZJetsToNuNu_HT800-1200_final.root ../output/ZJetsToNuNu_HT800-1200_00.root 
hadd files_initial/ZZTo2L2Q_final.root ../output/ZZTo2L2Q_00.root ../output/ZZTo2L2Q_01.root ../output/ZZTo2L2Q_02.root 
hadd files_initial/ZZTo4L_final.root ../output/ZZTo4L_00.root 
hadd files_initial/ZZZ_final.root ../output/ZZZ_00.root 
hadd files_initial/fullLumi_TauA_final.root ../output/fullLumi_TauA_00.root ../output/fullLumi_TauA_01.root ../output/fullLumi_TauA_02.root ../output/fullLumi_TauA_03.root ../output/fullLumi_TauA_04.root 
hadd files_initial/fullLumi_TauB_final.root ../output/fullLumi_TauB_00.root ../output/fullLumi_TauB_01.root ../output/fullLumi_TauB_02.root 
hadd files_initial/fullLumi_TauC_final.root ../output/fullLumi_TauC_00.root ../output/fullLumi_TauC_01.root ../output/fullLumi_TauC_02.root 
hadd files_initial/fullLumi_TauD_PromptReco_final.root ../output/fullLumi_TauD_PromptReco_00.root ../output/fullLumi_TauD_PromptReco_01.root ../output/fullLumi_TauD_PromptReco_02.root ../output/fullLumi_TauD_PromptReco_03.root ../output/fullLumi_TauD_PromptReco_04.root ../output/fullLumi_TauD_PromptReco_05.root ../output/fullLumi_TauD_PromptReco_06.root ../output/fullLumi_TauD_PromptReco_07.root ../output/fullLumi_TauD_PromptReco_08.root ../output/fullLumi_TauD_PromptReco_09.root 
hadd files_initial/ggZH_HToTauTau_ZToLL_final.root ../output/ggZH_HToTauTau_ZToLL_00.root 
hadd files_initial/ggZH_HToTauTau_ZToNuNu_final.root ../output/ggZH_HToTauTau_ZToNuNu_00.root 
hadd files_initial/ggZH_HToTauTau_ZToQQ_final.root ../output/ggZH_HToTauTau_ZToQQ_00.root 
hadd files_initial/ttHToNonbb_final.root ../output/ttHToNonbb_00.root 


