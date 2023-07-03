
#!/bin/bash
set -e 

if [ "$(ls -A files_initial)" ]; then
echo "Take action files_initial/ is not Empty .... removing existing files ....."
rm files_initial/*.root
else
echo " files_initial/ is Empty"
fi

hadd files_initial/DY1JetsToLL_final.root ../output/DY1JetsToLL_00.root ../output/DY1JetsToLL_01.root ../output/DY1JetsToLL_02.root ../output/DY1JetsToLL_03.root ../output/DY1JetsToLL_04.root 
hadd files_initial/DY2JetsToLL_final.root ../output/DY2JetsToLL_00.root ../output/DY2JetsToLL_01.root ../output/DY2JetsToLL_02.root 
hadd files_initial/DY3JetsToLL_final.root ../output/DY3JetsToLL_00.root 
hadd files_initial/DY4JetsToLL_final.root ../output/DY4JetsToLL_00.root 
hadd files_initial/DYJetsToLL_final.root ../output/DYJetsToLL_00.root ../output/DYJetsToLL_01.root ../output/DYJetsToLL_02.root ../output/DYJetsToLL_03.root ../output/DYJetsToLL_04.root ../output/DYJetsToLL_05.root ../output/DYJetsToLL_06.root 
hadd files_initial/DYJetsToLL_0J_Incl_final.root ../output/DYJetsToLL_0J_Incl_00.root ../output/DYJetsToLL_0J_Incl_01.root ../output/DYJetsToLL_0J_Incl_02.root ../output/DYJetsToLL_0J_Incl_03.root ../output/DYJetsToLL_0J_Incl_04.root ../output/DYJetsToLL_0J_Incl_05.root ../output/DYJetsToLL_0J_Incl_06.root ../output/DYJetsToLL_0J_Incl_07.root ../output/DYJetsToLL_0J_Incl_08.root ../output/DYJetsToLL_0J_Incl_09.root 
hadd files_initial/DYJetsToLL_2J_Incl_final.root ../output/DYJetsToLL_2J_Incl_00.root ../output/DYJetsToLL_2J_Incl_01.root ../output/DYJetsToLL_2J_Incl_02.root ../output/DYJetsToLL_2J_Incl_03.root ../output/DYJetsToLL_2J_Incl_04.root ../output/DYJetsToLL_2J_Incl_05.root ../output/DYJetsToLL_2J_Incl_06.root 
hadd files_initial/DYJetsToLL_HT100-200_final.root ../output/DYJetsToLL_HT100-200_00.root ../output/DYJetsToLL_HT100-200_01.root 
hadd files_initial/DYJetsToLL_HT1200-2500_final.root ../output/DYJetsToLL_HT1200-2500_00.root 
hadd files_initial/DYJetsToLL_HT200-400_final.root ../output/DYJetsToLL_HT200-400_00.root ../output/DYJetsToLL_HT200-400_01.root 
hadd files_initial/DYJetsToLL_HT2500-Inf_final.root ../output/DYJetsToLL_HT2500-Inf_00.root 
hadd files_initial/DYJetsToLL_HT400-600_final.root ../output/DYJetsToLL_HT400-600_00.root ../output/DYJetsToLL_HT400-600_01.root 
hadd files_initial/DYJetsToLL_HT600-800_final.root ../output/DYJetsToLL_HT600-800_00.root 
hadd files_initial/DYJetsToLL_HT70-100_final.root ../output/DYJetsToLL_HT70-100_00.root ../output/DYJetsToLL_HT70-100_01.root 
hadd files_initial/DYJetsToLL_HT800-1200_final.root ../output/DYJetsToLL_HT800-1200_00.root 
hadd files_initial/DYJetsToLL_Incl_HT_final.root ../output/DYJetsToLL_Incl_HT_00.root ../output/DYJetsToLL_Incl_HT_01.root 
hadd files_initial/DYJetsToLL_M10to50_final.root ../output/DYJetsToLL_M10to50_00.root ../output/DYJetsToLL_M10to50_01.root ../output/DYJetsToLL_M10to50_02.root ../output/DYJetsToLL_M10to50_03.root 
hadd files_initial/EWKWMinus2Jets_WToLNu_final.root ../output/EWKWMinus2Jets_WToLNu_00.root 
hadd files_initial/EWKWPlus2Jets_WToLNu_final.root ../output/EWKWPlus2Jets_WToLNu_00.root 
hadd files_initial/EWKZ2Jets_ZToLL_final.root ../output/EWKZ2Jets_ZToLL_00.root 
hadd files_initial/EWKZ2Jets_ZToNuNu_final.root ../output/EWKZ2Jets_ZToNuNu_00.root 
hadd files_initial/GluGluHToTauTau_final.root ../output/GluGluHToTauTau_00.root ../output/GluGluHToTauTau_01.root 
hadd files_initial/GluGluZH_HToWW_final.root ../output/GluGluZH_HToWW_00.root 
hadd files_initial/HWminusJ_HToWW_final.root ../output/HWminusJ_HToWW_00.root 
hadd files_initial/HWplusJ_HToWW_final.root ../output/HWplusJ_HToWW_00.root 
hadd files_initial/HZJ_HToWW_final.root ../output/HZJ_HToWW_00.root 
hadd files_initial/ST_t-channel_antitop_final.root ../output/ST_t-channel_antitop_00.root ../output/ST_t-channel_antitop_01.root ../output/ST_t-channel_antitop_02.root ../output/ST_t-channel_antitop_03.root ../output/ST_t-channel_antitop_04.root ../output/ST_t-channel_antitop_05.root ../output/ST_t-channel_antitop_06.root ../output/ST_t-channel_antitop_07.root 
hadd files_initial/ST_t-channel_top_final.root ../output/ST_t-channel_top_00.root ../output/ST_t-channel_top_01.root ../output/ST_t-channel_top_02.root ../output/ST_t-channel_top_03.root ../output/ST_t-channel_top_04.root ../output/ST_t-channel_top_05.root ../output/ST_t-channel_top_06.root ../output/ST_t-channel_top_07.root ../output/ST_t-channel_top_08.root ../output/ST_t-channel_top_09.root ../output/ST_t-channel_top_10.root ../output/ST_t-channel_top_11.root 
hadd files_initial/ST_tW_antitop_final.root ../output/ST_tW_antitop_00.root 
hadd files_initial/ST_tW_top_final.root ../output/ST_tW_top_00.root 
hadd files_initial/SingleMuonA_final.root ../output/SingleMuonA_00.root ../output/SingleMuonA_01.root ../output/SingleMuonA_02.root ../output/SingleMuonA_03.root ../output/SingleMuonA_04.root ../output/SingleMuonA_05.root ../output/SingleMuonA_06.root 
hadd files_initial/fullLumi_SingleMuonA_final.root ../output/SingleMuonA_full_00.root ../output/SingleMuonA_full_01.root ../output/SingleMuonA_full_02.root ../output/SingleMuonA_full_03.root ../output/SingleMuonA_full_04.root ../output/SingleMuonA_full_05.root ../output/SingleMuonA_full_06.root 
hadd files_initial/SingleMuonB_final.root ../output/SingleMuonB_00.root ../output/SingleMuonB_01.root ../output/SingleMuonB_02.root ../output/SingleMuonB_03.root ../output/SingleMuonB_04.root 
hadd files_initial/fullLumi_SingleMuonB_final.root ../output/SingleMuonB_full_00.root ../output/SingleMuonB_full_01.root ../output/SingleMuonB_full_02.root ../output/SingleMuonB_full_03.root ../output/SingleMuonB_full_04.root 
hadd files_initial/SingleMuonC_final.root ../output/SingleMuonC_00.root ../output/SingleMuonC_01.root ../output/SingleMuonC_02.root ../output/SingleMuonC_03.root 
hadd files_initial/fullLumi_SingleMuonC_final.root ../output/SingleMuonC_full_00.root ../output/SingleMuonC_full_01.root ../output/SingleMuonC_full_02.root ../output/SingleMuonC_full_03.root 
hadd files_initial/SingleMuonD_PromptReco_final.root ../output/SingleMuonD_PromptReco_00.root ../output/SingleMuonD_PromptReco_01.root ../output/SingleMuonD_PromptReco_02.root ../output/SingleMuonD_PromptReco_03.root ../output/SingleMuonD_PromptReco_04.root ../output/SingleMuonD_PromptReco_05.root ../output/SingleMuonD_PromptReco_06.root ../output/SingleMuonD_PromptReco_07.root ../output/SingleMuonD_PromptReco_08.root ../output/SingleMuonD_PromptReco_09.root ../output/SingleMuonD_PromptReco_10.root ../output/SingleMuonD_PromptReco_11.root 
hadd files_initial/fullLumi_SingleMuonD_PromptReco_final.root ../output/SingleMuonD_full_PromptReco_00.root ../output/SingleMuonD_full_PromptReco_01.root ../output/SingleMuonD_full_PromptReco_02.root ../output/SingleMuonD_full_PromptReco_03.root ../output/SingleMuonD_full_PromptReco_04.root ../output/SingleMuonD_full_PromptReco_05.root ../output/SingleMuonD_full_PromptReco_06.root ../output/SingleMuonD_full_PromptReco_07.root ../output/SingleMuonD_full_PromptReco_08.root ../output/SingleMuonD_full_PromptReco_09.root ../output/SingleMuonD_full_PromptReco_10.root ../output/SingleMuonD_full_PromptReco_11.root 
hadd files_initial/TTTo2L2Nu_powheg_final.root ../output/TTTo2L2Nu_powheg_00.root ../output/TTTo2L2Nu_powheg_01.root ../output/TTTo2L2Nu_powheg_02.root ../output/TTTo2L2Nu_powheg_03.root ../output/TTTo2L2Nu_powheg_04.root ../output/TTTo2L2Nu_powheg_05.root ../output/TTTo2L2Nu_powheg_06.root 
hadd files_initial/TTToHadronic_powheg_final.root ../output/TTToHadronic_powheg_00.root ../output/TTToHadronic_powheg_01.root ../output/TTToHadronic_powheg_02.root ../output/TTToHadronic_powheg_03.root ../output/TTToHadronic_powheg_04.root ../output/TTToHadronic_powheg_05.root ../output/TTToHadronic_powheg_06.root ../output/TTToHadronic_powheg_07.root ../output/TTToHadronic_powheg_08.root ../output/TTToHadronic_powheg_09.root ../output/TTToHadronic_powheg_10.root ../output/TTToHadronic_powheg_11.root ../output/TTToHadronic_powheg_12.root ../output/TTToHadronic_powheg_13.root ../output/TTToHadronic_powheg_14.root 
hadd files_initial/TTToSemiLeptonic_powheg_final.root ../output/TTToSemiLeptonic_powheg_00.root ../output/TTToSemiLeptonic_powheg_01.root ../output/TTToSemiLeptonic_powheg_02.root ../output/TTToSemiLeptonic_powheg_03.root ../output/TTToSemiLeptonic_powheg_04.root ../output/TTToSemiLeptonic_powheg_05.root ../output/TTToSemiLeptonic_powheg_06.root ../output/TTToSemiLeptonic_powheg_07.root ../output/TTToSemiLeptonic_powheg_08.root ../output/TTToSemiLeptonic_powheg_09.root ../output/TTToSemiLeptonic_powheg_10.root ../output/TTToSemiLeptonic_powheg_11.root ../output/TTToSemiLeptonic_powheg_12.root ../output/TTToSemiLeptonic_powheg_13.root 
hadd files_initial/VBFHToTauTau_final.root ../output/VBFHToTauTau_00.root 
hadd files_initial/VBFHToWWTo2L2Nu_final.root ../output/VBFHToWWTo2L2Nu_00.root 
hadd files_initial/VVTo2L2Nu_final.root ../output/VVTo2L2Nu_00.root 
hadd files_initial/W1JetsToLNu_final.root ../output/W1JetsToLNu_00.root ../output/W1JetsToLNu_01.root ../output/W1JetsToLNu_02.root ../output/W1JetsToLNu_03.root ../output/W1JetsToLNu_04.root ../output/W1JetsToLNu_05.root 
hadd files_initial/W2JetsToLNu_final.root ../output/W2JetsToLNu_00.root ../output/W2JetsToLNu_01.root ../output/W2JetsToLNu_02.root 
hadd files_initial/W3JetsToLNu_final.root ../output/W3JetsToLNu_00.root ../output/W3JetsToLNu_01.root 
hadd files_initial/W4JetsToLNu_final.root ../output/W4JetsToLNu_00.root ../output/W4JetsToLNu_01.root 
hadd files_initial/WGToLNuG_final.root ../output/WGToLNuG_00.root 
hadd files_initial/WJetsToLNu_0J_Incl_final.root ../output/WJetsToLNu_0J_Incl_00.root ../output/WJetsToLNu_0J_Incl_01.root ../output/WJetsToLNu_0J_Incl_02.root ../output/WJetsToLNu_0J_Incl_03.root ../output/WJetsToLNu_0J_Incl_04.root ../output/WJetsToLNu_0J_Incl_05.root ../output/WJetsToLNu_0J_Incl_06.root ../output/WJetsToLNu_0J_Incl_07.root ../output/WJetsToLNu_0J_Incl_08.root 
hadd files_initial/WJetsToLNu_1J_Incl_final.root ../output/WJetsToLNu_1J_Incl_00.root ../output/WJetsToLNu_1J_Incl_01.root ../output/WJetsToLNu_1J_Incl_02.root ../output/WJetsToLNu_1J_Incl_03.root ../output/WJetsToLNu_1J_Incl_04.root ../output/WJetsToLNu_1J_Incl_05.root ../output/WJetsToLNu_1J_Incl_06.root ../output/WJetsToLNu_1J_Incl_07.root ../output/WJetsToLNu_1J_Incl_08.root ../output/WJetsToLNu_1J_Incl_09.root ../output/WJetsToLNu_1J_Incl_10.root ../output/WJetsToLNu_1J_Incl_11.root 
hadd files_initial/WJetsToLNu_2J_Incl_final.root ../output/WJetsToLNu_2J_Incl_00.root ../output/WJetsToLNu_2J_Incl_01.root ../output/WJetsToLNu_2J_Incl_02.root ../output/WJetsToLNu_2J_Incl_03.root ../output/WJetsToLNu_2J_Incl_04.root ../output/WJetsToLNu_2J_Incl_05.root ../output/WJetsToLNu_2J_Incl_06.root ../output/WJetsToLNu_2J_Incl_07.root ../output/WJetsToLNu_2J_Incl_08.root ../output/WJetsToLNu_2J_Incl_09.root 
hadd files_initial/WJetsToLNu_HT100-200_final.root ../output/WJetsToLNu_HT100-200_00.root ../output/WJetsToLNu_HT100-200_01.root ../output/WJetsToLNu_HT100-200_02.root 
hadd files_initial/WJetsToLNu_HT1200-2500_final.root ../output/WJetsToLNu_HT1200-2500_00.root 
hadd files_initial/WJetsToLNu_HT200-400_final.root ../output/WJetsToLNu_HT200-400_00.root ../output/WJetsToLNu_HT200-400_01.root ../output/WJetsToLNu_HT200-400_02.root 
hadd files_initial/WJetsToLNu_HT2500-Inf_final.root ../output/WJetsToLNu_HT2500-Inf_00.root 
hadd files_initial/WJetsToLNu_HT400-600_final.root ../output/WJetsToLNu_HT400-600_00.root 
hadd files_initial/WJetsToLNu_HT600-800_final.root ../output/WJetsToLNu_HT600-800_00.root ../output/WJetsToLNu_HT600-800_01.root ../output/WJetsToLNu_HT600-800_02.root 
hadd files_initial/WJetsToLNu_HT70-100_final.root ../output/WJetsToLNu_HT70-100_00.root ../output/WJetsToLNu_HT70-100_01.root ../output/WJetsToLNu_HT70-100_02.root 
hadd files_initial/WJetsToLNu_HT800-1200_final.root ../output/WJetsToLNu_HT800-1200_00.root 
hadd files_initial/WJetsToLNu_Incl_final.root ../output/WJetsToLNu_Incl_00.root ../output/WJetsToLNu_Incl_01.root ../output/WJetsToLNu_Incl_02.root ../output/WJetsToLNu_Incl_03.root ../output/WJetsToLNu_Incl_04.root ../output/WJetsToLNu_Incl_05.root ../output/WJetsToLNu_Incl_06.root ../output/WJetsToLNu_Incl_07.root ../output/WJetsToLNu_Incl_08.root 
hadd files_initial/WJetsToLNu_Incl_HT_final.root ../output/WJetsToLNu_Incl_HT_00.root ../output/WJetsToLNu_Incl_HT_01.root ../output/WJetsToLNu_Incl_HT_02.root ../output/WJetsToLNu_Incl_HT_03.root ../output/WJetsToLNu_Incl_HT_04.root ../output/WJetsToLNu_Incl_HT_05.root ../output/WJetsToLNu_Incl_HT_06.root ../output/WJetsToLNu_Incl_HT_07.root ../output/WJetsToLNu_Incl_HT_08.root 
hadd files_initial/WWTo1L1Nu2Q_final.root ../output/WWTo1L1Nu2Q_00.root 
hadd files_initial/WWToLNuQQ_final.root ../output/WWToLNuQQ_00.root ../output/WWToLNuQQ_01.root 
hadd files_initial/WWW_final.root ../output/WWW_00.root 
hadd files_initial/WWZ_final.root ../output/WWZ_00.root 
hadd files_initial/WZTo3LNu_final.root ../output/WZTo3LNu_00.root ../output/WZTo3LNu_01.root 
hadd files_initial/WZZ_final.root ../output/WZZ_00.root 
hadd files_initial/WminusHToTauTau_final.root ../output/WminusHToTauTau_00.root 
hadd files_initial/WplusHToTauTau_final.root ../output/WplusHToTauTau_00.root 
hadd files_initial/ZHToTauTau_final.root ../output/ZHToTauTau_00.root 
hadd files_initial/ZJetsToNuNu_HT100-200_final.root ../output/ZJetsToNuNu_HT100-200_00.root 
hadd files_initial/ZJetsToNuNu_HT1200-2500_final.root ../output/ZJetsToNuNu_HT1200-2500_00.root 
hadd files_initial/ZJetsToNuNu_HT200-400_final.root ../output/ZJetsToNuNu_HT200-400_00.root ../output/ZJetsToNuNu_HT200-400_01.root ../output/ZJetsToNuNu_HT200-400_02.root 
hadd files_initial/ZJetsToNuNu_HT2500-Inf_final.root ../output/ZJetsToNuNu_HT2500-Inf_00.root 
hadd files_initial/ZJetsToNuNu_HT400-600_final.root ../output/ZJetsToNuNu_HT400-600_00.root 
hadd files_initial/ZJetsToNuNu_HT800-1200_final.root ../output/ZJetsToNuNu_HT800-1200_00.root 
hadd files_initial/ZZTo2L2Q_final.root ../output/ZZTo2L2Q_00.root ../output/ZZTo2L2Q_01.root ../output/ZZTo2L2Q_02.root 
hadd files_initial/ZZTo4L_final.root ../output/ZZTo4L_00.root 
hadd files_initial/ZZZ_final.root ../output/ZZZ_00.root 
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
hadd files_initial/Signal_2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_150_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_150.root 
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


