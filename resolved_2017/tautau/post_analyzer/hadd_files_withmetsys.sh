
#!/bin/bash
set -e 

if [ "$(ls -A files_initial_withmetsys)" ]; then
echo "Take action files_initial_withmetsys/ is not Empty .... removing existing files ....."
rm files_initial_withmetsys/*.root
else
echo " files_initial_withmetsys/ is Empty"
fi

hadd files_initial_withmetsys/DY1JetsToLL_M-50_TuneCP5_final.root ../output_withmetsys/DY1JetsToLL_M-50_TuneCP5_00.root ../output_withmetsys/DY1JetsToLL_M-50_TuneCP5_01.root ../output_withmetsys/DY1JetsToLL_M-50_TuneCP5_02.root ../output_withmetsys/DY1JetsToLL_M-50_TuneCP5_03.root ../output_withmetsys/DY1JetsToLL_M-50_TuneCP5_04.root 
hadd files_initial_withmetsys/DY2JetsToLL_M-50_TuneCP5_final.root ../output_withmetsys/DY2JetsToLL_M-50_TuneCP5_00.root ../output_withmetsys/DY2JetsToLL_M-50_TuneCP5_01.root 
hadd files_initial_withmetsys/DY3JetsToLL_M-50_TuneCP5_ext1_final.root ../output_withmetsys/DY3JetsToLL_M-50_TuneCP5_ext1_00.root 
hadd files_initial_withmetsys/DY3JetsToLL_M-50_TuneCP5_v1_final.root ../output_withmetsys/DY3JetsToLL_M-50_TuneCP5_v1_00.root 
hadd files_initial_withmetsys/DY4JetsToLL_M-50_TuneCP5_final.root ../output_withmetsys/DY4JetsToLL_M-50_TuneCP5_00.root 
hadd files_initial_withmetsys/DYJetsToLL_M-10to50_TuneCP5_final.root ../output_withmetsys/DYJetsToLL_M-10to50_TuneCP5_00.root ../output_withmetsys/DYJetsToLL_M-10to50_TuneCP5_01.root ../output_withmetsys/DYJetsToLL_M-10to50_TuneCP5_02.root ../output_withmetsys/DYJetsToLL_M-10to50_TuneCP5_03.root ../output_withmetsys/DYJetsToLL_M-10to50_TuneCP5_04.root 
hadd files_initial_withmetsys/DYJetsToLL_M-50_TuneCP5_ext1_v1_final.root ../output_withmetsys/DYJetsToLL_M-50_TuneCP5_ext1_v1_00.root ../output_withmetsys/DYJetsToLL_M-50_TuneCP5_ext1_v1_01.root ../output_withmetsys/DYJetsToLL_M-50_TuneCP5_ext1_v1_02.root ../output_withmetsys/DYJetsToLL_M-50_TuneCP5_ext1_v1_03.root ../output_withmetsys/DYJetsToLL_M-50_TuneCP5_ext1_v1_04.root ../output_withmetsys/DYJetsToLL_M-50_TuneCP5_ext1_v1_05.root 
hadd files_initial_withmetsys/DYJetsToLL_M-50_TuneCP5_v1_final.root ../output_withmetsys/DYJetsToLL_M-50_TuneCP5_v1_00.root ../output_withmetsys/DYJetsToLL_M-50_TuneCP5_v1_01.root ../output_withmetsys/DYJetsToLL_M-50_TuneCP5_v1_02.root ../output_withmetsys/DYJetsToLL_M-50_TuneCP5_v1_03.root ../output_withmetsys/DYJetsToLL_M-50_TuneCP5_v1_04.root ../output_withmetsys/DYJetsToLL_M-50_TuneCP5_v1_05.root 
hadd files_initial_withmetsys/EWKWMinus2Jets_WToLNu_M-50_TuneCP5_final.root ../output_withmetsys/EWKWMinus2Jets_WToLNu_M-50_TuneCP5_00.root 
hadd files_initial_withmetsys/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_final.root ../output_withmetsys/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00.root 
hadd files_initial_withmetsys/EWKZ2Jets_ZToLL_M-50_TuneCP5_final.root ../output_withmetsys/EWKZ2Jets_ZToLL_M-50_TuneCP5_00.root 
hadd files_initial_withmetsys/EWKZ2Jets_ZToNuNu_TuneCP5_final.root ../output_withmetsys/EWKZ2Jets_ZToNuNu_TuneCP5_00.root 
hadd files_initial_withmetsys/GluGluHToTauTau_M125_final.root ../output_withmetsys/GluGluHToTauTau_M125_00.root 
hadd files_initial_withmetsys/GluGluHToWWTo2L2Nu_M125_final.root ../output_withmetsys/GluGluHToWWTo2L2Nu_M125_00.root 
hadd files_initial_withmetsys/ST_t-channel_antitop_4f_inclusiveDecays_TuneCP5_final.root ../output_withmetsys/ST_t-channel_antitop_4f_inclusiveDecays_TuneCP5_00.root 
hadd files_initial_withmetsys/ST_t-channel_top_4f_inclusiveDecays_TuneCP5_final.root ../output_withmetsys/ST_t-channel_top_4f_inclusiveDecays_TuneCP5_00.root 
hadd files_initial_withmetsys/ST_tW_antitop_5f_inclusiveDecays_TuneCP5_final.root ../output_withmetsys/ST_tW_antitop_5f_inclusiveDecays_TuneCP5_00.root 
hadd files_initial_withmetsys/ST_tW_top_5f_inclusiveDecays_TuneCP5_final.root ../output_withmetsys/ST_tW_top_5f_inclusiveDecays_TuneCP5_00.root 
hadd files_initial_withmetsys/TTTo2L2Nu_TuneCP5_final.root ../output_withmetsys/TTTo2L2Nu_TuneCP5_00.root ../output_withmetsys/TTTo2L2Nu_TuneCP5_01.root ../output_withmetsys/TTTo2L2Nu_TuneCP5_02.root ../output_withmetsys/TTTo2L2Nu_TuneCP5_03.root ../output_withmetsys/TTTo2L2Nu_TuneCP5_04.root ../output_withmetsys/TTTo2L2Nu_TuneCP5_05.root 
hadd files_initial_withmetsys/TTToHadronic_TuneCP5_final.root ../output_withmetsys/TTToHadronic_TuneCP5_00.root ../output_withmetsys/TTToHadronic_TuneCP5_01.root ../output_withmetsys/TTToHadronic_TuneCP5_02.root ../output_withmetsys/TTToHadronic_TuneCP5_03.root ../output_withmetsys/TTToHadronic_TuneCP5_04.root ../output_withmetsys/TTToHadronic_TuneCP5_05.root ../output_withmetsys/TTToHadronic_TuneCP5_06.root ../output_withmetsys/TTToHadronic_TuneCP5_07.root ../output_withmetsys/TTToHadronic_TuneCP5_08.root 
hadd files_initial_withmetsys/TTToSemiLeptonic_TuneCP5_final.root ../output_withmetsys/TTToSemiLeptonic_TuneCP5_00.root ../output_withmetsys/TTToSemiLeptonic_TuneCP5_01.root ../output_withmetsys/TTToSemiLeptonic_TuneCP5_02.root ../output_withmetsys/TTToSemiLeptonic_TuneCP5_03.root ../output_withmetsys/TTToSemiLeptonic_TuneCP5_04.root ../output_withmetsys/TTToSemiLeptonic_TuneCP5_05.root ../output_withmetsys/TTToSemiLeptonic_TuneCP5_06.root ../output_withmetsys/TTToSemiLeptonic_TuneCP5_07.root ../output_withmetsys/TTToSemiLeptonic_TuneCP5_08.root 
hadd files_initial_withmetsys/Tau_EraB_final.root ../output_withmetsys/Tau_EraB_00.root ../output_withmetsys/Tau_EraB_01.root 
hadd files_initial_withmetsys/Tau_EraC_final.root ../output_withmetsys/Tau_EraC_00.root ../output_withmetsys/Tau_EraC_01.root ../output_withmetsys/Tau_EraC_02.root ../output_withmetsys/Tau_EraC_03.root 
hadd files_initial_withmetsys/Tau_EraD_final.root ../output_withmetsys/Tau_EraD_00.root ../output_withmetsys/Tau_EraD_01.root ../output_withmetsys/Tau_EraD_02.root 
hadd files_initial_withmetsys/Tau_EraE_final.root ../output_withmetsys/Tau_EraE_00.root ../output_withmetsys/Tau_EraE_01.root ../output_withmetsys/Tau_EraE_02.root ../output_withmetsys/Tau_EraE_03.root 
hadd files_initial_withmetsys/Tau_EraF_final.root ../output_withmetsys/Tau_EraF_00.root ../output_withmetsys/Tau_EraF_01.root ../output_withmetsys/Tau_EraF_02.root ../output_withmetsys/Tau_EraF_03.root ../output_withmetsys/Tau_EraF_04.root 
hadd files_initial_withmetsys/VBFHToTauTau_M125_final.root ../output_withmetsys/VBFHToTauTau_M125_00.root 
hadd files_initial_withmetsys/VBFHToWWTo2L2Nu_M125_final.root ../output_withmetsys/VBFHToWWTo2L2Nu_M125_00.root 
hadd files_initial_withmetsys/VVTo2L2Nu_final.root ../output_withmetsys/VVTo2L2Nu_00.root 
hadd files_initial_withmetsys/W1JetsToLNu_TuneCP5_final.root ../output_withmetsys/W1JetsToLNu_TuneCP5_00.root ../output_withmetsys/W1JetsToLNu_TuneCP5_01.root ../output_withmetsys/W1JetsToLNu_TuneCP5_02.root ../output_withmetsys/W1JetsToLNu_TuneCP5_03.root ../output_withmetsys/W1JetsToLNu_TuneCP5_04.root ../output_withmetsys/W1JetsToLNu_TuneCP5_05.root ../output_withmetsys/W1JetsToLNu_TuneCP5_06.root 
hadd files_initial_withmetsys/W2JetsToLNu_TuneCP5_final.root ../output_withmetsys/W2JetsToLNu_TuneCP5_00.root 
hadd files_initial_withmetsys/W3JetsToLNu_TuneCP5_final.root ../output_withmetsys/W3JetsToLNu_TuneCP5_00.root ../output_withmetsys/W3JetsToLNu_TuneCP5_01.root 
hadd files_initial_withmetsys/W4JetsToLNu_TuneCP5_final.root ../output_withmetsys/W4JetsToLNu_TuneCP5_00.root ../output_withmetsys/W4JetsToLNu_TuneCP5_01.root 
hadd files_initial_withmetsys/WJetsToLNu_TuneCP5_final.root ../output_withmetsys/WJetsToLNu_TuneCP5_00.root ../output_withmetsys/WJetsToLNu_TuneCP5_01.root ../output_withmetsys/WJetsToLNu_TuneCP5_02.root ../output_withmetsys/WJetsToLNu_TuneCP5_03.root ../output_withmetsys/WJetsToLNu_TuneCP5_04.root 
hadd files_initial_withmetsys/WWTo1L1Nu2Q_final.root ../output_withmetsys/WWTo1L1Nu2Q_00.root 
hadd files_initial_withmetsys/WWToLNuQQ_NNPDF31_TuneCP5_final.root ../output_withmetsys/WWToLNuQQ_NNPDF31_TuneCP5_00.root 
hadd files_initial_withmetsys/WWW_4F_TuneCP5_final.root ../output_withmetsys/WWW_4F_TuneCP5_00.root 
hadd files_initial_withmetsys/WWZ_4F_TuneCP5_final.root ../output_withmetsys/WWZ_4F_TuneCP5_00.root 
hadd files_initial_withmetsys/WW_TuneCP5_final.root ../output_withmetsys/WW_TuneCP5_00.root 
hadd files_initial_withmetsys/WZTo3LNu_TuneCP5_final.root ../output_withmetsys/WZTo3LNu_TuneCP5_00.root ../output_withmetsys/WZTo3LNu_TuneCP5_01.root 
hadd files_initial_withmetsys/WZZ_TuneCP5_final.root ../output_withmetsys/WZZ_TuneCP5_00.root 
hadd files_initial_withmetsys/WZ_TuneCP5_final.root ../output_withmetsys/WZ_TuneCP5_00.root 
hadd files_initial_withmetsys/WminusHToTauTau_M125_final.root ../output_withmetsys/WminusHToTauTau_M125_00.root 
hadd files_initial_withmetsys/WplusHToTauTau_M125_final.root ../output_withmetsys/WplusHToTauTau_M125_00.root 
hadd files_initial_withmetsys/ZHToTauTau_M125_final.root ../output_withmetsys/ZHToTauTau_M125_00.root 
hadd files_initial_withmetsys/ZJetsToNuNu_HT-100To200_final.root ../output_withmetsys/ZJetsToNuNu_HT-100To200_00.root ../output_withmetsys/ZJetsToNuNu_HT-100To200_01.root ../output_withmetsys/ZJetsToNuNu_HT-100To200_02.root 
hadd files_initial_withmetsys/ZJetsToNuNu_HT-1200To2500_final.root ../output_withmetsys/ZJetsToNuNu_HT-1200To2500_00.root 
hadd files_initial_withmetsys/ZJetsToNuNu_HT-200To400_final.root ../output_withmetsys/ZJetsToNuNu_HT-200To400_00.root ../output_withmetsys/ZJetsToNuNu_HT-200To400_01.root ../output_withmetsys/ZJetsToNuNu_HT-200To400_02.root 
hadd files_initial_withmetsys/ZJetsToNuNu_HT-2500ToInf_final.root ../output_withmetsys/ZJetsToNuNu_HT-2500ToInf_00.root 
hadd files_initial_withmetsys/ZJetsToNuNu_HT-400To600_final.root ../output_withmetsys/ZJetsToNuNu_HT-400To600_00.root 
hadd files_initial_withmetsys/ZJetsToNuNu_HT-600To800_final.root ../output_withmetsys/ZJetsToNuNu_HT-600To800_00.root 
hadd files_initial_withmetsys/ZJetsToNuNu_HT-800To1200_final.root ../output_withmetsys/ZJetsToNuNu_HT-800To1200_00.root 
hadd files_initial_withmetsys/ZZTo2L2Q_final.root ../output_withmetsys/ZZTo2L2Q_00.root ../output_withmetsys/ZZTo2L2Q_01.root ../output_withmetsys/ZZTo2L2Q_02.root 
hadd files_initial_withmetsys/ZZTo4L_TuneCP5_final.root ../output_withmetsys/ZZTo4L_TuneCP5_00.root ../output_withmetsys/ZZTo4L_TuneCP5_01.root ../output_withmetsys/ZZTo4L_TuneCP5_02.root 
hadd files_initial_withmetsys/ZZZ_TuneCP5_final.root ../output_withmetsys/ZZZ_TuneCP5_00.root 
hadd files_initial_withmetsys/ZZ_TuneCP5_final.root ../output_withmetsys/ZZ_TuneCP5_00.root 
hadd files_initial_withmetsys/fullLumi_Tau_EraB_final.root ../output_withmetsys/fullLumi_Tau_EraB_00.root ../output_withmetsys/fullLumi_Tau_EraB_01.root 
hadd files_initial_withmetsys/fullLumi_Tau_EraC_final.root ../output_withmetsys/fullLumi_Tau_EraC_00.root ../output_withmetsys/fullLumi_Tau_EraC_01.root ../output_withmetsys/fullLumi_Tau_EraC_02.root ../output_withmetsys/fullLumi_Tau_EraC_03.root 
hadd files_initial_withmetsys/fullLumi_Tau_EraD_final.root ../output_withmetsys/fullLumi_Tau_EraD_00.root ../output_withmetsys/fullLumi_Tau_EraD_01.root ../output_withmetsys/fullLumi_Tau_EraD_02.root 
hadd files_initial_withmetsys/fullLumi_Tau_EraE_final.root ../output_withmetsys/fullLumi_Tau_EraE_00.root ../output_withmetsys/fullLumi_Tau_EraE_01.root ../output_withmetsys/fullLumi_Tau_EraE_02.root ../output_withmetsys/fullLumi_Tau_EraE_03.root 
hadd files_initial_withmetsys/fullLumi_Tau_EraF_final.root ../output_withmetsys/fullLumi_Tau_EraF_00.root ../output_withmetsys/fullLumi_Tau_EraF_01.root ../output_withmetsys/fullLumi_Tau_EraF_02.root ../output_withmetsys/fullLumi_Tau_EraF_03.root ../output_withmetsys/fullLumi_Tau_EraF_04.root 


