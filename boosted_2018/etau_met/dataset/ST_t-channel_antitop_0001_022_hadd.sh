#!/bin/sh
source /cvmfs/cms.cern.ch/cmsset_default.sh 
cd /cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/
eval export CMSSW_RELEASE_BASE="/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5";
export PATH="/cvmfs/cms.cern.ch/share/overrides/bin:/nfs_scratch/jmadhusu/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/nfs_scratch/jmadhusu/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/llvm/12.0.1-98ba1be77003441f04b47ab03db13dc0/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/gcc/10.3.0-84898dea653199466402e67d73657f10/bin:/cvmfs/cms.cern.ch/common:/cvmfs/cms.cern.ch/common:/usr/local/bin/smb:/usr/local/bin/raid:/usr/lib64/qt-3.3/bin:/usr/local/etc:/usr/local/bin/hadoop:/usr/local/bin/firstboot:/usr/local/bin/defaultcls:/usr/condabin:/usr/local/bin/cephdir:/usr/local/bin/afs:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/opt/puppetlabs/bin:/afs/hep.wisc.edu/home/ms/bin";
cd ${_CONDOR_SCRATCH_DIR}


hadd ST_t-channel_antitop_0001_022.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1353.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1354.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1355.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1356.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1357.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1358.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1359.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1360.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1361.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1362.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1363.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1364.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1365.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1366.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1367.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1368.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1369.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1370.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1371.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1372.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1373.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1374.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1375.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1376.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1377.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1378.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1379.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1380.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1381.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1382.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1383.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1384.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1385.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1386.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1387.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1388.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1389.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1390.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1391.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1392.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1393.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1394.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1395.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1396.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1397.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1398.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1399.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1400.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1401.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1402.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1403.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1404.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1405.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1406.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1407.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1408.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1409.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1410.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1411.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1412.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1413.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1414.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1415.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1416.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1417.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1418.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1419.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1420.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1421.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1422.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1423.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1424.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1425.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1426.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1427.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1428.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1429.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1430.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1431.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1432.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1433.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1434.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1435.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1436.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1437.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1438.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1439.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1440.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1441.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1442.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1443.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1444.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1445.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1446.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1447.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1448.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1449.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1450.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/ST_t-channel_antitop_0001/Ntuple_mc_3-1451.root
mv ST_t-channel_antitop_0001_022.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau_hadd/ 
