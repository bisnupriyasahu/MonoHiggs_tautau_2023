#!/bin/sh
source /cvmfs/cms.cern.ch/cmsset_default.sh 
cd /cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/
eval export CMSSW_RELEASE_BASE="/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5";
export PATH="/cvmfs/cms.cern.ch/share/overrides/bin:/nfs_scratch/jmadhusu/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/nfs_scratch/jmadhusu/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/bin/slc7_amd64_gcc10:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/cms/cmssw/CMSSW_12_3_5/external/slc7_amd64_gcc10/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/llvm/12.0.1-98ba1be77003441f04b47ab03db13dc0/bin:/cvmfs/cms.cern.ch/slc7_amd64_gcc10/external/gcc/10.3.0-84898dea653199466402e67d73657f10/bin:/cvmfs/cms.cern.ch/common:/cvmfs/cms.cern.ch/common:/usr/local/bin/smb:/usr/local/bin/raid:/usr/lib64/qt-3.3/bin:/usr/local/etc:/usr/local/bin/hadoop:/usr/local/bin/firstboot:/usr/local/bin/defaultcls:/usr/condabin:/usr/local/bin/cephdir:/usr/local/bin/afs:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/opt/puppetlabs/bin:/afs/hep.wisc.edu/home/ms/bin";
cd ${_CONDOR_SCRATCH_DIR}


hadd DYJetsToLL_0001_05.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1496.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1497.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1498.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1499.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1500.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1501.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1502.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1503.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1504.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1505.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1506.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1507.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1508.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1509.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1510.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1511.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1512.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1513.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1514.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1515.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1516.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1517.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1518.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1519.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1520.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1521.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1522.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1523.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1524.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1525.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1526.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1527.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1528.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1529.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1530.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1531.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1532.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1533.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1534.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1535.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1536.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1537.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1538.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1539.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1540.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1541.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1542.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1543.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1544.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1545.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1546.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1547.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1548.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1549.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1550.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1551.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1552.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1553.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1554.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1555.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1556.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1557.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1558.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1559.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1560.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1561.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1562.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1563.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1564.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1565.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1566.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1567.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1568.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1569.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1570.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1571.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1572.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1573.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1574.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1575.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1576.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1577.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1578.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1579.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1580.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1581.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1582.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1583.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1584.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1585.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1586.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1587.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1588.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1589.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1590.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1591.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1592.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1593.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau/DYJetsToLL_0001/Ntuple_mc_1-1594.root
mv DYJetsToLL_0001_05.root /hdfs/store/user/jmadhusu/with_boostedtau/2018_skimmed/with_boostedtaus/etau_hadd/ 
