
./rootcom skimm_signal_2017 analyze_signal
Outdir="Out_Signal_$(date +"%d-%m-%Y_%H-%M")" 
mkdir $outDir 


./MakeCondorFiles_zpb.csh analyze_signal root://cmsxrootd.hep.wisc.edu//store/user/jmadhusu/Signal_Zpbaryonic2017_31Aug2022_v2/MonoHToTauTau_ZpBaryonic_TuneCP2_13TeV_madgraph-pythia8/crab_job_MonoHToTauTau_ZpBaryonic_2017/220831_205151/0000/Ntuple_mc_1.root Signal_Zpbaryonic2017_0000_1 -1 1000 2017 MC ZpBaryonic_0000_1 $outDir
