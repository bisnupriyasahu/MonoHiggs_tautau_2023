
mv Tau*.root rootfiles
cd rootfiles
rm data_2018*

hadd -f data_2018.root Tau*.root 
hadd -f data_Tau_Run2018A.root TauA_*.root
hadd -f data_Tau_Run2018B.root TauB_*.root
hadd -f data_Tau_Run2018C.root TauC_*.root
hadd -f data_Tau_Run2018D.root TauD_Prompt*.root

cd ..
