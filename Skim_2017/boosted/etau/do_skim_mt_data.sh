
./rootcom skimm_mt_2017 analyze_etau_skim 
outDir="Out_DATA_$(date +"%d-%m-%Y_%H-%M")" 
mkdir $outDir 

mkdir -p /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_SingleElectron_EraB_00 
./MakeCondorFiles.csh analyze_etau_skim /store/user/jmadhusu/data2017_31Mar2018_27Aug2022/SingleElectron/crab_job_SingleElectron_EraB/220827_054807/0000 SingleElectron_EraB_00 -1 1000 2017 DATA SingleElectron_EraB_00 $outDir 
mkdir -p /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_SingleElectron_EraB_01 
./MakeCondorFiles.csh analyze_etau_skim /store/user/jmadhusu/data2017_31Mar2018_27Aug2022/SingleElectron/crab_job_SingleElectron_EraB/220827_054807/0001 SingleElectron_EraB_01 -1 1000 2017 DATA SingleElectron_EraB_01 $outDir 
mkdir -p /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_SingleElectron_EraC_00 
./MakeCondorFiles.csh analyze_etau_skim /store/user/jmadhusu/data2017_31Mar2018_27Aug2022/SingleElectron/crab_job_SingleElectron_EraC/220827_054833/0000 SingleElectron_EraC_00 -1 1000 2017 DATA SingleElectron_EraC_00 $outDir 
mkdir -p /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_SingleElectron_EraC_01 
./MakeCondorFiles.csh analyze_etau_skim /store/user/jmadhusu/data2017_31Mar2018_27Aug2022/SingleElectron/crab_job_SingleElectron_EraC/220827_054833/0001 SingleElectron_EraC_01 -1 1000 2017 DATA SingleElectron_EraC_01 $outDir 
mkdir -p /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_SingleElectron_EraC_02 
./MakeCondorFiles.csh analyze_etau_skim /store/user/jmadhusu/data2017_31Mar2018_27Aug2022/SingleElectron/crab_job_SingleElectron_EraC/220827_054833/0002 SingleElectron_EraC_02 -1 1000 2017 DATA SingleElectron_EraC_02 $outDir 
mkdir -p /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_SingleElectron_EraC_03 
./MakeCondorFiles.csh analyze_etau_skim /store/user/jmadhusu/data2017_31Mar2018_27Aug2022/SingleElectron/crab_job_SingleElectron_EraC/220827_054833/0003 SingleElectron_EraC_03 -1 1000 2017 DATA SingleElectron_EraC_03 $outDir 
mkdir -p /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_SingleElectron_EraD_00 
./MakeCondorFiles.csh analyze_etau_skim /store/user/jmadhusu/data2017_31Mar2018_27Aug2022/SingleElectron/crab_job_SingleElectron_EraD/220827_054900/0000 SingleElectron_EraD_00 -1 1000 2017 DATA SingleElectron_EraD_00 $outDir 
mkdir -p /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_SingleElectron_EraD_01 
./MakeCondorFiles.csh analyze_etau_skim /store/user/jmadhusu/data2017_31Mar2018_27Aug2022/SingleElectron/crab_job_SingleElectron_EraD/220827_054900/0001 SingleElectron_EraD_01 -1 1000 2017 DATA SingleElectron_EraD_01 $outDir 
mkdir -p /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_SingleElectron_EraE_00 
./MakeCondorFiles.csh analyze_etau_skim /store/user/jmadhusu/data2017_31Mar2018_27Aug2022/SingleElectron/crab_job_SingleElectron_EraE/220827_054926/0000 SingleElectron_EraE_00 -1 1000 2017 DATA SingleElectron_EraE_00 $outDir 
mkdir -p /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_SingleElectron_EraE_01 
./MakeCondorFiles.csh analyze_etau_skim /store/user/jmadhusu/data2017_31Mar2018_27Aug2022/SingleElectron/crab_job_SingleElectron_EraE/220827_054926/0001 SingleElectron_EraE_01 -1 1000 2017 DATA SingleElectron_EraE_01 $outDir 
mkdir -p /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_SingleElectron_EraE_02 
./MakeCondorFiles.csh analyze_etau_skim /store/user/jmadhusu/data2017_31Mar2018_27Aug2022/SingleElectron/crab_job_SingleElectron_EraE/220827_054926/0002 SingleElectron_EraE_02 -1 1000 2017 DATA SingleElectron_EraE_02 $outDir 
mkdir -p /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_SingleElectron_EraF_00 
./MakeCondorFiles.csh analyze_etau_skim /store/user/jmadhusu/data2017_31Mar2018_27Aug2022/SingleElectron/crab_job_SingleElectron_EraF/220827_054952/0000 SingleElectron_EraF_00 -1 1000 2017 DATA SingleElectron_EraF_00 $outDir 
mkdir -p /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_SingleElectron_EraF_01 
./MakeCondorFiles.csh analyze_etau_skim /store/user/jmadhusu/data2017_31Mar2018_27Aug2022/SingleElectron/crab_job_SingleElectron_EraF/220827_054952/0001 SingleElectron_EraF_01 -1 1000 2017 DATA SingleElectron_EraF_01 $outDir 
mkdir -p /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_SingleElectron_EraF_02 
./MakeCondorFiles.csh analyze_etau_skim /store/user/jmadhusu/data2017_31Mar2018_27Aug2022/SingleElectron/crab_job_SingleElectron_EraF/220827_054952/0002 SingleElectron_EraF_02 -1 1000 2017 DATA SingleElectron_EraF_02 $outDir 
mkdir -p /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/blinded_SingleElectron_EraF_03 
./MakeCondorFiles.csh analyze_etau_skim /store/user/jmadhusu/data2017_31Mar2018_27Aug2022/SingleElectron/crab_job_SingleElectron_EraF/220827_054952/0003 SingleElectron_EraF_03 -1 1000 2017 DATA SingleElectron_EraF_03 $outDir 
