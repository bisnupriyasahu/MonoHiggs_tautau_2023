#!/bin/sh
source /cvmfs/cms.cern.ch/cmsset_default.sh 
cd /cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/
eval export CMSSW_RELEASE_BASE="/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5";
export PATH="/cvmfs/cms.cern.ch/share/overrides/bin:/nfs_scratch/jmadhusu/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/nfs_scratch/jmadhusu/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/llvm/12.0.1-98ba1be77003441f04b47ab03db13dc0/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/gcc/10.3.0-84898dea653199466402e67d73657f10/bin:/cvmfs/cms.cern.ch/common:/cvmfs/cms.cern.ch/common:/usr/local/bin/smb:/usr/local/bin/raid:/usr/lib64/qt-3.3/bin:/usr/local/etc:/usr/local/bin/hadoop:/usr/local/bin/firstboot:/usr/local/bin/defaultcls:/usr/condabin:/usr/local/bin/cephdir:/usr/local/bin/afs:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/opt/puppetlabs/bin:/afs/hep.wisc.edu/home/ms/bin";
cd ${_CONDOR_SCRATCH_DIR}


hadd ST_t-channel_antitop_0001_03.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1299.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1300.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1301.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1302.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1303.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1304.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1305.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1306.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1307.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1308.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1309.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1310.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1311.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1312.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1313.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1314.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1315.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1316.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1317.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1318.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1319.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1320.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1321.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1322.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1323.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1324.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1325.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1326.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1327.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1328.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1329.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1330.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1331.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1332.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1333.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1334.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1335.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1336.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1337.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1338.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1339.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1340.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1341.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1342.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1343.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1344.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1345.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1346.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1347.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1348.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1349.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1350.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1351.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1352.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1353.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1354.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1355.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1356.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1357.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1358.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1359.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1360.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1361.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1362.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1363.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1364.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1365.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1366.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1367.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1368.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1369.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1370.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1371.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1372.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1373.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1374.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1375.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1376.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1377.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1378.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1379.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1380.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1381.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1382.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1383.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1384.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1385.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1386.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1387.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1388.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1389.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1390.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1391.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1392.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1393.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1394.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1395.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1396.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_1397.root
mv ST_t-channel_antitop_0001_03.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau_hadd/ 
