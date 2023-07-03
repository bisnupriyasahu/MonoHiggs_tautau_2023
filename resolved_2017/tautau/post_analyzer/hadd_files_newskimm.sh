
#!/bin/bash
set -e 

if [ "$(ls -A files_initial)" ]; then
echo "Take action files_initial/ is not Empty .... removing existing files ....."
#rm files_initial/*.root
else
echo " files_initial/ is Empty"
fi


hadd files_initial/Tau_EraB_final.root ../output_newskim/Tau_EraB_0000.root ../output_newskim/Tau_EraB_0001.root 
hadd files_initial/Tau_EraC_final.root ../output_newskim/Tau_EraC_0000.root ../output_newskim/Tau_EraC_0001.root ../output_newskim/Tau_EraC_0002.root ../output_newskim/Tau_EraC_0003.root 
hadd files_initial/Tau_EraD_final.root ../output_newskim/Tau_EraD_0000.root ../output_newskim/Tau_EraD_0001.root 
hadd files_initial/Tau_EraE_final.root ../output_newskim/Tau_EraE_0000.root ../output_newskim/Tau_EraE_0001.root ../output_newskim/Tau_EraE_0002.root 
hadd files_initial/Tau_EraF_final.root ../output_newskim/Tau_EraF_0000.root ../output_newskim/Tau_EraF_0001.root ../output_newskim/Tau_EraF_0002.root ../output_newskim/Tau_EraF_0003.root 



