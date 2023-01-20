#!/bin/sh
source /cvmfs/cms.cern.ch/cmsset_default.sh 
cd /cvmfs/cms.cern.ch/slc7_amd64_gcc630/cms/cmssw/CMSSW_9_4_13/
eval export CMSSW_RELEASE_BASE="/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5";
export PATH="/cvmfs/cms.cern.ch/share/overrides/bin:/nfs_scratch/jmadhusu/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/nfs_scratch/jmadhusu/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/llvm/12.0.1-98ba1be77003441f04b47ab03db13dc0/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/gcc/10.3.0-84898dea653199466402e67d73657f10/bin:/cvmfs/cms.cern.ch/common:/cvmfs/cms.cern.ch/common:/usr/local/bin/smb:/usr/local/bin/raid:/usr/lib64/qt-3.3/bin:/usr/local/etc:/usr/local/bin/hadoop:/usr/local/bin/firstboot:/usr/local/bin/defaultcls:/usr/condabin:/usr/local/bin/cephdir:/usr/local/bin/afs:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/opt/puppetlabs/bin:/afs/hep.wisc.edu/home/ms/bin";
cd ${_CONDOR_SCRATCH_DIR}


hadd MET_EraD_0001_00.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1000.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1001.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1002.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1003.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1004.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1005.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1006.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1007.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1008.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1009.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1010.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1011.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1012.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1013.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1014.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1015.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1016.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1017.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1018.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1019.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1020.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1021.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1022.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1023.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1024.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1025.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1026.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1027.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1028.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1029.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1030.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1031.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1032.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1033.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1034.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1035.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1036.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1037.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1038.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1039.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1040.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1041.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1042.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1043.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1044.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1045.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1046.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1047.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1048.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1049.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1050.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1051.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1052.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1053.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1054.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1055.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1056.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1057.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1058.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1059.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1060.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1061.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1062.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1063.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1064.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1065.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1066.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1067.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1068.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1069.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1070.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1071.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1072.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1073.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1074.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1075.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1076.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1077.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1078.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1079.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1080.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1081.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1082.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1083.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1084.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1085.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1086.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1087.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1088.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1089.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1090.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1091.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1092.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1093.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1094.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1095.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1096.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1097.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1098.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau/MET_EraD_0001/Ntuple_data2017_MET_EraD_1099.root
mv MET_EraD_0001_00.root /hdfs/store/user/jmadhusu/with_boostedtau/2017_skimmed/with_boostedtaus/etau_hadd/ 
