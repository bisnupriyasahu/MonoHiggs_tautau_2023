
#!/bin/bash
set -e 

if [ "$(ls -A files_initial)" ]; then
echo "Take action files_initial/ is not Empty .... removing existing files ....."
rm files_initial/*.root
else
echo " files_initial/ is Empty"
fi

hadd files_initial/2HDMa_bb_sinp_0p1_tanb_1p0_mXd_10_MH3_600_MH4_200_final.root ../output/2HDMa_bb_sinp_0p1_tanb_1p0_mXd_10_MH3_600_MH4_200.root 
hadd files_initial/2HDMa_bb_sinp_0p2_tanb_1p0_mXd_10_MH3_600_MH4_200_final.root ../output/2HDMa_bb_sinp_0p2_tanb_1p0_mXd_10_MH3_600_MH4_200.root 
hadd files_initial/2HDMa_bb_sinp_0p35_tanb_0p5_mXd_10_MH3_600_MH4_150_final.root ../output/2HDMa_bb_sinp_0p35_tanb_0p5_mXd_10_MH3_600_MH4_150.root 
hadd files_initial/2HDMa_bb_sinp_0p35_tanb_0p5_mXd_10_MH3_600_MH4_250_final.root ../output/2HDMa_bb_sinp_0p35_tanb_0p5_mXd_10_MH3_600_MH4_250.root 
hadd files_initial/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_1000_MH4_150_final.root ../output/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_1000_MH4_150.root 
hadd files_initial/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_1000_MH4_350_final.root ../output/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_1000_MH4_350.root 
hadd files_initial/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_1200_MH4_150_final.root ../output/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_1200_MH4_150.root 
hadd files_initial/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_1200_MH4_250_final.root ../output/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_1200_MH4_250.root 
hadd files_initial/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_1200_MH4_350_final.root ../output/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_1200_MH4_350.root 
hadd files_initial/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_1600_MH4_150_final.root ../output/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_1600_MH4_150.root 
hadd files_initial/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_1600_MH4_250_final.root ../output/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_1600_MH4_250.root 
hadd files_initial/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_1600_MH4_350_final.root ../output/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_1600_MH4_350.root 
hadd files_initial/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_200_MH4_150_final.root ../output/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_200_MH4_150.root 
hadd files_initial/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_400_MH4_150_final.root ../output/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_400_MH4_150.root 
hadd files_initial/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_400_MH4_250_final.root ../output/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_400_MH4_250.root 
hadd files_initial/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_150_final.root ../output/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_150.root 
hadd files_initial/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_250_final.root ../output/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_250.root 
hadd files_initial/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_350_final.root ../output/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_350.root 
hadd files_initial/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_250_final.root ../output/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_250.root 
hadd files_initial/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_350_final.root ../output/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_350.root 
hadd files_initial/2HDMa_bb_sinp_0p35_tanb_1p5_mXd_10_MH3_600_MH4_150_final.root ../output/2HDMa_bb_sinp_0p35_tanb_1p5_mXd_10_MH3_600_MH4_150.root 
hadd files_initial/2HDMa_bb_sinp_0p35_tanb_1p5_mXd_10_MH3_600_MH4_250_final.root ../output/2HDMa_bb_sinp_0p35_tanb_1p5_mXd_10_MH3_600_MH4_250.root 
hadd files_initial/2HDMa_bb_sinp_0p35_tanb_20p0_mXd_10_MH3_600_MH4_150_final.root ../output/2HDMa_bb_sinp_0p35_tanb_20p0_mXd_10_MH3_600_MH4_150.root 
hadd files_initial/2HDMa_bb_sinp_0p35_tanb_20p0_mXd_10_MH3_600_MH4_250_final.root ../output/2HDMa_bb_sinp_0p35_tanb_20p0_mXd_10_MH3_600_MH4_250.root 
hadd files_initial/2HDMa_bb_sinp_0p35_tanb_2p0_mXd_10_MH3_600_MH4_150_final.root ../output/2HDMa_bb_sinp_0p35_tanb_2p0_mXd_10_MH3_600_MH4_150.root 
hadd files_initial/2HDMa_bb_sinp_0p35_tanb_2p0_mXd_10_MH3_600_MH4_250_final.root ../output/2HDMa_bb_sinp_0p35_tanb_2p0_mXd_10_MH3_600_MH4_250.root 
hadd files_initial/2HDMa_bb_sinp_0p35_tanb_4p0_mXd_10_MH3_600_MH4_150_final.root ../output/2HDMa_bb_sinp_0p35_tanb_4p0_mXd_10_MH3_600_MH4_150.root 
hadd files_initial/2HDMa_bb_sinp_0p35_tanb_4p0_mXd_10_MH3_600_MH4_250_final.root ../output/2HDMa_bb_sinp_0p35_tanb_4p0_mXd_10_MH3_600_MH4_250.root 
hadd files_initial/2HDMa_bb_sinp_0p35_tanb_50p0_mXd_10_MH3_600_MH4_150_final.root ../output/2HDMa_bb_sinp_0p35_tanb_50p0_mXd_10_MH3_600_MH4_150.root 
hadd files_initial/2HDMa_bb_sinp_0p35_tanb_50p0_mXd_10_MH3_600_MH4_250_final.root ../output/2HDMa_bb_sinp_0p35_tanb_50p0_mXd_10_MH3_600_MH4_250.root 
hadd files_initial/2HDMa_bb_sinp_0p35_tanb_8p0_mXd_10_MH3_600_MH4_150_final.root ../output/2HDMa_bb_sinp_0p35_tanb_8p0_mXd_10_MH3_600_MH4_150.root 
hadd files_initial/2HDMa_bb_sinp_0p35_tanb_8p0_mXd_10_MH3_600_MH4_250_final.root ../output/2HDMa_bb_sinp_0p35_tanb_8p0_mXd_10_MH3_600_MH4_250.root 
hadd files_initial/2HDMa_bb_sinp_0p3_tanb_1p0_mXd_10_MH3_600_MH4_200_final.root ../output/2HDMa_bb_sinp_0p3_tanb_1p0_mXd_10_MH3_600_MH4_200.root 
hadd files_initial/2HDMa_bb_sinp_0p4_tanb_1p0_mXd_10_MH3_600_MH4_200_final.root ../output/2HDMa_bb_sinp_0p4_tanb_1p0_mXd_10_MH3_600_MH4_200.root 
hadd files_initial/2HDMa_bb_sinp_0p6_tanb_1p0_mXd_10_MH3_600_MH4_200_final.root ../output/2HDMa_bb_sinp_0p6_tanb_1p0_mXd_10_MH3_600_MH4_200.root 
hadd files_initial/2HDMa_bb_sinp_0p7_tanb_1p0_mXd_10_MH3_600_MH4_200_final.root ../output/2HDMa_bb_sinp_0p7_tanb_1p0_mXd_10_MH3_600_MH4_200.root 
hadd files_initial/2HDMa_bb_sinp_0p8_tanb_1p0_mXd_10_MH3_600_MH4_200_final.root ../output/2HDMa_bb_sinp_0p8_tanb_1p0_mXd_10_MH3_600_MH4_200.root 
hadd files_initial/2HDMa_bb_sinp_0p9_tanb_1p0_mXd_10_MH3_600_MH4_200_final.root ../output/2HDMa_bb_sinp_0p9_tanb_1p0_mXd_10_MH3_600_MH4_200.root 
hadd files_initial/2HDMa_gg_sinp_0p1_tanb_1p0_mXd_10_MH3_600_MH4_200_final.root ../output/2HDMa_gg_sinp_0p1_tanb_1p0_mXd_10_MH3_600_MH4_200.root 
hadd files_initial/2HDMa_gg_sinp_0p2_tanb_1p0_mXd_10_MH3_600_MH4_200_final.root ../output/2HDMa_gg_sinp_0p2_tanb_1p0_mXd_10_MH3_600_MH4_200.root 
hadd files_initial/2HDMa_gg_sinp_0p35_tanb_0p5_mXd_10_MH3_600_MH4_150_final.root ../output/2HDMa_gg_sinp_0p35_tanb_0p5_mXd_10_MH3_600_MH4_150.root 
hadd files_initial/2HDMa_gg_sinp_0p35_tanb_0p5_mXd_10_MH3_600_MH4_250_final.root ../output/2HDMa_gg_sinp_0p35_tanb_0p5_mXd_10_MH3_600_MH4_250.root 
hadd files_initial/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1000_MH4_150_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1000_MH4_150.root 
hadd files_initial/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1000_MH4_250_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1000_MH4_250.root 
hadd files_initial/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1000_MH4_350_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1000_MH4_350.root 
hadd files_initial/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1200_MH4_150_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1200_MH4_150.root 
hadd files_initial/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1200_MH4_250_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1200_MH4_250.root 
hadd files_initial/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1200_MH4_350_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1200_MH4_350.root 
hadd files_initial/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1600_MH4_150_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1600_MH4_150.root 
hadd files_initial/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1600_MH4_250_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1600_MH4_250.root 
hadd files_initial/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1600_MH4_350_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1600_MH4_350.root 
hadd files_initial/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_200_MH4_100_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_200_MH4_100.root 
hadd files_initial/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_200_MH4_150_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_200_MH4_150.root 
hadd files_initial/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_300_MH4_100_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_300_MH4_100.root 
hadd files_initial/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_300_MH4_150_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_300_MH4_150.root 
hadd files_initial/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_400_MH4_100_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_400_MH4_100.root 
hadd files_initial/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_400_MH4_150_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_400_MH4_150.root 
hadd files_initial/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_400_MH4_200_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_400_MH4_200.root 
hadd files_initial/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_400_MH4_250_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_400_MH4_250.root 
hadd files_initial/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_500_MH4_150_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_500_MH4_150.root 
hadd files_initial/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_500_MH4_200_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_500_MH4_200.root 
hadd files_initial/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_500_MH4_250_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_500_MH4_250.root 
hadd files_initial/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_500_MH4_300_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_500_MH4_300.root 
hadd files_initial/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_100_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_100.root 
hadd files_initial/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_150_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_150.root 
hadd files_initial/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_200_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_200.root 
hadd files_initial/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_250_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_250.root 
hadd files_initial/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_300_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_300.root 
hadd files_initial/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_350_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_350.root 
hadd files_initial/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_400_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_400.root 
hadd files_initial/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_500_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_500.root 
hadd files_initial/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_700_MH4_250_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_700_MH4_250.root 
hadd files_initial/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_700_MH4_300_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_700_MH4_300.root 
hadd files_initial/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_700_MH4_350_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_700_MH4_350.root 
hadd files_initial/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_700_MH4_400_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_700_MH4_400.root 
hadd files_initial/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_150_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_150.root 
hadd files_initial/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_250_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_250.root 
hadd files_initial/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_300_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_300.root 
hadd files_initial/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_350_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_350.root 
hadd files_initial/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_500_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_500.root 
hadd files_initial/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_900_MH4_300_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_900_MH4_300.root 
hadd files_initial/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_900_MH4_350_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_900_MH4_350.root 
hadd files_initial/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_900_MH4_400_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_900_MH4_400.root 
hadd files_initial/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_900_MH4_500_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_900_MH4_500.root 
hadd files_initial/2HDMa_gg_sinp_0p35_tanb_1p5_mXd_10_MH3_600_MH4_150_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p5_mXd_10_MH3_600_MH4_150.root 
hadd files_initial/2HDMa_gg_sinp_0p35_tanb_1p5_mXd_10_MH3_600_MH4_250_final.root ../output/2HDMa_gg_sinp_0p35_tanb_1p5_mXd_10_MH3_600_MH4_250.root 
hadd files_initial/2HDMa_gg_sinp_0p35_tanb_20p0_mXd_10_MH3_600_MH4_150_final.root ../output/2HDMa_gg_sinp_0p35_tanb_20p0_mXd_10_MH3_600_MH4_150.root 
hadd files_initial/2HDMa_gg_sinp_0p35_tanb_20p0_mXd_10_MH3_600_MH4_250_final.root ../output/2HDMa_gg_sinp_0p35_tanb_20p0_mXd_10_MH3_600_MH4_250.root 
hadd files_initial/2HDMa_gg_sinp_0p35_tanb_2p0_mXd_10_MH3_600_MH4_150_final.root ../output/2HDMa_gg_sinp_0p35_tanb_2p0_mXd_10_MH3_600_MH4_150.root 
hadd files_initial/2HDMa_gg_sinp_0p35_tanb_2p0_mXd_10_MH3_600_MH4_250_final.root ../output/2HDMa_gg_sinp_0p35_tanb_2p0_mXd_10_MH3_600_MH4_250.root 
hadd files_initial/2HDMa_gg_sinp_0p35_tanb_4p0_mXd_10_MH3_600_MH4_150_final.root ../output/2HDMa_gg_sinp_0p35_tanb_4p0_mXd_10_MH3_600_MH4_150.root 
hadd files_initial/2HDMa_gg_sinp_0p35_tanb_4p0_mXd_10_MH3_600_MH4_250_final.root ../output/2HDMa_gg_sinp_0p35_tanb_4p0_mXd_10_MH3_600_MH4_250.root 
hadd files_initial/2HDMa_gg_sinp_0p35_tanb_50p0_mXd_10_MH3_600_MH4_150_final.root ../output/2HDMa_gg_sinp_0p35_tanb_50p0_mXd_10_MH3_600_MH4_150.root 
hadd files_initial/2HDMa_gg_sinp_0p35_tanb_50p0_mXd_10_MH3_600_MH4_250_final.root ../output/2HDMa_gg_sinp_0p35_tanb_50p0_mXd_10_MH3_600_MH4_250.root 
hadd files_initial/2HDMa_gg_sinp_0p35_tanb_8p0_mXd_10_MH3_600_MH4_150_final.root ../output/2HDMa_gg_sinp_0p35_tanb_8p0_mXd_10_MH3_600_MH4_150.root 
hadd files_initial/2HDMa_gg_sinp_0p35_tanb_8p0_mXd_10_MH3_600_MH4_250_final.root ../output/2HDMa_gg_sinp_0p35_tanb_8p0_mXd_10_MH3_600_MH4_250.root 
hadd files_initial/2HDMa_gg_sinp_0p3_tanb_1p0_mXd_10_MH3_600_MH4_200_final.root ../output/2HDMa_gg_sinp_0p3_tanb_1p0_mXd_10_MH3_600_MH4_200.root 
hadd files_initial/2HDMa_gg_sinp_0p4_tanb_1p0_mXd_10_MH3_600_MH4_200_final.root ../output/2HDMa_gg_sinp_0p4_tanb_1p0_mXd_10_MH3_600_MH4_200.root 
hadd files_initial/2HDMa_gg_sinp_0p5_tanb_1p0_mXd_10_MH3_600_MH4_200_final.root ../output/2HDMa_gg_sinp_0p5_tanb_1p0_mXd_10_MH3_600_MH4_200.root 
hadd files_initial/2HDMa_gg_sinp_0p6_tanb_1p0_mXd_10_MH3_600_MH4_200_final.root ../output/2HDMa_gg_sinp_0p6_tanb_1p0_mXd_10_MH3_600_MH4_200.root 
hadd files_initial/2HDMa_gg_sinp_0p7_tanb_1p0_mXd_10_MH3_600_MH4_200_final.root ../output/2HDMa_gg_sinp_0p7_tanb_1p0_mXd_10_MH3_600_MH4_200.root 
hadd files_initial/2HDMa_gg_sinp_0p8_tanb_1p0_mXd_10_MH3_600_MH4_200_final.root ../output/2HDMa_gg_sinp_0p8_tanb_1p0_mXd_10_MH3_600_MH4_200.root 
hadd files_initial/2HDMa_gg_sinp_0p9_tanb_1p0_mXd_10_MH3_600_MH4_200_final.root ../output/2HDMa_gg_sinp_0p9_tanb_1p0_mXd_10_MH3_600_MH4_200.root 
hadd files_initial/DY1JetsToLL_final.root ../output/DY1JetsToLL_00.root ../output/DY1JetsToLL_01.root ../output/DY1JetsToLL_02.root ../output/DY1JetsToLL_03.root ../output/DY1JetsToLL_04.root 
hadd files_initial/DY2JetsToLL_final.root ../output/DY2JetsToLL_00.root ../output/DY2JetsToLL_01.root ../output/DY2JetsToLL_02.root 
hadd files_initial/DY3JetsToLL_final.root ../output/DY3JetsToLL_00.root 
hadd files_initial/DY4JetsToLL_final.root ../output/DY4JetsToLL_00.root 
hadd files_initial/DYJetsToLL_final.root ../output/DYJetsToLL_00.root ../output/DYJetsToLL_01.root ../output/DYJetsToLL_02.root ../output/DYJetsToLL_03.root ../output/DYJetsToLL_04.root ../output/DYJetsToLL_05.root ../output/DYJetsToLL_06.root 
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
hadd files_initial/ST_t-channel_antitop_final.root ../output/ST_t-channel_antitop_00.root ../output/ST_t-channel_antitop_01.root ../output/ST_t-channel_antitop_02.root ../output/ST_t-channel_antitop_03.root ../output/ST_t-channel_antitop_04.root ../output/ST_t-channel_antitop_05.root ../output/ST_t-channel_antitop_06.root ../output/ST_t-channel_antitop_07.root 
hadd files_initial/ST_t-channel_top_final.root ../output/ST_t-channel_top_00.root ../output/ST_t-channel_top_01.root ../output/ST_t-channel_top_02.root ../output/ST_t-channel_top_03.root ../output/ST_t-channel_top_04.root ../output/ST_t-channel_top_05.root ../output/ST_t-channel_top_06.root ../output/ST_t-channel_top_07.root ../output/ST_t-channel_top_08.root ../output/ST_t-channel_top_09.root ../output/ST_t-channel_top_10.root ../output/ST_t-channel_top_11.root 
hadd files_initial/ST_tW_antitop_final.root ../output/ST_tW_antitop_00.root 
hadd files_initial/ST_tW_top_final.root ../output/ST_tW_top_00.root 
hadd files_initial/SingleMuonA_final.root ../output/SingleMuonA_00.root ../output/SingleMuonA_01.root ../output/SingleMuonA_02.root ../output/SingleMuonA_03.root ../output/SingleMuonA_04.root ../output/SingleMuonA_05.root ../output/SingleMuonA_06.root 
hadd files_initial/SingleMuonB_final.root ../output/SingleMuonB_00.root ../output/SingleMuonB_01.root ../output/SingleMuonB_02.root ../output/SingleMuonB_03.root ../output/SingleMuonB_04.root 
hadd files_initial/SingleMuonC_final.root ../output/SingleMuonC_00.root ../output/SingleMuonC_01.root ../output/SingleMuonC_02.root ../output/SingleMuonC_03.root 
hadd files_initial/SingleMuonD_PromptReco_final.root ../output/SingleMuonD_PromptReco_00.root ../output/SingleMuonD_PromptReco_01.root ../output/SingleMuonD_PromptReco_02.root ../output/SingleMuonD_PromptReco_03.root ../output/SingleMuonD_PromptReco_04.root ../output/SingleMuonD_PromptReco_05.root ../output/SingleMuonD_PromptReco_06.root ../output/SingleMuonD_PromptReco_07.root ../output/SingleMuonD_PromptReco_08.root ../output/SingleMuonD_PromptReco_09.root ../output/SingleMuonD_PromptReco_10.root ../output/SingleMuonD_PromptReco_11.root 
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
hadd files_initial/Zpbaryonic2018_1_final.root ../output/Zpbaryonic2018_1.root 
hadd files_initial/Zpbaryonic2018_10_final.root ../output/Zpbaryonic2018_10.root 
hadd files_initial/Zpbaryonic2018_11_final.root ../output/Zpbaryonic2018_11.root 
hadd files_initial/Zpbaryonic2018_12_final.root ../output/Zpbaryonic2018_12.root 
hadd files_initial/Zpbaryonic2018_13_final.root ../output/Zpbaryonic2018_13.root 
hadd files_initial/Zpbaryonic2018_14_final.root ../output/Zpbaryonic2018_14.root 
hadd files_initial/Zpbaryonic2018_15_final.root ../output/Zpbaryonic2018_15.root 
hadd files_initial/Zpbaryonic2018_16_final.root ../output/Zpbaryonic2018_16.root 
hadd files_initial/Zpbaryonic2018_17_final.root ../output/Zpbaryonic2018_17.root 
hadd files_initial/Zpbaryonic2018_18_final.root ../output/Zpbaryonic2018_18.root 
hadd files_initial/Zpbaryonic2018_19_final.root ../output/Zpbaryonic2018_19.root 
hadd files_initial/Zpbaryonic2018_2_final.root ../output/Zpbaryonic2018_2.root 
hadd files_initial/Zpbaryonic2018_20_final.root ../output/Zpbaryonic2018_20.root 
hadd files_initial/Zpbaryonic2018_21_final.root ../output/Zpbaryonic2018_21.root 
hadd files_initial/Zpbaryonic2018_22_final.root ../output/Zpbaryonic2018_22.root 
hadd files_initial/Zpbaryonic2018_23_final.root ../output/Zpbaryonic2018_23.root 
hadd files_initial/Zpbaryonic2018_24_final.root ../output/Zpbaryonic2018_24.root 
hadd files_initial/Zpbaryonic2018_25_final.root ../output/Zpbaryonic2018_25.root 
hadd files_initial/Zpbaryonic2018_26_final.root ../output/Zpbaryonic2018_26.root 
hadd files_initial/Zpbaryonic2018_27_final.root ../output/Zpbaryonic2018_27.root 
hadd files_initial/Zpbaryonic2018_28_final.root ../output/Zpbaryonic2018_28.root 
hadd files_initial/Zpbaryonic2018_29_final.root ../output/Zpbaryonic2018_29.root 
hadd files_initial/Zpbaryonic2018_3_final.root ../output/Zpbaryonic2018_3.root 
hadd files_initial/Zpbaryonic2018_30_final.root ../output/Zpbaryonic2018_30.root 
hadd files_initial/Zpbaryonic2018_31_final.root ../output/Zpbaryonic2018_31.root 
hadd files_initial/Zpbaryonic2018_32_final.root ../output/Zpbaryonic2018_32.root 
hadd files_initial/Zpbaryonic2018_33_final.root ../output/Zpbaryonic2018_33.root 
hadd files_initial/Zpbaryonic2018_34_final.root ../output/Zpbaryonic2018_34.root 
hadd files_initial/Zpbaryonic2018_35_final.root ../output/Zpbaryonic2018_35.root 
hadd files_initial/Zpbaryonic2018_36_final.root ../output/Zpbaryonic2018_36.root 
hadd files_initial/Zpbaryonic2018_37_final.root ../output/Zpbaryonic2018_37.root 
hadd files_initial/Zpbaryonic2018_38_final.root ../output/Zpbaryonic2018_38.root 
hadd files_initial/Zpbaryonic2018_39_final.root ../output/Zpbaryonic2018_39.root 
hadd files_initial/Zpbaryonic2018_4_final.root ../output/Zpbaryonic2018_4.root 
hadd files_initial/Zpbaryonic2018_40_final.root ../output/Zpbaryonic2018_40.root 
hadd files_initial/Zpbaryonic2018_41_final.root ../output/Zpbaryonic2018_41.root 
hadd files_initial/Zpbaryonic2018_42_final.root ../output/Zpbaryonic2018_42.root 
hadd files_initial/Zpbaryonic2018_43_final.root ../output/Zpbaryonic2018_43.root 
hadd files_initial/Zpbaryonic2018_5_final.root ../output/Zpbaryonic2018_5.root 
hadd files_initial/Zpbaryonic2018_6_final.root ../output/Zpbaryonic2018_6.root 
hadd files_initial/Zpbaryonic2018_7_final.root ../output/Zpbaryonic2018_7.root 
hadd files_initial/Zpbaryonic2018_8_final.root ../output/Zpbaryonic2018_8.root 
hadd files_initial/Zpbaryonic2018_9_final.root ../output/Zpbaryonic2018_9.root 


