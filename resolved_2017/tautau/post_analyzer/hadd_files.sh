
#!/bin/bash
set -e 

if [ "$(ls -A files_initial)" ]; then
echo "Take action files_initial/ is not Empty .... removing existing files ....."
rm files_initial/*.root
else
echo " files_initial/ is Empty"
fi

hadd files_initial/DY1JetsToLL_M-50_TuneCP5_final.root ../output/DY1JetsToLL_M-50_TuneCP5_00.root ../output/DY1JetsToLL_M-50_TuneCP5_01.root ../output/DY1JetsToLL_M-50_TuneCP5_02.root ../output/DY1JetsToLL_M-50_TuneCP5_03.root ../output/DY1JetsToLL_M-50_TuneCP5_04.root 
hadd files_initial/DY2JetsToLL_M-50_TuneCP5_final.root ../output/DY2JetsToLL_M-50_TuneCP5_00.root ../output/DY2JetsToLL_M-50_TuneCP5_01.root 
hadd files_initial/DY3JetsToLL_M-50_TuneCP5_ext1_final.root ../output/DY3JetsToLL_M-50_TuneCP5_ext1_00.root 
hadd files_initial/DY3JetsToLL_M-50_TuneCP5_v1_final.root ../output/DY3JetsToLL_M-50_TuneCP5_v1_00.root 
hadd files_initial/DY4JetsToLL_M-50_TuneCP5_final.root ../output/DY4JetsToLL_M-50_TuneCP5_00.root 
hadd files_initial/DYJetsToLL_M-10to50_TuneCP5_final.root ../output/DYJetsToLL_M-10to50_TuneCP5_00.root ../output/DYJetsToLL_M-10to50_TuneCP5_01.root ../output/DYJetsToLL_M-10to50_TuneCP5_02.root ../output/DYJetsToLL_M-10to50_TuneCP5_03.root ../output/DYJetsToLL_M-10to50_TuneCP5_04.root 
hadd files_initial/DYJetsToLL_M-50_TuneCP5_ext1_v1_final.root ../output/DYJetsToLL_M-50_TuneCP5_ext1_v1_00.root ../output/DYJetsToLL_M-50_TuneCP5_ext1_v1_01.root ../output/DYJetsToLL_M-50_TuneCP5_ext1_v1_02.root ../output/DYJetsToLL_M-50_TuneCP5_ext1_v1_03.root ../output/DYJetsToLL_M-50_TuneCP5_ext1_v1_04.root ../output/DYJetsToLL_M-50_TuneCP5_ext1_v1_05.root 
hadd files_initial/DYJetsToLL_M-50_TuneCP5_v1_final.root ../output/DYJetsToLL_M-50_TuneCP5_v1_00.root ../output/DYJetsToLL_M-50_TuneCP5_v1_01.root ../output/DYJetsToLL_M-50_TuneCP5_v1_02.root ../output/DYJetsToLL_M-50_TuneCP5_v1_03.root ../output/DYJetsToLL_M-50_TuneCP5_v1_04.root ../output/DYJetsToLL_M-50_TuneCP5_v1_05.root 
hadd files_initial/EWKWMinus2Jets_WToLNu_M-50_TuneCP5_final.root ../output/EWKWMinus2Jets_WToLNu_M-50_TuneCP5_00.root 
hadd files_initial/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_final.root ../output/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00.root 
hadd files_initial/EWKZ2Jets_ZToLL_M-50_TuneCP5_final.root ../output/EWKZ2Jets_ZToLL_M-50_TuneCP5_00.root 
hadd files_initial/EWKZ2Jets_ZToNuNu_TuneCP5_final.root ../output/EWKZ2Jets_ZToNuNu_TuneCP5_00.root 
hadd files_initial/GluGluHToTauTau_M125_final.root ../output/GluGluHToTauTau_M125_00.root 
hadd files_initial/GluGluHToWWTo2L2Nu_M125_final.root ../output/GluGluHToWWTo2L2Nu_M125_00.root 
hadd files_initial/ST_t-channel_antitop_4f_inclusiveDecays_TuneCP5_final.root ../output/ST_t-channel_antitop_4f_inclusiveDecays_TuneCP5_00.root 
hadd files_initial/ST_t-channel_top_4f_inclusiveDecays_TuneCP5_final.root ../output/ST_t-channel_top_4f_inclusiveDecays_TuneCP5_00.root 
hadd files_initial/ST_tW_antitop_5f_inclusiveDecays_TuneCP5_final.root ../output/ST_tW_antitop_5f_inclusiveDecays_TuneCP5_00.root 
hadd files_initial/ST_tW_top_5f_inclusiveDecays_TuneCP5_final.root ../output/ST_tW_top_5f_inclusiveDecays_TuneCP5_00.root 
hadd files_initial/TTTo2L2Nu_TuneCP5_final.root ../output/TTTo2L2Nu_TuneCP5_00.root ../output/TTTo2L2Nu_TuneCP5_01.root ../output/TTTo2L2Nu_TuneCP5_02.root ../output/TTTo2L2Nu_TuneCP5_03.root ../output/TTTo2L2Nu_TuneCP5_04.root ../output/TTTo2L2Nu_TuneCP5_05.root 
hadd files_initial/TTToHadronic_TuneCP5_final.root ../output/TTToHadronic_TuneCP5_00.root ../output/TTToHadronic_TuneCP5_01.root ../output/TTToHadronic_TuneCP5_02.root ../output/TTToHadronic_TuneCP5_03.root ../output/TTToHadronic_TuneCP5_04.root ../output/TTToHadronic_TuneCP5_05.root ../output/TTToHadronic_TuneCP5_06.root ../output/TTToHadronic_TuneCP5_07.root ../output/TTToHadronic_TuneCP5_08.root 
hadd files_initial/TTToSemiLeptonic_TuneCP5_final.root ../output/TTToSemiLeptonic_TuneCP5_00.root ../output/TTToSemiLeptonic_TuneCP5_01.root ../output/TTToSemiLeptonic_TuneCP5_02.root ../output/TTToSemiLeptonic_TuneCP5_03.root ../output/TTToSemiLeptonic_TuneCP5_04.root ../output/TTToSemiLeptonic_TuneCP5_05.root ../output/TTToSemiLeptonic_TuneCP5_06.root ../output/TTToSemiLeptonic_TuneCP5_07.root ../output/TTToSemiLeptonic_TuneCP5_08.root 
hadd files_initial/Tau_EraB_final.root ../output/Tau_EraB_00.root ../output/Tau_EraB_01.root 
hadd files_initial/Tau_EraC_final.root ../output/Tau_EraC_00.root ../output/Tau_EraC_01.root ../output/Tau_EraC_02.root ../output/Tau_EraC_03.root 
hadd files_initial/Tau_EraD_final.root ../output/Tau_EraD_00.root ../output/Tau_EraD_01.root ../output/Tau_EraD_02.root 
hadd files_initial/Tau_EraE_final.root ../output/Tau_EraE_00.root ../output/Tau_EraE_01.root ../output/Tau_EraE_02.root ../output/Tau_EraE_03.root 
hadd files_initial/Tau_EraF_final.root ../output/Tau_EraF_00.root ../output/Tau_EraF_01.root ../output/Tau_EraF_02.root ../output/Tau_EraF_03.root ../output/Tau_EraF_04.root 
hadd files_initial/VBFHToTauTau_M125_final.root ../output/VBFHToTauTau_M125_00.root 
hadd files_initial/VBFHToWWTo2L2Nu_M125_final.root ../output/VBFHToWWTo2L2Nu_M125_00.root 
hadd files_initial/VVTo2L2Nu_final.root ../output/VVTo2L2Nu_00.root 
hadd files_initial/W1JetsToLNu_TuneCP5_final.root ../output/W1JetsToLNu_TuneCP5_00.root ../output/W1JetsToLNu_TuneCP5_01.root ../output/W1JetsToLNu_TuneCP5_02.root ../output/W1JetsToLNu_TuneCP5_03.root ../output/W1JetsToLNu_TuneCP5_04.root ../output/W1JetsToLNu_TuneCP5_05.root ../output/W1JetsToLNu_TuneCP5_06.root 
hadd files_initial/W2JetsToLNu_TuneCP5_final.root ../output/W2JetsToLNu_TuneCP5_00.root 
hadd files_initial/W3JetsToLNu_TuneCP5_final.root ../output/W3JetsToLNu_TuneCP5_00.root ../output/W3JetsToLNu_TuneCP5_01.root 
hadd files_initial/W4JetsToLNu_TuneCP5_final.root ../output/W4JetsToLNu_TuneCP5_00.root ../output/W4JetsToLNu_TuneCP5_01.root 
hadd files_initial/WJetsToLNu_TuneCP5_final.root ../output/WJetsToLNu_TuneCP5_00.root ../output/WJetsToLNu_TuneCP5_01.root ../output/WJetsToLNu_TuneCP5_02.root ../output/WJetsToLNu_TuneCP5_03.root ../output/WJetsToLNu_TuneCP5_04.root 
hadd files_initial/WWTo1L1Nu2Q_final.root ../output/WWTo1L1Nu2Q_00.root 
hadd files_initial/WWToLNuQQ_NNPDF31_TuneCP5_final.root ../output/WWToLNuQQ_NNPDF31_TuneCP5_00.root 
hadd files_initial/WWW_4F_TuneCP5_final.root ../output/WWW_4F_TuneCP5_00.root 
hadd files_initial/WWZ_4F_TuneCP5_final.root ../output/WWZ_4F_TuneCP5_00.root 
hadd files_initial/WW_TuneCP5_final.root ../output/WW_TuneCP5_00.root 
hadd files_initial/WZTo3LNu_TuneCP5_final.root ../output/WZTo3LNu_TuneCP5_00.root ../output/WZTo3LNu_TuneCP5_01.root 
hadd files_initial/WZZ_TuneCP5_final.root ../output/WZZ_TuneCP5_00.root 
hadd files_initial/WZ_TuneCP5_final.root ../output/WZ_TuneCP5_00.root 
hadd files_initial/WminusHToTauTau_M125_final.root ../output/WminusHToTauTau_M125_00.root 
hadd files_initial/WplusHToTauTau_M125_final.root ../output/WplusHToTauTau_M125_00.root 
hadd files_initial/ZHToTauTau_M125_final.root ../output/ZHToTauTau_M125_00.root 
hadd files_initial/ZJetsToNuNu_HT-100To200_final.root ../output/ZJetsToNuNu_HT-100To200_00.root ../output/ZJetsToNuNu_HT-100To200_01.root ../output/ZJetsToNuNu_HT-100To200_02.root 
hadd files_initial/ZJetsToNuNu_HT-1200To2500_final.root ../output/ZJetsToNuNu_HT-1200To2500_00.root 
hadd files_initial/ZJetsToNuNu_HT-200To400_final.root ../output/ZJetsToNuNu_HT-200To400_00.root ../output/ZJetsToNuNu_HT-200To400_01.root ../output/ZJetsToNuNu_HT-200To400_02.root 
hadd files_initial/ZJetsToNuNu_HT-2500ToInf_final.root ../output/ZJetsToNuNu_HT-2500ToInf_00.root 
hadd files_initial/ZJetsToNuNu_HT-400To600_final.root ../output/ZJetsToNuNu_HT-400To600_00.root 
hadd files_initial/ZJetsToNuNu_HT-600To800_final.root ../output/ZJetsToNuNu_HT-600To800_00.root 
hadd files_initial/ZJetsToNuNu_HT-800To1200_final.root ../output/ZJetsToNuNu_HT-800To1200_00.root 
hadd files_initial/ZZTo2L2Q_final.root ../output/ZZTo2L2Q_00.root ../output/ZZTo2L2Q_01.root ../output/ZZTo2L2Q_02.root 
hadd files_initial/ZZTo4L_TuneCP5_final.root ../output/ZZTo4L_TuneCP5_00.root ../output/ZZTo4L_TuneCP5_01.root ../output/ZZTo4L_TuneCP5_02.root 
hadd files_initial/ZZZ_TuneCP5_final.root ../output/ZZZ_TuneCP5_00.root 
hadd files_initial/ZZ_TuneCP5_final.root ../output/ZZ_TuneCP5_00.root 
hadd files_initial/fullLumi_Tau_EraB_final.root ../output/fullLumi_Tau_EraB_00.root ../output/fullLumi_Tau_EraB_01.root 
hadd files_initial/fullLumi_Tau_EraC_final.root ../output/fullLumi_Tau_EraC_00.root ../output/fullLumi_Tau_EraC_01.root ../output/fullLumi_Tau_EraC_02.root ../output/fullLumi_Tau_EraC_03.root 
hadd files_initial/fullLumi_Tau_EraD_final.root ../output/fullLumi_Tau_EraD_00.root ../output/fullLumi_Tau_EraD_01.root ../output/fullLumi_Tau_EraD_02.root 
hadd files_initial/fullLumi_Tau_EraE_final.root ../output/fullLumi_Tau_EraE_00.root ../output/fullLumi_Tau_EraE_01.root ../output/fullLumi_Tau_EraE_02.root ../output/fullLumi_Tau_EraE_03.root 
hadd files_initial/fullLumi_Tau_EraF_final.root ../output/fullLumi_Tau_EraF_00.root ../output/fullLumi_Tau_EraF_01.root ../output/fullLumi_Tau_EraF_02.root ../output/fullLumi_Tau_EraF_03.root ../output/fullLumi_Tau_EraF_04.root 


