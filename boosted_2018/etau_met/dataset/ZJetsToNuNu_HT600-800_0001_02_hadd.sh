#!/bin/sh
source /cvmfs/cms.cern.ch/cmsset_default.sh 
cd /cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/
eval export CMSSW_RELEASE_BASE="/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5";
export PATH="/cvmfs/cms.cern.ch/share/overrides/bin:/nfs_scratch/jmadhusu/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/nfs_scratch/jmadhusu/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/llvm/12.0.1-98ba1be77003441f04b47ab03db13dc0/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/gcc/10.3.0-84898dea653199466402e67d73657f10/bin:/cvmfs/cms.cern.ch/common:/cvmfs/cms.cern.ch/common:/usr/local/bin/smb:/usr/local/bin/raid:/usr/lib64/qt-3.3/bin:/usr/local/etc:/usr/local/bin/hadoop:/usr/local/bin/firstboot:/usr/local/bin/defaultcls:/usr/condabin:/usr/local/bin/cephdir:/usr/local/bin/afs:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/opt/puppetlabs/bin:/afs/hep.wisc.edu/home/ms/bin";
cd ${_CONDOR_SCRATCH_DIR}


hadd ZJetsToNuNu_HT600-800_0001_02.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1199.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1200.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1201.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1202.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1203.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1204.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1205.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1206.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1207.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1208.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1209.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1210.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1211.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1212.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1213.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1214.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1215.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1216.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1217.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1218.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1219.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1220.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1221.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1222.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1223.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1224.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1225.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1226.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1227.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1228.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1229.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1230.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1231.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1232.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1233.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1234.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1235.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1236.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1237.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1238.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1239.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1240.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1241.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1242.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1243.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1244.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1245.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1246.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1247.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1248.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1249.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1250.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1251.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1252.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1253.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1254.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1255.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1256.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1257.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1258.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1259.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1260.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1261.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1262.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1263.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1264.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1265.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1266.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1267.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1268.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1269.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1270.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1271.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1272.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1273.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1274.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1275.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1276.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1277.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1278.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1279.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1280.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1281.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1282.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1283.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1284.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1285.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1286.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1287.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1288.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1289.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1290.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1291.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1292.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1293.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1294.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1295.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1296.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ZJetsToNuNu_HT600-800_0001/Ntuple_mc_1-1297.root
mv ZJetsToNuNu_HT600-800_0001_02.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau_hadd/ 
