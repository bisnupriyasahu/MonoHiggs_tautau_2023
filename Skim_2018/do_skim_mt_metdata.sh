
./rootcom skimm_mt_2017 analyze_mutau_skim 
outDir="Out_DATA_$(date +"%d-%m-%Y_%H-%M")" 
mkdir $outDir 

mkdir -p /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraB_00 
./MakeCondorFiles.csh analyze_mutau_skim /store/user/jmadhusu/data2017_31Mar2018_27Aug2022/MET/crab_job_MET_EraB/220919_005522/0000 MET_EraB_00.root -1 1000 2017 DATA MET_EraB_00 $outDir 
mkdir -p /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraB_01 
./MakeCondorFiles.csh analyze_mutau_skim /store/user/jmadhusu/data2017_31Mar2018_27Aug2022/MET/crab_job_MET_EraB/220919_005522/0001 MET_EraB_01.root -1 1000 2017 DATA MET_EraB_01 $outDir 
mkdir -p /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraC_00 
./MakeCondorFiles.csh analyze_mutau_skim /store/user/jmadhusu/data2017_31Mar2018_27Aug2022/MET/crab_job_MET_EraC/220919_005551/0000 MET_EraC_00.root -1 1000 2017 DATA MET_EraC_00 $outDir 
mkdir -p /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraC_01 
./MakeCondorFiles.csh analyze_mutau_skim /store/user/jmadhusu/data2017_31Mar2018_27Aug2022/MET/crab_job_MET_EraC/220919_005551/0001 MET_EraC_01.root -1 1000 2017 DATA MET_EraC_01 $outDir 
mkdir -p /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraC_02 
./MakeCondorFiles.csh analyze_mutau_skim /store/user/jmadhusu/data2017_31Mar2018_27Aug2022/MET/crab_job_MET_EraC/220919_005551/0002 MET_EraC_02.root -1 1000 2017 DATA MET_EraC_02 $outDir 
mkdir -p /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraC_03 
./MakeCondorFiles.csh analyze_mutau_skim /store/user/jmadhusu/data2017_31Mar2018_27Aug2022/MET/crab_job_MET_EraC/220919_005551/0003 MET_EraC_03.root -1 1000 2017 DATA MET_EraC_03 $outDir 
mkdir -p /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraC_11 
./MakeCondorFiles.csh analyze_mutau_skim /store/user/jmadhusu/data2017_31Mar2018_27Aug2022/MET/crab_job_MET_EraC/220919_005551/0011 MET_EraC_11.root -1 1000 2017 DATA MET_EraC_11 $outDir 
mkdir -p /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraD_00 
./MakeCondorFiles.csh analyze_mutau_skim /store/user/jmadhusu/data2017_31Mar2018_27Aug2022/MET/crab_job_MET_EraD/220919_005620/0000 MET_EraD_00.root -1 1000 2017 DATA MET_EraD_00 $outDir 
mkdir -p /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraD_01 
./MakeCondorFiles.csh analyze_mutau_skim /store/user/jmadhusu/data2017_31Mar2018_27Aug2022/MET/crab_job_MET_EraD/220919_005620/0001 MET_EraD_01.root -1 1000 2017 DATA MET_EraD_01 $outDir 
mkdir -p /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_00 
./MakeCondorFiles.csh analyze_mutau_skim /store/user/jmadhusu/data2017_31Mar2018_27Aug2022/MET/crab_job_MET_EraE/220919_005648/0000 MET_EraE_00.root -1 1000 2017 DATA MET_EraE_00 $outDir 
mkdir -p /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_01 
./MakeCondorFiles.csh analyze_mutau_skim /store/user/jmadhusu/data2017_31Mar2018_27Aug2022/MET/crab_job_MET_EraE/220919_005648/0001 MET_EraE_01.root -1 1000 2017 DATA MET_EraE_01 $outDir 
mkdir -p /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraE_02 
./MakeCondorFiles.csh analyze_mutau_skim /store/user/jmadhusu/data2017_31Mar2018_27Aug2022/MET/crab_job_MET_EraE/220919_005648/0002 MET_EraE_02.root -1 1000 2017 DATA MET_EraE_02 $outDir 
mkdir -p /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_00 
./MakeCondorFiles.csh analyze_mutau_skim /store/user/jmadhusu/data2017_31Mar2018_27Aug2022/MET/crab_job_MET_EraF/220919_005716/0000 MET_EraF_00.root -1 1000 2017 DATA MET_EraF_00 $outDir 
mkdir -p /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_01 
./MakeCondorFiles.csh analyze_mutau_skim /store/user/jmadhusu/data2017_31Mar2018_27Aug2022/MET/crab_job_MET_EraF/220919_005716/0001 MET_EraF_01.root -1 1000 2017 DATA MET_EraF_01 $outDir 
mkdir -p /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_02 
./MakeCondorFiles.csh analyze_mutau_skim /store/user/jmadhusu/data2017_31Mar2018_27Aug2022/MET/crab_job_MET_EraF/220919_005716/0002 MET_EraF_02.root -1 1000 2017 DATA MET_EraF_02 $outDir 
mkdir -p /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_MET_EraF_03 
./MakeCondorFiles.csh analyze_mutau_skim /store/user/jmadhusu/data2017_31Mar2018_27Aug2022/MET/crab_job_MET_EraF/220919_005716/0003 MET_EraF_03.root -1 1000 2017 DATA MET_EraF_03 $outDir 
