Instructions for boostedtaus:



Boosted 2017:
/nfs_scratch/bsahu/MonoHiggs_Nov2022_V2/CMSSW_12_3_5/src/boosted_2017/
different channels:
etau_met
mutau_met
tautau_met


Boosted 2018:
/nfs_scratch/bsahu/MonoHiggs_Nov2022_V2/CMSSW_12_3_5/src/boosted_2018/
different channels:
etau_met
mutau_met
tautau_met



The scripts are in "src" directory
/nfs_scratch/bsahu/MonoHiggs_Nov2022_V2/CMSSW_12_3_5/src/boosted_2018/mutau_met/src


For testing in local area:
/nfs_scratch/bsahu/MonoHiggs_Nov2022_V2/CMSSW_12_3_5/src/boosted_2018/mutau_met/
bash runAnalyzer.sh


Steps to submit condor jobs:

1)To make submitfile:
python step1_makeSubmitFile.py

It will create two files
samples.txt (has MC backgrounds and also Data)
samples_signal.txt (2hdma and Zprime signal)

2)change the condor submit file according to your proxy(it has both scripts for signal and backgrounds):
submit_condor.sh

3)Chnage the executables as per your PATH:
job_queue.sh
job_queue_signal.sh
 

4)To submit in condor:
bash submit_condor.sh


For plotting:
After running the postanalyzer, keep all the root files in directory named: output
#you can change this name, than change accordingly in the next steps too
steps:

1) go to postanalyzer directory
cd postanalyzer
#pwd: /nfs_scratch/bsahu/MonoHiggs_Nov2022_V2/CMSSW_12_3_5/src/boosted_2018/mutau_met/postanalyzer

2)first make a script for hadd the postanalyzer output root files:
python step2_makeHadd_files_initial.py
#remember if you have changed the directory name in the previous step(by default "output"), you have to change the same in the step2_makeHadd_files_initial file

This will create a file: hadd_files.sh

3)mkdir files_initial

4)bash hadd_files.sh
All the hadd root files will be in the folder: files_initial

5)cd plotting_script
#pwd: /nfs_scratch/bsahu/MonoHiggs_Nov2022_V2/CMSSW_12_3_5/src/boosted_2018/mutau_met/postanalyzer/plotting_script

To make plots:
1) to run the plotting file:
python main.py -hist 32,34 -idx 9 -ch etau -y 2018 --blinded 0 
-hist: It is taking the name of the histogram you want to make plot(check the main.py for histogram number)
-idx: give the index of the histogram(usually the selection number at which you want to make the plots) full selection: 9
check /nfs_scratch/bsahu/MonoHiggs_Nov2022_V2/CMSSW_12_3_5/src/boosted_2018/mutau_met/src/selections.h
-ch: etau/mutau/tautau
-y 2017/2018
--blinded(0,1) 0: for blinded data , 
               1: for unblinded data, 1/5th lumi

2)To make plots: 
mkdir plots
bash do_make_plots.sh 
#change the index of the histogram eg: 9,9b,9d in do_make_plots.sh file
