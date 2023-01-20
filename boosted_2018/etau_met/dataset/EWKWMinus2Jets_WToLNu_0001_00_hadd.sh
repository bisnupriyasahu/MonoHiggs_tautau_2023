#!/bin/sh
source /cvmfs/cms.cern.ch/cmsset_default.sh 
cd /cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/
eval export CMSSW_RELEASE_BASE="/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5";
export PATH="/cvmfs/cms.cern.ch/share/overrides/bin:/nfs_scratch/jmadhusu/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/nfs_scratch/jmadhusu/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/llvm/12.0.1-98ba1be77003441f04b47ab03db13dc0/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/gcc/10.3.0-84898dea653199466402e67d73657f10/bin:/cvmfs/cms.cern.ch/common:/cvmfs/cms.cern.ch/common:/usr/local/bin/smb:/usr/local/bin/raid:/usr/lib64/qt-3.3/bin:/usr/local/etc:/usr/local/bin/hadoop:/usr/local/bin/firstboot:/usr/local/bin/defaultcls:/usr/condabin:/usr/local/bin/cephdir:/usr/local/bin/afs:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/opt/puppetlabs/bin:/afs/hep.wisc.edu/home/ms/bin";
cd ${_CONDOR_SCRATCH_DIR}


hadd EWKWMinus2Jets_WToLNu_0001_00.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1000.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1001.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1002.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1003.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1004.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1005.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1006.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1007.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1008.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1009.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1010.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1011.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1012.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1013.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1014.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1015.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1016.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1017.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1018.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1019.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1020.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1021.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1022.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1023.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1024.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1025.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1026.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1027.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1028.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1029.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1030.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1031.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1032.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1033.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1034.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1035.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1036.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1037.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1038.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1039.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1040.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1041.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1042.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1043.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1044.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1045.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1046.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1047.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1048.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1049.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1050.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1051.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1052.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1053.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1054.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1055.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1056.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1057.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1058.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1059.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1060.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1061.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1062.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1063.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1064.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1065.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1066.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1067.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1068.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1069.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1070.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1071.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1072.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1073.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1074.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1075.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1076.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1077.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1078.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1079.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1080.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1081.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1082.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1083.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1084.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1085.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1086.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1087.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1088.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1089.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1090.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1091.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1092.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1093.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1094.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1095.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1096.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1097.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1098.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/EWKWMinus2Jets_WToLNu_0001/Ntuple_mc_1099.root
mv EWKWMinus2Jets_WToLNu_0001_00.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau_hadd/ 
