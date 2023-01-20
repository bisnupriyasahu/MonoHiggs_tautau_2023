
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
hadd files_initial/MH3_200_MH4_final.root ../output/MH3_200_MH4_100.root ../output/MH3_200_MH4_150.root 
hadd files_initial/MH3_300_MH4_final.root ../output/MH3_300_MH4_100.root ../output/MH3_300_MH4_150.root 
hadd files_initial/MH3_400_MH4_final.root ../output/MH3_400_MH4_100.root ../output/MH3_400_MH4_150.root ../output/MH3_400_MH4_200.root ../output/MH3_400_MH4_250.root 
hadd files_initial/MH3_500_MH4_final.root ../output/MH3_500_MH4_150.root ../output/MH3_500_MH4_200.root ../output/MH3_500_MH4_250.root ../output/MH3_500_MH4_300.root 
hadd files_initial/MH3_600_MH4_final.root ../output/MH3_600_MH4_100.root ../output/MH3_600_MH4_150.root ../output/MH3_600_MH4_200.root ../output/MH3_600_MH4_250.root ../output/MH3_600_MH4_300.root ../output/MH3_600_MH4_350.root ../output/MH3_600_MH4_400.root ../output/MH3_600_MH4_500.root 
hadd files_initial/MH3_700_MH4_final.root ../output/MH3_700_MH4_250.root ../output/MH3_700_MH4_300.root ../output/MH3_700_MH4_350.root ../output/MH3_700_MH4_400.root 
hadd files_initial/MH3_800_MH4_final.root ../output/MH3_800_MH4_250.root ../output/MH3_800_MH4_300.root ../output/MH3_800_MH4_350.root ../output/MH3_800_MH4_500.root 
hadd files_initial/MH3_900_MH4_final.root ../output/MH3_900_MH4_300.root ../output/MH3_900_MH4_350.root ../output/MH3_900_MH4_400.root ../output/MH3_900_MH4_500.root 
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
hadd files_initial/Signal_ZpBaryonic2017_1_final.root ../output/Zpbaryonic2017_1.root 
hadd files_initial/Signal_ZpBaryonic2017_10_final.root ../output/Zpbaryonic2017_10.root 
hadd files_initial/Signal_ZpBaryonic2017_11_final.root ../output/Zpbaryonic2017_11.root 
hadd files_initial/Signal_ZpBaryonic2017_12_final.root ../output/Zpbaryonic2017_12.root 
hadd files_initial/Signal_ZpBaryonic2017_13_final.root ../output/Zpbaryonic2017_13.root 
hadd files_initial/Signal_ZpBaryonic2017_14_final.root ../output/Zpbaryonic2017_14.root 
hadd files_initial/Signal_ZpBaryonic2017_15_final.root ../output/Zpbaryonic2017_15.root 
hadd files_initial/Signal_ZpBaryonic2017_16_final.root ../output/Zpbaryonic2017_16.root 
hadd files_initial/Signal_ZpBaryonic2017_17_final.root ../output/Zpbaryonic2017_17.root 
hadd files_initial/Signal_ZpBaryonic2017_18_final.root ../output/Zpbaryonic2017_18.root 
hadd files_initial/Signal_ZpBaryonic2017_19_final.root ../output/Zpbaryonic2017_19.root 
hadd files_initial/Signal_ZpBaryonic2017_2_final.root ../output/Zpbaryonic2017_2.root 
hadd files_initial/Signal_ZpBaryonic2017_20_final.root ../output/Zpbaryonic2017_20.root 
hadd files_initial/Signal_ZpBaryonic2017_21_final.root ../output/Zpbaryonic2017_21.root 
hadd files_initial/Signal_ZpBaryonic2017_22_final.root ../output/Zpbaryonic2017_22.root 
hadd files_initial/Signal_ZpBaryonic2017_23_final.root ../output/Zpbaryonic2017_23.root 
hadd files_initial/Signal_ZpBaryonic2017_24_final.root ../output/Zpbaryonic2017_24.root 
hadd files_initial/Signal_ZpBaryonic2017_25_final.root ../output/Zpbaryonic2017_25.root 
hadd files_initial/Signal_ZpBaryonic2017_26_final.root ../output/Zpbaryonic2017_26.root 
hadd files_initial/Signal_ZpBaryonic2017_27_final.root ../output/Zpbaryonic2017_27.root 
hadd files_initial/Signal_ZpBaryonic2017_28_final.root ../output/Zpbaryonic2017_28.root 
hadd files_initial/Signal_ZpBaryonic2017_29_final.root ../output/Zpbaryonic2017_29.root 
hadd files_initial/Signal_ZpBaryonic2017_3_final.root ../output/Zpbaryonic2017_3.root 
hadd files_initial/Signal_ZpBaryonic2017_30_final.root ../output/Zpbaryonic2017_30.root 
hadd files_initial/Signal_ZpBaryonic2017_31_final.root ../output/Zpbaryonic2017_31.root 
hadd files_initial/Signal_ZpBaryonic2017_32_final.root ../output/Zpbaryonic2017_32.root 
hadd files_initial/Signal_ZpBaryonic2017_33_final.root ../output/Zpbaryonic2017_33.root 
hadd files_initial/Signal_ZpBaryonic2017_34_final.root ../output/Zpbaryonic2017_34.root 
hadd files_initial/Signal_ZpBaryonic2017_35_final.root ../output/Zpbaryonic2017_35.root 
hadd files_initial/Signal_ZpBaryonic2017_36_final.root ../output/Zpbaryonic2017_36.root 
hadd files_initial/Signal_ZpBaryonic2017_37_final.root ../output/Zpbaryonic2017_37.root 
hadd files_initial/Signal_ZpBaryonic2017_38_final.root ../output/Zpbaryonic2017_38.root 
hadd files_initial/Signal_ZpBaryonic2017_39_final.root ../output/Zpbaryonic2017_39.root 
hadd files_initial/Signal_ZpBaryonic2017_4_final.root ../output/Zpbaryonic2017_4.root 
hadd files_initial/Signal_ZpBaryonic2017_40_final.root ../output/Zpbaryonic2017_40.root 
hadd files_initial/Signal_ZpBaryonic2017_41_final.root ../output/Zpbaryonic2017_41.root 
hadd files_initial/Signal_ZpBaryonic2017_42_final.root ../output/Zpbaryonic2017_42.root 
hadd files_initial/Signal_ZpBaryonic2017_43_final.root ../output/Zpbaryonic2017_43.root 
hadd files_initial/Signal_ZpBaryonic2017_5_final.root ../output/Zpbaryonic2017_5.root 
hadd files_initial/Signal_ZpBaryonic2017_6_final.root ../output/Zpbaryonic2017_6.root 
hadd files_initial/Signal_ZpBaryonic2017_7_final.root ../output/Zpbaryonic2017_7.root 
hadd files_initial/Signal_ZpBaryonic2017_8_final.root ../output/Zpbaryonic2017_8.root 
hadd files_initial/Signal_ZpBaryonic2017_9_final.root ../output/Zpbaryonic2017_9.root 
hadd files_initial/Signal_2HDMa_bb_sinp_0p1_tanb_1p0_mXd_10_MH3_600_MH4_200_final.root ../output/2HDMa_bb_sinp_0p1_tanb_1p0_mXd_10_MH3_600_MH4_200.root 
hadd files_initial/Signal_2HDMa_bb_sinp_0p2_tanb_1p0_mXd_10_MH3_600_MH4_200_final.root ../output/2HDMa_bb_sinp_0p2_tanb_1p0_mXd_10_MH3_600_MH4_200.root 
hadd files_initial/Signal_2HDMa_bb_sinp_0p35_tanb_0p5_mXd_10_MH3_600_MH4_150_final.root ../output/2HDMa_bb_sinp_0p35_tanb_0p5_mXd_10_MH3_600_MH4_150.root 
hadd files_initial/Signal_2HDMa_bb_sinp_0p35_tanb_0p5_mXd_10_MH3_600_MH4_250_final.root ../output/2HDMa_bb_sinp_0p35_tanb_0p5_mXd_10_MH3_600_MH4_250.root 
hadd files_initial/Signal_2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_1000_MH4_150_final.root ../output/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_1000_MH4_150.root 
hadd files_initial/Signal_2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_1000_MH4_350_final.root ../output/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_1000_MH4_350.root 
hadd files_initial/Signal_2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_1200_MH4_150_final.root ../output/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_1200_MH4_150.root 
hadd files_initial/Signal_2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_1200_MH4_250_final.root ../output/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_1200_MH4_250.root 
hadd files_initial/Signal_2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_1200_MH4_350_final.root ../output/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_1200_MH4_350.root 
hadd files_initial/Signal_2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_1600_MH4_150_final.root ../output/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_1600_MH4_150.root 
hadd files_initial/Signal_2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_1600_MH4_250_final.root ../output/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_1600_MH4_250.root 
hadd files_initial/Signal_2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_1600_MH4_350_final.root ../output/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_1600_MH4_350.root 
hadd files_initial/Signal_2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_200_MH4_150_final.root ../output/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_200_MH4_150.root 
hadd files_initial/Signal_2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_400_MH4_150_final.root ../output/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_400_MH4_150.root 
hadd files_initial/Signal_2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_400_MH4_250_final.root ../output/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_400_MH4_250.root 
hadd files_initial/Signal_2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_150_final.root ../output/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_150.root 
hadd files_initial/Signal_2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_250_final.root ../output/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_250.root 
hadd files_initial/Signal_2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_350_final.root ../output/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_350.root 
hadd files_initial/Signal_2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_250_final.root ../output/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_250.root 
hadd files_initial/Signal_2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_350_final.root ../output/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_350.root 
hadd files_initial/Signal_2HDMa_bb_sinp_0p35_tanb_1p5_mXd_10_MH3_600_MH4_150_final.root ../output/2HDMa_bb_sinp_0p35_tanb_1p5_mXd_10_MH3_600_MH4_150.root 
hadd files_initial/Signal_2HDMa_bb_sinp_0p35_tanb_1p5_mXd_10_MH3_600_MH4_250_final.root ../output/2HDMa_bb_sinp_0p35_tanb_1p5_mXd_10_MH3_600_MH4_250.root 
hadd files_initial/Signal_2HDMa_bb_sinp_0p35_tanb_20p0_mXd_10_MH3_600_MH4_150_final.root ../output/2HDMa_bb_sinp_0p35_tanb_20p0_mXd_10_MH3_600_MH4_150.root 
hadd files_initial/Signal_2HDMa_bb_sinp_0p35_tanb_20p0_mXd_10_MH3_600_MH4_250_final.root ../output/2HDMa_bb_sinp_0p35_tanb_20p0_mXd_10_MH3_600_MH4_250.root 
hadd files_initial/Signal_2HDMa_bb_sinp_0p35_tanb_2p0_mXd_10_MH3_600_MH4_150_final.root ../output/2HDMa_bb_sinp_0p35_tanb_2p0_mXd_10_MH3_600_MH4_150.root 
hadd files_initial/Signal_2HDMa_bb_sinp_0p35_tanb_2p0_mXd_10_MH3_600_MH4_250_final.root ../output/2HDMa_bb_sinp_0p35_tanb_2p0_mXd_10_MH3_600_MH4_250.root 
hadd files_initial/Signal_2HDMa_bb_sinp_0p35_tanb_4p0_mXd_10_MH3_600_MH4_150_final.root ../output/2HDMa_bb_sinp_0p35_tanb_4p0_mXd_10_MH3_600_MH4_150.root 
hadd files_initial/Signal_2HDMa_bb_sinp_0p35_tanb_4p0_mXd_10_MH3_600_MH4_250_final.root ../output/2HDMa_bb_sinp_0p35_tanb_4p0_mXd_10_MH3_600_MH4_250.root 
hadd files_initial/Signal_2HDMa_bb_sinp_0p35_tanb_50p0_mXd_10_MH3_600_MH4_150_final.root ../output/2HDMa_bb_sinp_0p35_tanb_50p0_mXd_10_MH3_600_MH4_150.root 
hadd files_initial/Signal_2HDMa_bb_sinp_0p35_tanb_50p0_mXd_10_MH3_600_MH4_250_final.root ../output/2HDMa_bb_sinp_0p35_tanb_50p0_mXd_10_MH3_600_MH4_250.root 
hadd files_initial/Signal_2HDMa_bb_sinp_0p35_tanb_8p0_mXd_10_MH3_600_MH4_150_final.root ../output/2HDMa_bb_sinp_0p35_tanb_8p0_mXd_10_MH3_600_MH4_150.root 
hadd files_initial/Signal_2HDMa_bb_sinp_0p35_tanb_8p0_mXd_10_MH3_600_MH4_250_final.root ../output/2HDMa_bb_sinp_0p35_tanb_8p0_mXd_10_MH3_600_MH4_250.root 
hadd files_initial/Signal_2HDMa_bb_sinp_0p3_tanb_1p0_mXd_10_MH3_600_MH4_200_final.root ../output/2HDMa_bb_sinp_0p3_tanb_1p0_mXd_10_MH3_600_MH4_200.root 
hadd files_initial/Signal_2HDMa_bb_sinp_0p4_tanb_1p0_mXd_10_MH3_600_MH4_200_final.root ../output/2HDMa_bb_sinp_0p4_tanb_1p0_mXd_10_MH3_600_MH4_200.root 
hadd files_initial/Signal_2HDMa_bb_sinp_0p6_tanb_1p0_mXd_10_MH3_600_MH4_200_final.root ../output/2HDMa_bb_sinp_0p6_tanb_1p0_mXd_10_MH3_600_MH4_200.root 
hadd files_initial/Signal_2HDMa_bb_sinp_0p7_tanb_1p0_mXd_10_MH3_600_MH4_200_final.root ../output/2HDMa_bb_sinp_0p7_tanb_1p0_mXd_10_MH3_600_MH4_200.root 
hadd files_initial/Signal_2HDMa_bb_sinp_0p8_tanb_1p0_mXd_10_MH3_600_MH4_200_final.root ../output/2HDMa_bb_sinp_0p8_tanb_1p0_mXd_10_MH3_600_MH4_200.root 
hadd files_initial/Signal_2HDMa_bb_sinp_0p9_tanb_1p0_mXd_10_MH3_600_MH4_200_final.root ../output/2HDMa_bb_sinp_0p9_tanb_1p0_mXd_10_MH3_600_MH4_200.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p1_tanb_1p0_mXd_10_MH3_600_MH4_200_final.root ../output/2HDMa_gg_sinp_0p1_tanb_1p0_mXd_10_MH3_600_MH4_200.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p2_tanb_1p0_mXd_10_MH3_600_MH4_200_final.root ../output/2HDMa_gg_sinp_0p2_tanb_1p0_mXd_10_MH3_600_MH4_200.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p35_tanb_0p5_mXd_10_MH3_600_MH4_150_final.root ../output/2HDMa_gg_sinp_0p35_tanb_0p5_mXd_10_MH3_600_MH4_150.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p35_tanb_0p5_mXd_10_MH3_600_MH4_250_final.root ../output/2HDMa_gg_sinp_0p35_tanb_0p5_mXd_10_MH3_600_MH4_250.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1000_MH4_150_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1000_MH4_150.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1000_MH4_250_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1000_MH4_250.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1000_MH4_350_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1000_MH4_350.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1200_MH4_150_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1200_MH4_150.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1200_MH4_250_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1200_MH4_250.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1200_MH4_350_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1200_MH4_350.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1600_MH4_150_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1600_MH4_150.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1600_MH4_250_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1600_MH4_250.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1600_MH4_350_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1600_MH4_350.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_200_MH4_100_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_200_MH4_100.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_200_MH4_150_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_200_MH4_150.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_300_MH4_100_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_300_MH4_100.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_300_MH4_150_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_300_MH4_150.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_400_MH4_100_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_400_MH4_100.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_400_MH4_150_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_400_MH4_150.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_400_MH4_200_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_400_MH4_200.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_400_MH4_250_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_400_MH4_250.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_500_MH4_150_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_500_MH4_150.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_500_MH4_200_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_500_MH4_200.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_500_MH4_250_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_500_MH4_250.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_500_MH4_300_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_500_MH4_300.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_100_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_100.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_150_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_150.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_200_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_200.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_250_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_250.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_300_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_300.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_350_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_350.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_400_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_400.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_500_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_500.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_700_MH4_250_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_700_MH4_250.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_700_MH4_300_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_700_MH4_300.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_700_MH4_350_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_700_MH4_350.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_700_MH4_400_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_700_MH4_400.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_150_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_150.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_250_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_250.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_300_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_300.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_350_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_350.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_500_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_500.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_900_MH4_300_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_900_MH4_300.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_900_MH4_350_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_900_MH4_350.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_900_MH4_400_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_900_MH4_400.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_900_MH4_500_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_900_MH4_500.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p35_tanb_1p5_mXd_10_MH3_600_MH4_150_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p5_mXd_10_MH3_600_MH4_150.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p35_tanb_1p5_mXd_10_MH3_600_MH4_250_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p5_mXd_10_MH3_600_MH4_250.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p35_tanb_20p0_mXd_10_MH3_600_MH4_150_final.root ../output/2HDMa_gg_sinp_0p35_tanb_20p0_mXd_10_MH3_600_MH4_150.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p35_tanb_20p0_mXd_10_MH3_600_MH4_250_final.root ../output/2HDMa_gg_sinp_0p35_tanb_20p0_mXd_10_MH3_600_MH4_250.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p35_tanb_2p0_mXd_10_MH3_600_MH4_150_final.root ../output/2HDMa_gg_sinp_0p35_tanb_2p0_mXd_10_MH3_600_MH4_150.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p35_tanb_2p0_mXd_10_MH3_600_MH4_250_final.root ../output/2HDMa_gg_sinp_0p35_tanb_2p0_mXd_10_MH3_600_MH4_250.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p35_tanb_4p0_mXd_10_MH3_600_MH4_150_final.root ../output/2HDMa_gg_sinp_0p35_tanb_4p0_mXd_10_MH3_600_MH4_150.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p35_tanb_4p0_mXd_10_MH3_600_MH4_250_final.root ../output/2HDMa_gg_sinp_0p35_tanb_4p0_mXd_10_MH3_600_MH4_250.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p35_tanb_50p0_mXd_10_MH3_600_MH4_150_final.root ../output/2HDMa_gg_sinp_0p35_tanb_50p0_mXd_10_MH3_600_MH4_150.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p35_tanb_50p0_mXd_10_MH3_600_MH4_250_final.root ../output/2HDMa_gg_sinp_0p35_tanb_50p0_mXd_10_MH3_600_MH4_250.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p35_tanb_8p0_mXd_10_MH3_600_MH4_150_final.root ../output/2HDMa_gg_sinp_0p35_tanb_8p0_mXd_10_MH3_600_MH4_150.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p35_tanb_8p0_mXd_10_MH3_600_MH4_250_final.root ../output/2HDMa_gg_sinp_0p35_tanb_8p0_mXd_10_MH3_600_MH4_250.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p3_tanb_1p0_mXd_10_MH3_600_MH4_200_final.root ../output/2HDMa_gg_sinp_0p3_tanb_1p0_mXd_10_MH3_600_MH4_200.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p4_tanb_1p0_mXd_10_MH3_600_MH4_200_final.root ../output/2HDMa_gg_sinp_0p4_tanb_1p0_mXd_10_MH3_600_MH4_200.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p5_tanb_1p0_mXd_10_MH3_600_MH4_200_final.root ../output/2HDMa_gg_sinp_0p5_tanb_1p0_mXd_10_MH3_600_MH4_200.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p6_tanb_1p0_mXd_10_MH3_600_MH4_200_final.root ../output/2HDMa_gg_sinp_0p6_tanb_1p0_mXd_10_MH3_600_MH4_200.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p7_tanb_1p0_mXd_10_MH3_600_MH4_200_final.root ../output/2HDMa_gg_sinp_0p7_tanb_1p0_mXd_10_MH3_600_MH4_200.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p8_tanb_1p0_mXd_10_MH3_600_MH4_200_final.root ../output/2HDMa_gg_sinp_0p8_tanb_1p0_mXd_10_MH3_600_MH4_200.root 
hadd files_initial/Signal_2HDMa_gg_sinp_0p9_tanb_1p0_mXd_10_MH3_600_MH4_200_final.root ../output/2HDMa_gg_sinp_0p9_tanb_1p0_mXd_10_MH3_600_MH4_200.root 


