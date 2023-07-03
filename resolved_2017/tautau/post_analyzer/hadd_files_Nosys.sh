
#!/bin/bash
set -e 

if [ "$(ls -A files_initial_Nosys)" ]; then
echo "Take action files_initial_Nosys/ is not Empty .... removing existing files ....."
rm files_initial_Nosys/*.root
else
echo " files_initial_Nosys/ is Empty"
fi

hadd files_initial_Nosys/DY1JetsToLL_M-50_TuneCP5_final.root ../output_Nosys/DY1JetsToLL_M-50_TuneCP5_00.root ../output_Nosys/DY1JetsToLL_M-50_TuneCP5_01.root ../output_Nosys/DY1JetsToLL_M-50_TuneCP5_02.root ../output_Nosys/DY1JetsToLL_M-50_TuneCP5_03.root ../output_Nosys/DY1JetsToLL_M-50_TuneCP5_04.root 
hadd files_initial_Nosys/DY2JetsToLL_M-50_TuneCP5_final.root ../output_Nosys/DY2JetsToLL_M-50_TuneCP5_00.root ../output_Nosys/DY2JetsToLL_M-50_TuneCP5_01.root 
hadd files_initial_Nosys/DY3JetsToLL_M-50_TuneCP5_ext1_final.root ../output_Nosys/DY3JetsToLL_M-50_TuneCP5_ext1_00.root 
hadd files_initial_Nosys/DY3JetsToLL_M-50_TuneCP5_v1_final.root ../output_Nosys/DY3JetsToLL_M-50_TuneCP5_v1_00.root 
hadd files_initial_Nosys/DY4JetsToLL_M-50_TuneCP5_final.root ../output_Nosys/DY4JetsToLL_M-50_TuneCP5_00.root 
hadd files_initial_Nosys/DYJetsToLL_M-10to50_TuneCP5_final.root ../output_Nosys/DYJetsToLL_M-10to50_TuneCP5_00.root ../output_Nosys/DYJetsToLL_M-10to50_TuneCP5_01.root ../output_Nosys/DYJetsToLL_M-10to50_TuneCP5_02.root ../output_Nosys/DYJetsToLL_M-10to50_TuneCP5_03.root ../output_Nosys/DYJetsToLL_M-10to50_TuneCP5_04.root 
hadd files_initial_Nosys/DYJetsToLL_M-50_TuneCP5_ext1_v1_final.root ../output_Nosys/DYJetsToLL_M-50_TuneCP5_ext1_v1_00.root ../output_Nosys/DYJetsToLL_M-50_TuneCP5_ext1_v1_01.root ../output_Nosys/DYJetsToLL_M-50_TuneCP5_ext1_v1_02.root ../output_Nosys/DYJetsToLL_M-50_TuneCP5_ext1_v1_03.root ../output_Nosys/DYJetsToLL_M-50_TuneCP5_ext1_v1_04.root ../output_Nosys/DYJetsToLL_M-50_TuneCP5_ext1_v1_05.root 
hadd files_initial_Nosys/DYJetsToLL_M-50_TuneCP5_v1_final.root ../output_Nosys/DYJetsToLL_M-50_TuneCP5_v1_00.root ../output_Nosys/DYJetsToLL_M-50_TuneCP5_v1_01.root ../output_Nosys/DYJetsToLL_M-50_TuneCP5_v1_02.root ../output_Nosys/DYJetsToLL_M-50_TuneCP5_v1_03.root ../output_Nosys/DYJetsToLL_M-50_TuneCP5_v1_04.root ../output_Nosys/DYJetsToLL_M-50_TuneCP5_v1_05.root 
hadd files_initial_Nosys/EWKWMinus2Jets_WToLNu_M-50_TuneCP5_final.root ../output_Nosys/EWKWMinus2Jets_WToLNu_M-50_TuneCP5_00.root 
hadd files_initial_Nosys/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_final.root ../output_Nosys/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_00.root 
hadd files_initial_Nosys/EWKZ2Jets_ZToLL_M-50_TuneCP5_final.root ../output_Nosys/EWKZ2Jets_ZToLL_M-50_TuneCP5_00.root 
hadd files_initial_Nosys/EWKZ2Jets_ZToNuNu_TuneCP5_final.root ../output_Nosys/EWKZ2Jets_ZToNuNu_TuneCP5_00.root 
hadd files_initial_Nosys/GluGluHToTauTau_M125_final.root ../output_Nosys/GluGluHToTauTau_M125_00.root 
hadd files_initial_Nosys/GluGluHToWWTo2L2Nu_M125_final.root ../output_Nosys/GluGluHToWWTo2L2Nu_M125_00.root 
hadd files_initial_Nosys/ST_t-channel_antitop_4f_inclusiveDecays_TuneCP5_final.root ../output_Nosys/ST_t-channel_antitop_4f_inclusiveDecays_TuneCP5_00.root 
hadd files_initial_Nosys/ST_t-channel_top_4f_inclusiveDecays_TuneCP5_final.root ../output_Nosys/ST_t-channel_top_4f_inclusiveDecays_TuneCP5_00.root 
hadd files_initial_Nosys/ST_tW_antitop_5f_inclusiveDecays_TuneCP5_final.root ../output_Nosys/ST_tW_antitop_5f_inclusiveDecays_TuneCP5_00.root 
hadd files_initial_Nosys/ST_tW_top_5f_inclusiveDecays_TuneCP5_final.root ../output_Nosys/ST_tW_top_5f_inclusiveDecays_TuneCP5_00.root 
hadd files_initial_Nosys/TTTo2L2Nu_TuneCP5_final.root ../output_Nosys/TTTo2L2Nu_TuneCP5_00.root ../output_Nosys/TTTo2L2Nu_TuneCP5_01.root ../output_Nosys/TTTo2L2Nu_TuneCP5_02.root ../output_Nosys/TTTo2L2Nu_TuneCP5_03.root ../output_Nosys/TTTo2L2Nu_TuneCP5_04.root ../output_Nosys/TTTo2L2Nu_TuneCP5_05.root 
hadd files_initial_Nosys/TTToHadronic_TuneCP5_final.root ../output_Nosys/TTToHadronic_TuneCP5_00.root ../output_Nosys/TTToHadronic_TuneCP5_01.root ../output_Nosys/TTToHadronic_TuneCP5_02.root ../output_Nosys/TTToHadronic_TuneCP5_03.root ../output_Nosys/TTToHadronic_TuneCP5_04.root ../output_Nosys/TTToHadronic_TuneCP5_05.root ../output_Nosys/TTToHadronic_TuneCP5_06.root ../output_Nosys/TTToHadronic_TuneCP5_07.root ../output_Nosys/TTToHadronic_TuneCP5_08.root 
hadd files_initial_Nosys/TTToSemiLeptonic_TuneCP5_final.root ../output_Nosys/TTToSemiLeptonic_TuneCP5_00.root ../output_Nosys/TTToSemiLeptonic_TuneCP5_01.root ../output_Nosys/TTToSemiLeptonic_TuneCP5_02.root ../output_Nosys/TTToSemiLeptonic_TuneCP5_03.root ../output_Nosys/TTToSemiLeptonic_TuneCP5_04.root ../output_Nosys/TTToSemiLeptonic_TuneCP5_05.root ../output_Nosys/TTToSemiLeptonic_TuneCP5_06.root ../output_Nosys/TTToSemiLeptonic_TuneCP5_07.root ../output_Nosys/TTToSemiLeptonic_TuneCP5_08.root 
hadd files_initial_Nosys/Tau_EraB_final.root ../output_Nosys/Tau_EraB_00.root ../output_Nosys/Tau_EraB_01.root 
hadd files_initial_Nosys/Tau_EraC_final.root ../output_Nosys/Tau_EraC_00.root ../output_Nosys/Tau_EraC_01.root ../output_Nosys/Tau_EraC_02.root ../output_Nosys/Tau_EraC_03.root 
hadd files_initial_Nosys/Tau_EraD_final.root ../output_Nosys/Tau_EraD_00.root ../output_Nosys/Tau_EraD_01.root ../output_Nosys/Tau_EraD_02.root 
hadd files_initial_Nosys/Tau_EraE_final.root ../output_Nosys/Tau_EraE_00.root ../output_Nosys/Tau_EraE_01.root ../output_Nosys/Tau_EraE_02.root ../output_Nosys/Tau_EraE_03.root 
hadd files_initial_Nosys/Tau_EraF_final.root ../output_Nosys/Tau_EraF_00.root ../output_Nosys/Tau_EraF_01.root ../output_Nosys/Tau_EraF_02.root ../output_Nosys/Tau_EraF_03.root ../output_Nosys/Tau_EraF_04.root 
hadd files_initial_Nosys/VBFHToTauTau_M125_final.root ../output_Nosys/VBFHToTauTau_M125_00.root 
hadd files_initial_Nosys/VBFHToWWTo2L2Nu_M125_final.root ../output_Nosys/VBFHToWWTo2L2Nu_M125_00.root 
hadd files_initial_Nosys/VVTo2L2Nu_final.root ../output_Nosys/VVTo2L2Nu_00.root 
hadd files_initial_Nosys/W1JetsToLNu_TuneCP5_final.root ../output_Nosys/W1JetsToLNu_TuneCP5_00.root ../output_Nosys/W1JetsToLNu_TuneCP5_01.root ../output_Nosys/W1JetsToLNu_TuneCP5_02.root ../output_Nosys/W1JetsToLNu_TuneCP5_03.root ../output_Nosys/W1JetsToLNu_TuneCP5_04.root ../output_Nosys/W1JetsToLNu_TuneCP5_05.root ../output_Nosys/W1JetsToLNu_TuneCP5_06.root 
hadd files_initial_Nosys/W2JetsToLNu_TuneCP5_final.root ../output_Nosys/W2JetsToLNu_TuneCP5_00.root 
hadd files_initial_Nosys/W3JetsToLNu_TuneCP5_final.root ../output_Nosys/W3JetsToLNu_TuneCP5_00.root ../output_Nosys/W3JetsToLNu_TuneCP5_01.root 
hadd files_initial_Nosys/W4JetsToLNu_TuneCP5_final.root ../output_Nosys/W4JetsToLNu_TuneCP5_00.root ../output_Nosys/W4JetsToLNu_TuneCP5_01.root 
hadd files_initial_Nosys/WJetsToLNu_TuneCP5_final.root ../output_Nosys/WJetsToLNu_TuneCP5_00.root ../output_Nosys/WJetsToLNu_TuneCP5_01.root ../output_Nosys/WJetsToLNu_TuneCP5_02.root ../output_Nosys/WJetsToLNu_TuneCP5_03.root ../output_Nosys/WJetsToLNu_TuneCP5_04.root 
hadd files_initial_Nosys/WWTo1L1Nu2Q_final.root ../output_Nosys/WWTo1L1Nu2Q_00.root 
hadd files_initial_Nosys/WWToLNuQQ_NNPDF31_TuneCP5_final.root ../output_Nosys/WWToLNuQQ_NNPDF31_TuneCP5_00.root 
hadd files_initial_Nosys/WWW_4F_TuneCP5_final.root ../output_Nosys/WWW_4F_TuneCP5_00.root 
hadd files_initial_Nosys/WWZ_4F_TuneCP5_final.root ../output_Nosys/WWZ_4F_TuneCP5_00.root 
hadd files_initial_Nosys/WW_TuneCP5_final.root ../output_Nosys/WW_TuneCP5_00.root 
hadd files_initial_Nosys/WZTo3LNu_TuneCP5_final.root ../output_Nosys/WZTo3LNu_TuneCP5_00.root ../output_Nosys/WZTo3LNu_TuneCP5_01.root 
hadd files_initial_Nosys/WZZ_TuneCP5_final.root ../output_Nosys/WZZ_TuneCP5_00.root 
hadd files_initial_Nosys/WZ_TuneCP5_final.root ../output_Nosys/WZ_TuneCP5_00.root 
hadd files_initial_Nosys/WminusHToTauTau_M125_final.root ../output_Nosys/WminusHToTauTau_M125_00.root 
hadd files_initial_Nosys/WplusHToTauTau_M125_final.root ../output_Nosys/WplusHToTauTau_M125_00.root 
hadd files_initial_Nosys/ZHToTauTau_M125_final.root ../output_Nosys/ZHToTauTau_M125_00.root 
hadd files_initial_Nosys/ZJetsToNuNu_HT-100To200_final.root ../output_Nosys/ZJetsToNuNu_HT-100To200_00.root ../output_Nosys/ZJetsToNuNu_HT-100To200_01.root ../output_Nosys/ZJetsToNuNu_HT-100To200_02.root 
hadd files_initial_Nosys/ZJetsToNuNu_HT-1200To2500_final.root ../output_Nosys/ZJetsToNuNu_HT-1200To2500_00.root 
hadd files_initial_Nosys/ZJetsToNuNu_HT-200To400_final.root ../output_Nosys/ZJetsToNuNu_HT-200To400_00.root ../output_Nosys/ZJetsToNuNu_HT-200To400_01.root ../output_Nosys/ZJetsToNuNu_HT-200To400_02.root 
hadd files_initial_Nosys/ZJetsToNuNu_HT-2500ToInf_final.root ../output_Nosys/ZJetsToNuNu_HT-2500ToInf_00.root 
hadd files_initial_Nosys/ZJetsToNuNu_HT-400To600_final.root ../output_Nosys/ZJetsToNuNu_HT-400To600_00.root 
hadd files_initial_Nosys/ZJetsToNuNu_HT-600To800_final.root ../output_Nosys/ZJetsToNuNu_HT-600To800_00.root 
hadd files_initial_Nosys/ZJetsToNuNu_HT-800To1200_final.root ../output_Nosys/ZJetsToNuNu_HT-800To1200_00.root 
hadd files_initial_Nosys/ZZTo2L2Q_final.root ../output_Nosys/ZZTo2L2Q_00.root ../output_Nosys/ZZTo2L2Q_01.root ../output_Nosys/ZZTo2L2Q_02.root 
hadd files_initial_Nosys/ZZTo4L_TuneCP5_final.root ../output_Nosys/ZZTo4L_TuneCP5_00.root ../output_Nosys/ZZTo4L_TuneCP5_01.root ../output_Nosys/ZZTo4L_TuneCP5_02.root 
hadd files_initial_Nosys/ZZZ_TuneCP5_final.root ../output_Nosys/ZZZ_TuneCP5_00.root 
hadd files_initial_Nosys/ZZ_TuneCP5_final.root ../output_Nosys/ZZ_TuneCP5_00.root 
hadd files_initial_Nosys/fullLumi_Tau_EraB_final.root ../output_Nosys/fullLumi_Tau_EraB_00.root ../output_Nosys/fullLumi_Tau_EraB_01.root 
hadd files_initial_Nosys/fullLumi_Tau_EraC_final.root ../output_Nosys/fullLumi_Tau_EraC_00.root ../output_Nosys/fullLumi_Tau_EraC_01.root ../output_Nosys/fullLumi_Tau_EraC_02.root ../output_Nosys/fullLumi_Tau_EraC_03.root 
hadd files_initial_Nosys/fullLumi_Tau_EraD_final.root ../output_Nosys/fullLumi_Tau_EraD_00.root ../output_Nosys/fullLumi_Tau_EraD_01.root ../output_Nosys/fullLumi_Tau_EraD_02.root 
hadd files_initial_Nosys/fullLumi_Tau_EraE_final.root ../output_Nosys/fullLumi_Tau_EraE_00.root ../output_Nosys/fullLumi_Tau_EraE_01.root ../output_Nosys/fullLumi_Tau_EraE_02.root ../output_Nosys/fullLumi_Tau_EraE_03.root 
hadd files_initial_Nosys/fullLumi_Tau_EraF_final.root ../output_Nosys/fullLumi_Tau_EraF_00.root ../output_Nosys/fullLumi_Tau_EraF_01.root ../output_Nosys/fullLumi_Tau_EraF_02.root ../output_Nosys/fullLumi_Tau_EraF_03.root ../output_Nosys/fullLumi_Tau_EraF_04.root 


